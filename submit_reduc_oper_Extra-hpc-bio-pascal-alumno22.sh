#!/bin/bash

#SBATCH --partition=hpc-bio-pascal
#SBATCH --chdir=/home/alumno22/lab5/lab-gpu
#SBATCH --cpus-per-task=4
#SBATCH --output=reduc-oper-extra-%u.out

module load anaconda/2023.03
echo Ejecutando el notebook con $1 elementos
echo #salto de línea
ipython reduc-operation-array_extra-alumno22.ipynb $1
module unload anaconda/2023.03
