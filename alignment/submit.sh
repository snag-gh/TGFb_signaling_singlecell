#! /bin/bash

mkdir ${1}/all_barcodes
sbatch --cpus-per-task=8 --chdir=$PWD/${1}/all_barcodes --job-name=$1 --output=slurm-${1}-%A salmon_alevin.sh $1
