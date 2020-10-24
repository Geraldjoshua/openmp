#!/bin/sh

#SBATCH --account=icts

#SBATCH --partition=curie

#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=32

#SBATCH --time=10:00

#SBATCH --mem-per-cpu=2000

#SBATCH --job-name="Gerald_a1_1"

#SBATCH --mail-user=geraldjoshua7@gmail.com

#SBATCH --mail-type=ALL

export OMP_NUM_THREADS=32
./openmpbench_C_v31/schedbench --ntasks=1 > shedbench.txt
#./openmpbench_C_v31/arraybench_59049 --ntasks=1 > arraybench_59049.txt
./openmpbench_C_v31/taskbench --ntasks=1 > taskbench.txt
./openmpbench_C_v31/syncbench --ntasks=1 > syncbench.txt
