#!/bin/bash


STARTTIME=$(date)

echo "========================="

echo "$0: Start time $STARTTIME"

echo "========================="

set -e

#conda activate bedtools

 

for f1 in /mnt/scratch/Projects/methylseq/coverage_panel/methyldackel/AER0*.markdup.sorted_CpG.bedGraph

#for f1 in /mnt/scratch/Projects/methylseq/coverage_panel/bed/*.markdup.sorted_CpG.bedGraph

do

	filename="$(basename ${f1})"

	echo "${filename}"

	base="$(cut -d'.' -f1 <<< ${filename})"

	echo "${base}"

	DIR=$(dirname "${f1}")

	echo "${DIR}"

	OUT=${DIR%/*}

	echo "${OUT}"




if [ ! -d ${OUT}/methyldackel_filter ]

then

	mkdir ${OUT}/methyldackel_filter

fi




	bedtools intersect -a $f1 \

	-b ${OUT}/reference_panel/covered_targets_Twist_Methylome_hg38_annotated_collapsed.bed \

	> ${OUT}/methyldackel_filter/${base}_filtered.markdup.sorted_CpG.bedGraph

done
