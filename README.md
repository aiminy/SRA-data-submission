# SRA-data-submission

**Welcome to the SRA-data-submission wiki!**

This wiki includes step-by-step introduction for SRA data submission. 

SRA data submission is a tedious process. The submitter needs to read the whole paper manuscript that the biologists will publish and perform data curation. So the process usually include the following steps:

1. Read the paper manuscript

1. Based on the information you got from the paper,create bioproject

1. Based on the information you got from the paper,create biosample

1. Based on the information you got from the paper, create the metadata files(Model.organism.animal.1.0.xlsx and SRA_metadata_acc.xlsx in data directory) for the samples

1. Download and install Aspera Connect software from: http://downloads.asperasoft.com/connect2/ for enabling to upload large files in a batch manner

1. R -e 'library(devtools);install_github("aiminy/SRA-data-submission")'

After this, run the follwoing:
```{r}
library(SraSubmitter)
# Ex: you put your bam files in the following directory
input.bam.file.path <- "/media/H_driver/2016/Submission2SRA/Guoyan_Nimer_mouse_RNA-Seq_BAM/"
aspera.openssh.file <- "/media/H_driver/2016/Submission2SRA/Christopher Williams_mouse_RNA-Seq_BAM/aspera.openssh"
# you can run
callSubmitter(input.bam.file.path,aspera.openssh.file)
```

