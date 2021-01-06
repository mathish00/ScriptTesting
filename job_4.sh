#!/bin/bash
#SBATCH -A kurs00042
#SBATCH -p kurs00042
#SBATCH --reservation=kurs00042
#SBATCH -J Zeitmessung4
#SBATCH --mail-type=all
#SBATCH -e /home/kurse/kurs00042/nh51mini/ScriptTesting/4b_4_Threads.err.%j
#SBATCH -o /home/kurse/kurs00042/nh51mini/ScriptTesting/4b_4_Threads.out.%j
#SBATCH -n 1      
#SBATCH -c 4
#SBATCH --mem-per-cpu=100
#SBATCH -t 00:10:00

cd /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/
g++ -o cpus_4 -fopenmp heated-plate-parallel.cpp 
./cpus_4
