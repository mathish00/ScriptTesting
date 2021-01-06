#!/bin/bash
#SBATCH -A kurs00042
#SBATCH -p kurs00042
#SBATCH --reservation=kurs00042
#SBATCH -J Zeitmessung32
#SBATCH --mail-type=all
#SBATCH -e /home/kurse/kurs00042/nh51mini/ScriptTesting/4b_32_Threads.err.%j
#SBATCH -o /home/kurse/kurs00042/nh51mini/ScriptTesting/4b_32_Threads.out.%j
#SBATCH -n 2      
#SBATCH -c 32
#SBATCH --mem-per-cpu=100
#SBATCH -t 00:10:00

cd /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/
g++ -o cpus_32 -fopenmp heated-plate-parallel.cpp
export OMP_NUM_THREADS=32
./cpus_32
