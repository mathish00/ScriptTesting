#!/bin/bash
#sbatch -a kurs00042
#sbatch -p kurs00042
#sbatch --reservation=kurs00042
#sbatch -j HelloWorld
#sbatch --mail-type=all
#sbatch -e /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/helloWorld-%j.err
#sbatch -o /home/kurse/kurs00042/nh51mini/SPP/Praktikum1_Gruppe133/Hoffmann/helloWorld-%j.out
#sbatch -n 1      
#sbatch -c 1
#sbatch --mem-per-cpu=100
#sbatch -t 00:10:00

cd /home/kurse/kurs00042/nh51mini/SPP/Uebungsblatt1_Gruppe133/Aufgabe1/
./helloWorld