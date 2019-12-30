#' SCE_proxy
#'
#' Workaround to get onto the internet from SCE instances
#'
#'
#' @return
#' @export
#'
#' @examples
SCE_proxy<- function(){

  Sys.setenv(http_proxy="http://10.85.4.54:8080", https_proxy="http://10.85.4.54:8080")

}

