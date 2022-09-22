#! /bin/bash

DATA=/data/users/sushmanagaraj/SEQUENCING/singlecell/TGFb_signaling
R1_fastq=`ls ${DATA}/${1}/*R1*.fastq.gz`
R2_fastq=`ls ${DATA}/${1}/*R2*.fastq.gz`

salmon alevin -l ISR -i /data/users/sushmanagaraj/ref/mm/vM25/salmon_index/ -1 $R1_fastq -2 $R2_fastq -p $SLURM_CPUS_PER_TASK -o . --tgMap /data/users/sushmanagaraj/ref/mm/vM25/txp2gene.tsv --chromiumV3 --dumpFeatures --dumpBfh --keepCBFraction 1.0 --freqThreshold 3 --maxNumBarcodes 200000
