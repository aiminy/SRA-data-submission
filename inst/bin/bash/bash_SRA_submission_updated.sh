#!/bin/bash

#Usage: sh /home/aiminyan/Code/bash_SRA_submission_updated.sh input_files_dir
#Example: sh /home/aiminyan/Code/bash_SRA_submission_updated.sh /media/H_driver/2016/Submission2SRA/Guoyan_Nimer_mouse_RNA-Seq_BAM/ "/media/H_driver/2016/Submission2SRA/Christopher\ Williams_mouse_RNA-Seq_BAM/aspera.openssh"

DIR="$1"
aspera_openssh_file="$2"

for file in $(ls $DIR*.bam)
do

f=`echo "$file"`

dir_name=$(dirname "$f")

file_name=$(basename "$f")

sample_name=$(echo "$file_name" | awk -F"." '{print $1}')

echo "$dir_name"/"$file_name"

/home/aiminyan/.aspera/connect/bin/ascp -i "$aspera_openssh_file" -QT -l100m -k1 -d "$dir_name"/"$file_name" subasp@upload.ncbi.nlm.nih.gov:uploads/jlfmssm@gmail.com_lTVET0In/MTG/

done
