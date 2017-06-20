#' Title
#'
#' @param input.bam.file.path 
#'
#' @return
#' @export
#'
#' @examples
#' 
#' input.bam.file.path <- "/media/H_driver/2016/Submission2SRA/Guoyan_Nimer_mouse_RNA-Seq_BAM/"
#' 
#' callSubmitter(input.bam.file.path)
#' 
#' 
callSubmitter <- function(input.bam.file.path) {
  
  cmd0="sh /home/aiminyan/Code/bash_SRA_submission_updated.sh"
  
  input.bam.file.path <- input.bam.file.path
  
  cmd1=paste(cmd0,input.bam.file.path,sep=" ")
  
  system(cmd1)

}
