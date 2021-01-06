#!/bin/bash
#SBATCH -A kurs00042
#SBATCH -p kurs00042
#SBATCH --reservation=kurs00042
#SBATCH -J hello
#SBATCH --mail-type=all
#SBATCH -e /home/kurse/kurs00042/nh51mini/ScriptTesting/test.err.%j
#SBATCH -o /home/kurse/kurs00042/nh51mini/ScriptTesting/test.out.%j
#SBATCH -n 1      
#SBATCH -c 4
#SBATCH --mem-per-cpu=100
#SBATCH -t 00:10:00

cd /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/
gcc -o hello -fopenmp hello-openmp.c
./hello

