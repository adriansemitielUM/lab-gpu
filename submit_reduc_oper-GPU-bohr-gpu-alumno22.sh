#!/bin/bash

#SBATCH --partition=bohr-gpu
#SBATCH --chdir=/home/alumno22/lab5
#SBATCH --output=reduc-oper-GPU-%u.out

#Cargamos los módulos que van a ser necesarios
module load anaconda/2023.03
module load cuda/12.3

for arg in "$@";
do
	echo Ejecutando la operación de reducción con $arg elementos
	ipython reduc-operation-array_gpu-alumno22.ipynb $arg
	echo #Salto de línea
done

#Descargamos los módulos para liberar recursos
module unload anaconda/2023.03
module unload cuda/12.3
