#' Installes package if it is not installed yet
#'
#' The amount of honey is estimated using the latest mcmc methods.
#'
#' @param pack the package name
#' @return nothing
#' @export
#' @examples
#' tree <- "package name"
#' tryInstall(pack)
#'
tryinstall <- function(pack){
  if (pack %in% rownames(installed.packages()) == FALSE){
    print(paste("installing ", pack))
    install.packages(pack, dependencies = TRUE)
  } else {
    print(paste(pack, " is already installed"))
  }
}
