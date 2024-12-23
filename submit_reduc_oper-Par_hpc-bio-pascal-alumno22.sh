#!/bin/bash

#SBATCH --partition=hpc-bio-pascal
#SBATCH --chdir=/home/alumno22/lab5/lab-gpu
#SBATCH --cpus-per-task=4
#SBATCH --output=reduc-par-%u.out

#Ahora cargamos el módulo anaconda
module load anaconda/2023.03

echo Ejecutando el notebook de jupyter con $1 elementos

#Llamamos al intérprete ipython para ejecutar el script
ipython reduc-operation-array_par-alumno22.ipynb $1

#Descargamos el módulo

module unload anaconda/2023.03


