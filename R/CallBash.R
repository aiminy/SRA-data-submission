#' callSubmitter
#'
#' @param input.bam.file.path 
#' @param aspera.openssh.file
#' 
#' @return
#' @export
#'
#' @examples
#' 
#' input.bam.file.path <- "/media/H_driver/2016/Submission2SRA/Guoyan_Nimer_mouse_RNA-Seq_BAM/"
#' aspera.openssh.file <- "/media/H_driver/2016/Submission2SRA/Christopher Williams_mouse_RNA-Seq_BAM/aspera.openssh"
#' 
#' callSubmitter(input.bam.file.path,aspera.openssh.file)
#' 
#' 
callSubmitter <- function(input.bam.file.path,aspera.openssh.file) {
  
  R_LIB=.libPaths()
  
  cmd0 <- file.path(R_LIB,"SraSubmitter/bin/bash/bash_SRA_submission_updated.sh")
  
  input.bam.file.path <- input.bam.file.path
  aspera.openssh.file <- aspera.openssh.file
  
  cmd1=paste("sh",cmd0,input.bam.file.path,aspera.openssh.file,sep=" ")
  
  system(cmd1)

}