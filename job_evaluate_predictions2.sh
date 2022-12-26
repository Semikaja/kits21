#!/bin/sh
#SBATCH --partition=CPUQ
#SBATCH --account=ie-ies
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH -c 28
#SBATCH --mem=12000
#SBATCH --job-name="evaluation_of_training"
#SBATCH --output=evaluate_predictions_training_fullres.out
#SBATCH --mail-user=kajako@stud.ntnu.no
#SBATCH --mail-type=ALL
WORKDIR=${SLURM_SUBMIT_DIR}
cd ${WORKDIR}
python kits21/evaluation/evaluate_predictions.py Validation_501_fullres_train -num_processes 14
