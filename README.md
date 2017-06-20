# SRA-data-submission

**Welcome to the SRA-data-submission wiki!**

This wiki includes step-by-step introduction for SRA data submission. 

SRA data submission is a tedious process. The submitter needs to read the whole paper manuscript that the biologists will publish and perform data curation. So the process usually include the following steps:

1. Read the paper manuscript

1. Based on the information you got from the paper,create bioproject

1. Based on the information you got from the paper,create biosample

1. Based on the information you got from the paper, create the metadata files(Model.organism.animal.1.0.xlsx and SRA_metadata_acc.xlsx in data directory) for the samples

1. Download and install Aspera Connect software from: http://downloads.asperasoft.com/connect2/ for enabling to upload large files in a batch manner

1. R CMD build SraSubmitter

1. R CMD INSATLL SraSubmitter_0.1.0_R_x86_64-pc-linux-gnu.tar.gz

After this, run the follwoing:


   `library(SraSubmitter)`
   
   `CallBash()`


