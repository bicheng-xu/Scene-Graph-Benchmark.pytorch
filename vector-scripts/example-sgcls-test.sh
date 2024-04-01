#!/bin/bash
#SBATCH --job-name=example-sgcls-test
#SBATCH --nodes=1
#SBATCH --partition=rtx6000
#SBATCH --exclude=gpu138
#SBATCH --mem=80GB
#SBATCH -c 18
#SBATCH --gres=gpu:rtx6000:1
#SBATCH --qos=normal
#SBATCH --time=12:00:00
#SBATCH --export=ALL
#SBATCH --open-mode=append
#SBATCH --output=slurm-output/%x.%j.out
#SBATCH --error=slurm-output/%x.%j.err
#SBATCH --mail-user=bichengx@cs.ubc.ca
#SBATCH --mail-type=ALL

WORKSPACE="/scratch/hdd001/home/bichengx/projects/Scene-Graph-Benchmark.pytorch"
cd ${WORKSPACE}

CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch --master_port 10028 \
--nproc_per_node=1 tools/relation_test_net.py \
--config-file "configs/e2e_relation_X_101_32_8_FPN_1x.yaml" \
MODEL.ROI_RELATION_HEAD.USE_GT_BOX True \
MODEL.ROI_RELATION_HEAD.USE_GT_OBJECT_LABEL False \
MODEL.ROI_RELATION_HEAD.PREDICTOR CausalAnalysisPredictor \
MODEL.ROI_RELATION_HEAD.CAUSAL.EFFECT_TYPE TDE \
MODEL.ROI_RELATION_HEAD.CAUSAL.FUSION_TYPE sum \
MODEL.ROI_RELATION_HEAD.CAUSAL.CONTEXT_LAYER motifs \
TEST.IMS_PER_BATCH 1 \
DTYPE "float16" \
GLOVE_DIR /scratch/hdd001/home/bichengx/projects/SG-Models/glove \
MODEL.PRETRAINED_DETECTOR_CKPT /scratch/hdd001/home/bichengx/projects/SG-Models/upload_causal_motif_sgcls/model_0032000.pth \
OUTPUT_DIR /scratch/hdd001/home/bichengx/projects/SG-Models/upload_causal_motif_sgcls_test