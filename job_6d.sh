#!/bin/bash
#SBATCH -A kurs00042
#SBATCH -p kurs00042
#SBATCH --reservation=kurs00042
#SBATCH -J Zeitmessung
#SBATCH --mail-type=all
#SBATCH -e /home/kurse/kurs00042/nh51mini/ScriptTesting/6d.err.%j
#SBATCH -o /home/kurse/kurs00042/nh51mini/ScriptTesting/6d.out.%j
#SBATCH -n 1      
#SBATCH -c 16
#SBATCH --mem-per-cpu=1750
#SBATCH -t 00:25:00

cd /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/
gcc -o cpu_1 -fopenmp matrix-mult.c
export OMP_NUM_THREADS=1
./cpu_1

gcc -o cpu_2 -fopenmp matrix-mult.c
export OMP_NUM_THREADS=2
./cpu_2

gcc -o cpu_4 -fopenmp matrix-mult.c
export OMP_NUM_THREADS=4
./cpu_4

gcc -o cpu_8 -fopenmp matrix-mult.c
export OMP_NUM_THREADS=8
./cpu_8

gcc -o cpu_16 -fopenmp matrix-mult.c
export OMP_NUM_THREADS=16
./cpu_16

