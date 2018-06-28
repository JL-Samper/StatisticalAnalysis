# package installation function
library.load <- function(...){
  list.of.packages <-c(...)
  library.private.load(list.of.packages)
  
}

library.private.load<-function(pkgs){
  new.pkgs <- pkgs[!(pkgs %in% installed.packages()[,"Package"])]
  if(length(new.pkgs)){
    install.packages(new.pkgs, dependencies =TRUE)
  }
  invisible(lapply(pkgs, library, character.only=TRUE))
}

