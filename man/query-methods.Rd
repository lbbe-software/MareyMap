\name{query-methods}
\docType{methods}
\alias{query}
\alias{query-methods}
\title{  Methods for Function query }
\description{
 query an \code{object} for a given (or several) \code{pos}ition(s).
}
\section{Methods}{
\describe{
  \item{object = "Interpolation", pos = "integer"}{Default method.} 
  \item{object = "MareyMap", pos = "numeric"}{Query the local recombination rate as calculated by all the Interpolation defined on the map.}
  \item{object = "MMSlidingWindow", pos = "numeric"}{Query the local recombination rate as calculated by MMSlidingWindow.}
  \item{object = "MMLoess", pos = "numeric"}{Query the local recombination rate as calculated by MMLoess.}
  \item{object = "MMSpline3", pos = "numeric"}{Query the local recombination rate as calculated by MMSpline3.}
}}
\keyword{methods}
\seealso{
  \code{\link{Interpolation-class}}
}
\author{Aurélie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clément Rezvoy}