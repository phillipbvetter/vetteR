# A shortcut for purrr::map
#' @export
lap <- function(.x, .f, ..., progress=FALSE){
  
  y <- purrr::map(.x, .f, ..., progress=progress )
  
  return(y)
}
