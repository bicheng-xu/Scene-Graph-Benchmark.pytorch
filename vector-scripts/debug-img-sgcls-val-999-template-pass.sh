WORKSPACE="/scratch/hdd001/home/bichengx/projects/Scene-Graph-Benchmark.pytorch"
cd ${WORKSPACE}

GEN_IMG_COMMON_PATH="/scratch/hdd001/home/bichengx/projects/ControlNet/my-diff-cnet/vector-scripts-BX/val-scripts/val-output"
PORT_NUM=$1
GEN_IMG_ANNO_FILE=$2
GEN_IMG_BASE_DIR=$3
GEN_IMG_FOLDER_NAME=$4

CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch --master_port ${PORT_NUM} \
--nproc_per_node=1 tools/relation_val_net_gen_img.py \
--config-file "configs/e2e_relation_X_101_32_8_FPN_1x.yaml" \
MODEL.ROI_RELATION_HEAD.USE_GT_BOX True \
MODEL.ROI_RELATION_HEAD.USE_GT_OBJECT_LABEL False \
MODEL.ROI_RELATION_HEAD.PREDICTOR CausalAnalysisPredictor \
MODEL.ROI_RELATION_HEAD.CAUSAL.EFFECT_TYPE TDE \
MODEL.ROI_RELATION_HEAD.CAUSAL.FUSION_TYPE sum \
MODEL.ROI_RELATION_HEAD.CAUSAL.CONTEXT_LAYER motifs \
TEST.IMS_PER_BATCH 1 \
TEST.RELATION.IOU_THRESHOLD 0.999 \
DATALOADER.ASPECT_RATIO_GROUPING False \
DTYPE "float32" \
GLOVE_DIR /scratch/hdd001/home/bichengx/projects/SG-Models/glove \
MODEL.PRETRAINED_DETECTOR_CKPT /scratch/hdd001/home/bichengx/projects/SG-Models/upload_causal_motif_sgcls/model_0032000.pth \
DATA_STAT_DIR /scratch/hdd001/home/bichengx/projects/SG-Models/upload_causal_motif_sgcls \
GEN_IMG.EVAL True \
GEN_IMG.ANNO_DIR "/h/bichengx/site-pkgs/VG-SGG/V2-Last" \
GEN_IMG.ANNO_FILE ${GEN_IMG_ANNO_FILE} \
GEN_IMG.BASE_DIR "${GEN_IMG_COMMON_PATH}/${GEN_IMG_BASE_DIR}" \
GEN_IMG.FOLDER_NAME ${GEN_IMG_FOLDER_NAME} \
GEN_IMG.NUM_ROUNDS 5