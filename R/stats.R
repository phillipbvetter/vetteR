# This function calculates quantiles
#' @export
quants <- function(v, by=0.01){
  
  prob.seq <- seq(0,1,by=by)
  
  y <- stats::quantile(v, prob.seq)
  
  return(y)
}
