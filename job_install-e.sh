#!/bin/sh
#SBATCH --partition=CPUQ
#SBATCH --account=ie-ies
#SBATCH --time=00:15:00
#SBATCH --nodes=1
#SBATCH -c 28
#SBATCH --mem=12000
#SBATCH --job-name="test-download-git-repo"
#SBATCH --output=test-srun.out
#SBATCH --mail-user=kajako@stud.ntnu.no
#SBATCH --mail-type=ALL
WORKDIR=${SLURM_SUBMIT_DIR}
cd ${WORKDIR}
pip install -e .