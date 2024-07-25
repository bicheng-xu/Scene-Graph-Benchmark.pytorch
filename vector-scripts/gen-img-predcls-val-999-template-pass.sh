#!/bin/bash
#SBATCH --job-name=example-predcls-val-999
#SBATCH --nodes=1
#SBATCH --partition=rtx6000
#SBATCH --exclude=gpu138
#SBATCH --mem=40GB
#SBATCH -c 9
#SBATCH --gres=gpu:rtx6000:1
#SBATCH --qos=m3
#SBATCH --time=4:00:00
#SBATCH --export=ALL
#SBATCH --open-mode=append
#SBATCH --output=slurm-output/%x.%j.out
#SBATCH --error=slurm-output/%x.%j.err
#SBATCH --mail-user=bichengx@cs.ubc.ca
#SBATCH --mail-type=ALL

echo ${SLURM_JOB_ID}
module load my-cuda10.1+cudnn7.6.3

WORKSPACE="/scratch/hdd001/home/bichengx/projects/Scene-Graph-Benchmark.pytorch"
cd ${WORKSPACE}

source /h/bichengx/site-pkgs/anaconda3/bin/activate SGed

CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch --master_port 10139 \
--nproc_per_node=1 tools/relation_val_net_gen_img.py \
--config-file "configs/e2e_relation_X_101_32_8_FPN_1x.yaml" \
MODEL.ROI_RELATION_HEAD.USE_GT_BOX True \
MODEL.ROI_RELATION_HEAD.USE_GT_OBJECT_LABEL True \
MODEL.ROI_RELATION_HEAD.PREDICTOR CausalAnalysisPredictor \
MODEL.ROI_RELATION_HEAD.CAUSAL.EFFECT_TYPE TDE \
MODEL.ROI_RELATION_HEAD.CAUSAL.FUSION_TYPE sum \
MODEL.ROI_RELATION_HEAD.CAUSAL.CONTEXT_LAYER motifs \
TEST.IMS_PER_BATCH 1 \
TEST.RELATION.IOU_THRESHOLD 0.999 \
DATALOADER.ASPECT_RATIO_GROUPING False \
DTYPE "float32" \
GLOVE_DIR /scratch/hdd001/home/bichengx/projects/SG-Models/glove \
MODEL.PRETRAINED_DETECTOR_CKPT /scratch/hdd001/home/bichengx/projects/SG-Models/upload_causal_motif_predcls/model_0030000.pth \
DATA_STAT_DIR /scratch/hdd001/home/bichengx/projects/SG-Models/upload_causal_motif_predcls \
GEN_IMG.EVAL True \
GEN_IMG.ANNO_DIR "/h/bichengx/site-pkgs/VG-SGG/V2-Last" \
GEN_IMG.ANNO_FILE "validation_common_data_bbox_dbox32_np.pkl" \
GEN_IMG.BASE_DIR "/scratch/hdd001/home/bichengx/projects/ControlNet/my-diff-cnet/vector-scripts-BX/val-scripts/val-output/vg-prompt-object-random-a40-common-object-original-iter_96400-run_0-1234" \
GEN_IMG.FOLDER_NAME "generated_image" \
GEN_IMG.NUM_ROUNDS 5