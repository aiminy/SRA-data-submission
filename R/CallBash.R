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
  
  R_LIB=.libPaths()
  
  cmd0 <- file.path(R_LIB,"SraSubmitter/bin/bash/bash_SRA_submission_updated.sh")
  
  input.bam.file.path <- input.bam.file.path
  
  cmd1=paste("sh",cmd0,input.bam.file.path,sep=" ")
  
  system(cmd1)

}
