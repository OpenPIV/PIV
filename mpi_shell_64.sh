#!/bin/sh
#SBATCH -n 64 # Number of cores
#SBATCH -t 100 # Runtime in minutes
#SBATCH -p general # Partition to submit to
#SBATCH --mem-per-cpu=4000 # Memory per cpu in MB (see also --mem)

mpirun -np 64 --mca orte_base_help_aggregate 0 python PIV_MPI_cluster.py \
		"/n/home03/ngravish/Data/TandemFanning/5_GoodRuns_140VAmp_105mmLens_Wake15khz/PhaseEffects0_-0.62832_pi_140V_100Hz_23-Apr-2015_1_11/" \
		 > output_64.txt 2> errors_64.txt
