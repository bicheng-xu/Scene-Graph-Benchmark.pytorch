WORKSPACE="/scratch/hdd001/home/bichengx/projects/Scene-Graph-Benchmark.pytorch"
cd ${WORKSPACE}

CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch --master_port 10098 \
--nproc_per_node=1 tools/relation_val_net_gen_img.py \
--config-file "configs/e2e_relation_X_101_32_8_FPN_1x.yaml" \
MODEL.ROI_RELATION_HEAD.USE_GT_BOX True \
MODEL.ROI_RELATION_HEAD.USE_GT_OBJECT_LABEL False \
MODEL.ROI_RELATION_HEAD.PREDICTOR CausalAnalysisPredictor \
MODEL.ROI_RELATION_HEAD.CAUSAL.EFFECT_TYPE TDE \
MODEL.ROI_RELATION_HEAD.CAUSAL.FUSION_TYPE sum \
MODEL.ROI_RELATION_HEAD.CAUSAL.CONTEXT_LAYER motifs \
TEST.ALLOW_LOAD_FROM_CACHE False \
TEST.IMS_PER_BATCH 1 \
TEST.RELATION.IOU_THRESHOLD 0.999 \
DATALOADER.ASPECT_RATIO_GROUPING False \
DTYPE "float32" \
GLOVE_DIR /scratch/hdd001/home/bichengx/projects/SG-Models/glove \
MODEL.PRETRAINED_DETECTOR_CKPT /scratch/hdd001/home/bichengx/projects/SG-Models/upload_causal_motif_sgcls/model_0032000.pth \
DATA_STAT_DIR /scratch/hdd001/home/bichengx/projects/SG-Models/upload_causal_motif_sgcls \
GEN_IMG.EVAL True \
GEN_IMG.ANNO_DIR "/h/bichengx/site-pkgs/VG-SGG/V2-Last" \
GEN_IMG.BASE_DIR "/scratch/hdd001/home/bichengx/projects/ControlNet/my-diff-cnet/vector-scripts-BX/val-scripts/val-output/vg-a40-single-run_0-1234" \
GEN_IMG.FOLDER_NAME "validation_image_gt" \
GEN_IMG.NUM_ROUNDS 1