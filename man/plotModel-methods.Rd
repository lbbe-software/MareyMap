\name{plotModel-methods}
\docType{methods}
\alias{plotModel}
\alias{plotModel-methods}
\title{plotModel}
\description{
 Plot the model of \code{object}
}
\section{Methods}{
\describe{
  \item{object = "Interpolation"}{ Default function, plots nothing }
  \item{object = "MMSlidingWindow"}{ Plots the model of an interpolation of type MMSlidingWindow }
  \item{object = "MMLoess"}{  Plots the model of an interpolation of type MMLoess-class }
  \item{object = "MMSpline3"}{ Plots the model of an interpolation of type MMSpline3-class }
}}
\keyword{methods}
\seealso{
  \code{\link{Interpolation-class}}
}
\author{Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clement Rezvoy}