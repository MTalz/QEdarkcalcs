#! /bin/bash -l
## job name
#SBATCH -J v0_300
## number of nodes
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -c 10
#SBATCH --mem-per-cpu=512MB
#SBATCH --time=48:00:00
## partition (queue) to use
#SBATCH -p para
#SBATCH –output="stdout.txt"
#SBATCH –error="stderr.txt"

## commands/steps to execute
# go to the submission directory
DIR=v0_300
cd /home/mtalia/q-e-qe-5.1.2/QEdark_run/$DIR 

# Set environment variables
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export OMP_STACKSIZE=512M

/home/mtalia/q-e-qe-5.1.2/bin/pw.x < si.77.in > si.77.out 
