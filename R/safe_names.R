
#' Make database friendly names
#'
#' janitor::clean_names is probably better to use. But ive been using this for
#' ages.
#'
#' @param names a vector of column names
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' safe_names(c("Bad name!", "And&an0ther@@!"))
#' }
safe_names = function(names) {
  names = gsub('[^a-z0-9]+','_',tolower(names))
  names = make.names(names, unique=TRUE, allow_=TRUE)
  names = gsub('.','_',names, fixed=TRUE)
  names
}
