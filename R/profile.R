# I had these functions in my Rprofile but thought it better to include them here

#convenience
#' @export
.max <- function(x, na.rm=TRUE) base::max(x, na.rm=na.rm)
#' @export
.min <- function(x, na.rm=TRUE) base::min(x, na.rm=na.rm)
#' @export
.range <- function(x, na.rm=TRUE) base::range(x, na.rm=na.rm)
#' @export
.transpose <- function(x) base::t(x)
#' @export
.s <- base::summary
#' @export
.h <- function(x, n=5) utils::head(x, n=n)
#' @export
.t <- function(x, n=5) utils::tail(x, n=n)
#' @export
.n <- base::names
#' @export
.adf <- as.data.frame
#' @export
.am <- as.matrix
#' @export
.av <- as.vector
#' @export
.an <- as.numeric
#' @export
.asp <- as.POSIXct

#' @export
.rm <- function() rm(list=ls(parent.frame()), envir=parent.frame())

# helpers
#' @export
.swd <- function() base::setwd(base::dirname(rstudioapi::documentPath()))
#' @export
.gwd <- function() base::getwd()

# plot shortcuts
#' @export
.pp <- function(x, y, type="l", ...){
  if(missing(y)){
    y <- x
    x <- 1:length(y)
  }
  plot(x, y, type=type, ...)
}

#' @export
.gg <- function(x, y, ...) {
  if (missing(y)) {
    y <- x
    x <- seq_along(y)
  }
  p <- ggplot() + 
    geom_line(aes(x = x, y = y)) + 
    ctsmTMB:::getggplot2theme() + 
    list(...)
  
  print(p)
  return(p)
}

##ggplot things
#' @export
.mytheme <- function () 
{
  mytheme = ggplot2::theme_minimal() + 
    ggplot2::theme(text = ggplot2::element_text(size = 12), 
                   legend.text = ggplot2::element_text(size = 12), axis.text = ggplot2::element_text(size = 12), 
                   strip.text = ggplot2::element_text(face = "bold", size = 12), 
                   legend.box = "horizontal", legend.direction = "horizontal", 
                   legend.position = "top", plot.title = ggplot2::element_text(hjust = 0.5), 
                   plot.subtitle = ggplot2::element_text(hjust = 0.5))
  return(mytheme)
}

#' @export
.filter <- dplyr::filter
