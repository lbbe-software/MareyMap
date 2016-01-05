\name{MMSpline3-class}
\docType{class}
\alias{MMSpline3-methods}
\alias{MMSpline3,missing-method}
\alias{MMSpline3}
\alias{MMSpline3-class}
\alias{df<-}
\alias{df<-,MMSpline3,numeric-method}
\alias{df}
\alias{df,MMSpline3-method}
\alias{gcv<-}
\alias{gcv<-,MMSpline3,logical-method}
\alias{gcv}
\alias{gcv,MMSpline3-method}
\alias{createOrder,MMSpline3-method}
\alias{interpolate,MMSpline3,MareyMap-method}
\alias{plot,MareyMap,MMSpline3-method}
\alias{plotModel,MMSpline3-method}
\alias{plotRate,MMSpline3-method}
\alias{query,MMSpline3,numeric-method}
\alias{spar<-}
\alias{spar<-,MMSpline3,numeric-method}
\alias{spar}
\alias{spar,MMSpline3-method}
\alias{type<-}
\alias{type<-,MMSpline3,character-method}
\alias{type}
\alias{type,MMSpline3-method}
\alias{userParam,MMSpline3-method}

\title{Class "MMSpline3" Interpolation using cubic splines }
\description{MMSPline3 is a S4 class providing an interpolation method for MareyMap. Interpolation is done using cubic splines. The class uses
smooth.spline to carry out the interpolation.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("MMSpline3", ...)}.
However you may instead use the function \code{\link{MMSpline3}}() and adjust
the parameters afterwards using the accessor functions.
}
\section{Slots}{
	 \describe{
    \item{\code{type}:}{Object of class \code{"character"} indicate which type of smoothing is applied, applicable values are "cross-validation", "spar" and	"degree of freedom"}
    \item{\code{gcv}:}{Object of class \code{"logical"} indicating whether	generalized cross validation is to be used when smoothing via cross	validation. }
    \item{\code{df}:}{Object of class \code{"numeric"} holding the degree of freedom to	use when the smoothing is done using degree of freedom}
    \item{\code{spar}:}{Object of class \code{"numeric"} value of the "spar" to be taken when smoothing the "spar" method.}
    \item{\code{model}:}{Object of class \code{"ANY"} slot used to keep the	smooth.spline object after the interpolation. }
    \item{\code{name}:}{Object of class \code{"character"}  holding the name of	the interpolation.}
    \item{\code{color}:}{Object of class \code{"character"} holding the color of the interpolation}
    \item{\code{physicalPositions}:}{Object of class \code{"vector"} holding the valid physical positions of the map on which the interpolation is applied.}
    \item{\code{rates}:}{Object of class \code{"vector"} holding the local recombination rates at the position of each marker.}
    \item{\code{visible}:}{Object of class \code{"logical"} indicating whether the interpolation is to be drawn or not. }
    \item{\code{persistent}:}{Object of class \code{"logical"} indicating whether or not the interpolation should be taken into account when saving to	text file.}
  }
}
\section{Extends}{
Class \code{"Interpolation"}, directly.
}
\section{Methods}{
  \describe{
    \item{df<-}{\code{signature(object = "MMSpline3", value = "numeric")}: Changes the value of the degree of freedom.}
    \item{df}{\code{signature(object = "MMSpline3")}: returns the value of the degree of freedom.}
    \item{gcv<-}{\code{signature(object = "MMSpline3", value = "logical")}: Turns on or off the generalized cross validation.}
    \item{gcv}{\code{signature(object = "MMSpline3")}: indicates whether the generalized cross validation is on or not.}
    \item{createOrder}{\code{signature(object = "MMSpline3")}: see \code{\link{Interpolation-class}}}
    \item{interpolate}{\code{signature(object = "MMSpline3", map = "MareyMap")}: carries out the interpolation on the map passed as parameter. Called automatically when an interpolation is added to a map }
    \item{plotModel}{\code{signature(object = "MMSpline3")}: Plot the interpolation's model of the Marey curve.}
    \item{plotRate}{\code{signature(object = "MMSpline3")}: Plots the variations of the recombination rates across a mapomosome.}
    \item{query}{\code{signature(object = "MMSpline3", pos = "numeric")}: query	the estimation of the recombination rate in a specific position (or a	vector of specific positions)}
    \item{spar<-}{\code{signature(object = "MMSpline3", value = "numeric")}: Changes the value of the spar.}
    \item{spar}{\code{signature(object = "MMSpline3")}: returns the value of	the spar.}
    \item{type<-}{\code{signature(object = "MMSpline3", value = "character")}: Changes the type of smoothing to be used.}
    \item{type}{\code{signature(object = "MMSpline3")}: returns the smoothing	method used.}
    \item{userParam}{\code{signature(object = "MMSpline3")}: returns informations about the user parameter, used by tcl/tk interface but not that	useful for a command line user.}
	 }
}
\author{Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clement Rezvoy}

\seealso{
	\code{\link{smooth.spline}}
	\code{\link{Interpolation-class}}
	\code{\link{MareyMap-class}}

}
\examples{
data(Homo_sapiens_mean)
human7 <- Homo_sapiens_mean[["Chromosome 07"]]
itr1 <- MMSpline3()
color(itr1) <- "red"
spar(itr1) <- 0.05
human7 <- human7 + itr1
plot(human7)
}
\keyword{classes}
