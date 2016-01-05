\name{interpolate-methods}
\docType{methods}
\alias{interpolate}
\alias{interpolate-methods}
\title{interpolate}
\description{
  performs an interpolation on \code{map} using the interpolation method provided by \code{object}
}
\section{Methods}{
\describe{
  \item{object = "Interpolation", map = "MareyMap"}{DO NOT USE in an 'real' programming language, this would be a virtual function}
  \item{object = "MMSlidingWindow", map = "MareyMap"}{interpolate using sliding windows}
  \item{object = "MMLoess", map = "MareyMap"}{interpolate using loess}
  \item{object = "MMSpline3", map = "MareyMap"}{interpolate using cubic splines.}
}}
\keyword{methods}
\seealso{
  \code{\link{Interpolation-class}}
}
\author{Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clement Rezvoy}

