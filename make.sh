#!/bin/bash
#SBATCH -A kurs00042
#SBATCH -p kurs00042
#SBATCH --reservation=kurs00042
#SBATCH -J Zeitmessung4
#SBATCH --mail-type=all
#SBATCH -n 1      
#SBATCH -c 1
#SBATCH --mem-per-cpu=100
#SBATCH -t 00:10:00

cd /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/
./Makefile
