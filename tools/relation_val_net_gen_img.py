# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
# Set up custom environment before nearly anything else is imported
# NOTE: this should be the first import (no not reorder)
from maskrcnn_benchmark.utils.env import setup_environment  # noqa F401 isort:skip

import argparse
import os
import numpy as np

import torch
from maskrcnn_benchmark.config import cfg
from maskrcnn_benchmark.data import make_data_loader
from maskrcnn_benchmark.engine.inference import inference
from maskrcnn_benchmark.modeling.detector import build_detection_model
from maskrcnn_benchmark.utils.checkpoint import DetectronCheckpointer
from maskrcnn_benchmark.utils.collect_env import collect_env_info
from maskrcnn_benchmark.utils.comm import synchronize, get_rank
from maskrcnn_benchmark.utils.logger import setup_logger
from maskrcnn_benchmark.utils.miscellaneous import mkdir

# Check if we can enable mixed-precision via apex.amp
try:
    from apex import amp
except ImportError:
    raise ImportError('Use APEX for mixed precision via apex.amp')


def main():
    parser = argparse.ArgumentParser(description="PyTorch Object Detection Inference")
    parser.add_argument(
        "--config-file",
        default="/private/home/fmassa/github/detectron.pytorch_v2/configs/e2e_faster_rcnn_R_50_C4_1x_caffe2.yaml",
        metavar="FILE",
        help="path to config file",
    )
    parser.add_argument("--local_rank", type=int, default=0)
    parser.add_argument(
        "opts",
        help="Modify config options using the command-line",
        default=None,
        nargs=argparse.REMAINDER,
    )

    args = parser.parse_args()

    num_gpus = int(os.environ["WORLD_SIZE"]) if "WORLD_SIZE" in os.environ else 1
    distributed = num_gpus > 1

    if distributed:
        torch.cuda.set_device(args.local_rank)
        torch.distributed.init_process_group(
            backend="nccl", init_method="env://"
        )
        synchronize()

    cfg.merge_from_file(args.config_file)
    cfg.merge_from_list(args.opts)
    cfg.freeze()

    if cfg.MODEL.ROI_RELATION_HEAD.USE_GT_BOX and cfg.MODEL.ROI_RELATION_HEAD.USE_GT_OBJECT_LABEL:
        sgg_mode = "_predcls_"
    elif cfg.MODEL.ROI_RELATION_HEAD.USE_GT_BOX and not cfg.MODEL.ROI_RELATION_HEAD.USE_GT_OBJECT_LABEL:
        sgg_mode = "_sgcls_"
    else:
        raise NotImplementedError

    # update output_dir
    output_dir = os.path.join(cfg.GEN_IMG.BASE_DIR, cfg.GEN_IMG.FOLDER_NAME + sgg_mode + cfg.MODEL.ROI_RELATION_HEAD.PREDICTOR + "_" + cfg.MODEL.ROI_RELATION_HEAD.CAUSAL.EFFECT_TYPE)

    save_dir = os.path.join(output_dir, "inference_val_log")
    if save_dir:
        mkdir(save_dir)
    logger = setup_logger("maskrcnn_benchmark", save_dir, get_rank())
    logger.info("Using {} GPUs".format(num_gpus))
    logger.info(cfg)

    logger.info("Collecting env info (might take some time)")
    logger.info("\n" + collect_env_info())

    model = build_detection_model(cfg)
    model.to(cfg.MODEL.DEVICE)

    # Initialize mixed-precision if necessary
    use_mixed_precision = cfg.DTYPE == 'float16'
    amp_handle = amp.init(enabled=use_mixed_precision, verbose=cfg.AMP_VERBOSE)

    checkpointer = DetectronCheckpointer(cfg, model, save_dir=output_dir)
    # _ = checkpointer.load(cfg.MODEL.WEIGHT)
    _ = checkpointer.load(cfg.MODEL.PRETRAINED_DETECTOR_CKPT)

    iou_types = ("bbox",)
    if cfg.MODEL.MASK_ON:
        iou_types = iou_types + ("segm",)
    if cfg.MODEL.KEYPOINT_ON:
        iou_types = iou_types + ("keypoints",)
    if cfg.MODEL.RELATION_ON:
        iou_types = iou_types + ("relations", )
    if cfg.MODEL.ATTRIBUTE_ON:
        iou_types = iou_types + ("attributes", )
    output_folders = [None] * cfg.GEN_IMG.NUM_ROUNDS

    dataset_names = cfg.DATASETS.VAL

    # This variable enables the script to run the test on any dataset split.
    if cfg.DATASETS.TO_TEST:
        assert cfg.DATASETS.TO_TEST in {'train', 'val', 'test', None}
        if cfg.DATASETS.TO_TEST == 'train':
            dataset_names = cfg.DATASETS.TRAIN
        elif cfg.DATASETS.TO_TEST == 'val':
            dataset_names = cfg.DATASETS.VAL

    assert (len(dataset_names) == 1)
    dataset_names = dataset_names * cfg.GEN_IMG.NUM_ROUNDS
    assert (len(dataset_names) == cfg.GEN_IMG.NUM_ROUNDS)

    if output_dir:
        for idx in range(cfg.GEN_IMG.NUM_ROUNDS):
            dataset_name = dataset_names[idx]
            output_folder = os.path.join(output_dir, "inference_"+cfg.GEN_IMG.ANNO_FILE.split('.')[0]+"_round_"+str(idx), dataset_name)
            mkdir(output_folder)
            output_folders[idx] = output_folder
    data_loaders_val = make_data_loader(cfg=cfg, mode="val", is_distributed=distributed, dataset_to_test=cfg.DATASETS.TO_TEST)

    assert (len(output_folders) == cfg.GEN_IMG.NUM_ROUNDS)
    assert (len(dataset_names) == cfg.GEN_IMG.NUM_ROUNDS)
    assert (len(data_loaders_val) == cfg.GEN_IMG.NUM_ROUNDS)

    rt_array_all = []
    for output_folder, dataset_name, data_loader_val in zip(output_folders, dataset_names, data_loaders_val):
        rt_array = inference(
            cfg,
            model,
            data_loader_val,
            dataset_name=dataset_name,
            iou_types=iou_types,
            box_only=False if cfg.MODEL.RETINANET_ON else cfg.MODEL.RPN_ONLY,
            device=cfg.MODEL.DEVICE,
            expected_results=cfg.TEST.EXPECTED_RESULTS,
            expected_results_sigma_tol=cfg.TEST.EXPECTED_RESULTS_SIGMA_TOL,
            output_folder=output_folder,
        )
        rt_array_all.append(rt_array)
        synchronize()

    key_list = ["BBox_mAP", "BBox_Label_Acc", "Acc", "mean_Acc", "My_Acc_Mine", "My_mean_Acc_Mine"]
    value_list = np.mean(np.vstack(rt_array_all), axis=0).tolist()
    logger.info("========== Averged Results ==========")
    for key, value in zip(key_list, value_list):
        logger.info('%s: %.4f' % (key, value))


if __name__ == "__main__":
    main()
    torch.cuda.empty_cache()
