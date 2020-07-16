clear_otherPackage <- function(){
  
  if(!require(magrittr)){
    install.packages("magrittr")
  }
  
  library(magrittr)
  
  sessionInfo()$otherPkgs %>% 
    names() -> 
    jack
  
  lapply(paste0("package:", jack), FUN = detach, character.only = T)
}