#!/bin/bash
#SBATCH -A kurs00042
#SBATCH -p kurs00042
#SBATCH --reservation=kurs00042
#SBATCH -J hello
#SBATCH --mail-type=all
#SBATCH -e /home/kurse/kurs00042/nh51mini/ScriptTesting/test.err.%j
#SBATCH -o /home/kurse/kurs00042/nh51mini/ScriptTesting/test.out.%j
#SBATCH -n 1      
#SBATCH -c 1
#SBATCH --mem-per-cpu=100
#SBATCH -t 00:10:00

ml load gcc
cd /home/kurse/kurs00042/nh51mini/SPP/Uebungsblatt1_Gruppe133/Aufgabe1/
./helloWorld

