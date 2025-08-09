#!/bin/bash
#SBATCH --job-name=develop
#SBATCH --nodes=1
#SBATCH --partition=rtx6000
#SBATCH --exclude=gpu138
#SBATCH --mem=30GB
#SBATCH -c 9
#SBATCH --gres=gpu:rtx6000:1
#SBATCH --qos=normal
#SBATCH --time=2:00:00
#SBATCH --export=ALL
#SBATCH --open-mode=append
#SBATCH --output=slurm-output/%x.%j.out
#SBATCH --error=slurm-output/%x.%j.err
#SBATCH --mail-user=bichengx@cs.ubc.ca
#SBATCH --mail-type=ALL

echo $(date) "--" ${SLURM_JOB_ID}

GEN_IMG_COMMON_PATH="/scratch/hdd001/home/bichengx/projects/ControlNet/my-diff-cnet/vector-scripts-BX/val-scripts/val-output"
PORT_NUM=$1
GEN_IMG_ANNO_FILE=$2
GEN_IMG_BASE_DIR=$3
GEN_IMG_FOLDER_NAME=$4

echo ${PORT_NUM}
echo ${GEN_IMG_ANNO_FILE}
echo "${GEN_IMG_COMMON_PATH}/${GEN_IMG_BASE_DIR}"
echo ${GEN_IMG_FOLDER_NAME}