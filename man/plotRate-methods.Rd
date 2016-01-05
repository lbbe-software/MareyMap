\name{plotRate-methods}
\docType{methods}
\alias{plotRate}
\alias{plotRate-methods}
\title{ plotRate }
\description{
 Plots the variation of the recombination rate as calculated by \code{object}
}
\section{Methods}{
\describe{
  \item{object = "Interpolation"}{   Plots the variation of the recombination rate as calculated by the \code{\link{Interpolation}}. }
  \item{object = "MMSlidingWindow"}{  Plots the variation of the recombination rate as calculated by MMSlidingWindow.}
  \item{object = "MMLoess"}{ Plots the variation of the recombination rate as calculated by MMLoess. }
  \item{object = "MMSpline3"}{ Plots the variation of the recombination rate as calculated by MMSpline3. }
}}
\keyword{methods}
\seealso{
  \code{\link{Interpolation-class}}
}
\author{Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clement Rezvoy}