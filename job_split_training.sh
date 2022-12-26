#!/bin/sh
#SBATCH --partition=CPUQ
#SBATCH --account=ie-ies
#SBATCH --time=03:00:00
#SBATCH --nodes=1
#SBATCH -c 28
#SBATCH --mem=12000
#SBATCH --job-name="split_training_set"
#SBATCH --output=split_training_set-srun.out
#SBATCH --mail-user=kajako@stud.ntnu.no
#SBATCH --mail-type=ALL
WORKDIR=${SLURM_SUBMIT_DIR}
cd ${WORKDIR}
python Split_training_test.py
