#!/bin/bash
#SBATCH -A kurs00042
#SBATCH -p kurs00042
#SBATCH --reservation=kurs00042
#SBATCH -J Zeitmessung
#SBATCH --mail-type=all
#SBATCH -e /home/kurse/kurs00042/nh51mini/ScriptTesting/4b_1_Thread.err.%j
#SBATCH -o /home/kurse/kurs00042/nh51mini/ScriptTesting/4b_1_Thread.out.%j
#SBATCH -n 1      
#SBATCH -c 1
#SBATCH --mem-per-cpu=1750
#SBATCH -t 00:10:00

cd /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/
g++ -o cpu_1 -fopenmp heated-plate-parallel.cpp
export OMP_NUM_THREADS=1
./cpu_1
