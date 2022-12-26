#!/bin/sh
#SBATCH --partition=CPUQ
#SBATCH --account=ie-ies
#SBATCH --time=03:00:00
#SBATCH --nodes=1
#SBATCH -c 28
#SBATCH --mem=12000
#SBATCH --job-name="sampeling_segmentation"
#SBATCH --output=evaluate_predictions_Test_set.out
#SBATCH --mail-user=kajako@stud.ntnu.no
#SBATCH --mail-type=ALL
WORKDIR=${SLURM_SUBMIT_DIR}
cd ${WORKDIR}
python kits21/evaluation/evaluate_predictions.py test_502_output -num_processes 14
