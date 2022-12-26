#!/bin/sh
#SBATCH --partition=CPUQ
#SBATCH --account=ie-ies
#SBATCH --time=03:00:00
#SBATCH --nodes=1
#SBATCH -c 28
#SBATCH --mem=12000
#SBATCH --job-name="get_images"
#SBATCH --output=get_imaging-srun.out
#SBATCH --mail-user=kajako@stud.ntnu.no
#SBATCH --mail-type=ALL
WORKDIR=${SLURM_SUBMIT_DIR}
cd ${WORKDIR}
python3 kits21/starter_code/get_imaging.py

