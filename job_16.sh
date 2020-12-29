#!/bin/bash
#SBATCH -A kurs00042
#SBATCH -p kurs00042
#SBATCH --reservation=kurs00042
#SBATCH -J Zeitmessung
#SBATCH --mail-type=all
#SBATCH -e /home/kurse/kurs00042/nh51mini/ScriptTesting/3c_16_Threads.err.%j
#SBATCH -o /home/kurse/kurs00042/nh51mini/ScriptTesting/3c_16_Threads.out.%j
#SBATCH -n 1      
#SBATCH -c 16
#SBATCH --mem-per-cpu=100
#SBATCH -t 00:10:00

ml load gcc

cd /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/
gcc -fopenmp dotproduct.c -lm
export OMP_NUM_THREADS=16
./a.out
