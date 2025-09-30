###########################################################
# TRY THAT SUPPRESSES AND RECOVERS ANSWER DESPITE WARNINGS
###########################################################

try_withWarningRecovery = function(expr,silent=TRUE){
  output = try(withCallingHandlers(
    {
      expr
    },
    warning = function(w) {
      invokeRestart("muffleWarning")
    }
  ),silent=silent)
  return(output)
}


# Find the document location
#' @export
getDocumentPath <- function(){
  dirname(rstudioapi::documentPath())
}

# ggplot example plot
#' @export
ggexample <- function(){
  ggplot2::ggplot() + ggplot2::geom_line(ggplot2::aes(x=1:10,y=1:10))
}





