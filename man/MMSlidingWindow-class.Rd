\name{MMSlidingWindow-class}
\docType{class}
\alias{MMSlidingWindow-methods}
\alias{MMSlidingWindow,missing-method}
\alias{MMSlidingWindow}
\alias{MMSlidingWindow-class}
\alias{createOrder,MMSlidingWindow-method}
\alias{interpolate,MMSlidingWindow,MareyMap-method}
\alias{plot,MareyMap,MMSlidingWindow-method}
\alias{plotModel,MMSlidingWindow-method}
\alias{plotRate,MMSlidingWindow-method}
\alias{query,MMSlidingWindow,numeric-method}
\alias{shift<-}
\alias{shift<-,MMSlidingWindow-method}
\alias{shift}
\alias{shift,MMSlidingWindow-method}
\alias{size<-}
\alias{size<-,MMSlidingWindow-method}
\alias{size}
\alias{size,MMSlidingWindow-method}
\alias{threshold<-}
\alias{threshold<-,MMSlidingWindow-method}
\alias{threshold}
\alias{threshold,MMSlidingWindow-method}
\alias{userParam,MMSlidingWindow-method}

\title{Class "MMSlidingWindow" Interpolation method plug-in for MareyMap }
\description{ This package provides an interpolation method that estimates the recombination rates using a sliding window approach.  }
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("MMSlidingWindow", ...)} or using the method \code{SlidingWindow()}.
}
\section{Slots}{
	 \describe{
    \item{\code{size}:}{Object of class \code{"integer"}, the size of the windows in base pairs }
    \item{\code{shift}:}{Object of class \code{"integer"}, the distance in number of base pairs between the centers of two consecutive windows. }
    \item{\code{threshold}:}{Object of class \code{"integer"} minimum number of markers in a window to perform the regression }
    \item{\code{results}:}{Object of class \code{"vector"} position of the model curve estimated at the center f each window. }
    \item{\code{name}:}{Object of class \code{"character"} see \code{\link{Interpolation-class}} }
    \item{\code{color}:}{Object of class \code{"character"} see \code{\link{Interpolation-class}} }
    \item{\code{physicalPositions}:}{Object of class \code{"vector"} see \code{\link{Interpolation-class}} }
    \item{\code{rates}:}{Object of class \code{"vector"} see \code{\link{Interpolation-class}} }
    \item{\code{visible}:}{Object of class \code{"logical"} see \code{\link{Interpolation-class}} }
    \item{\code{persistent}:}{Object of class \code{"logical"} see \code{\link{Interpolation-class}} }
    \item{\code{geneticalDistances}:}{}
  }
}
\section{Extends}{
Class \code{"Interpolation"}, directly.
}
\section{Methods}{
  \describe{
    \item{createOrder}{\code{signature(object = "MMSlidingWindow")}: see \code{\link{Interpolation-class}} }
    \item{interpolate}{\code{signature(object = "MMSlidingWindow", map = "MareyMap")}: see \code{\link{Interpolation-class}} }
    \item{plotModel}{\code{signature(object = "MMSlidingWindow")}: see \code{\link{Interpolation-class}} }
    \item{plotRate}{\code{signature(object = "MMSlidingWindow")}: see \code{\link{Interpolation-class}} }
    \item{query}{\code{signature(object = "MMSlidingWindow", pos = "numeric")}: see \code{\link{Interpolation-class}} }
    \item{shift<-}{\code{signature(object = "MMSlidingWindow")}: updates the value of the parameter \code{shift} }
    \item{shift}{\code{signature(object = "MMSlidingWindow")}: returns the value of the parameter \code{shift} }
    \item{size<-}{\code{signature(object = "MMSlidingWindow")}: updates the value of the parameter \code{size} }
    \item{size}{\code{signature(object = "MMSlidingWindow")}: returns the value of the parameter \code{size} }
    \item{threshold<-}{\code{signature(object = "MMSlidingWindow")}: updates the value of the parameter \code{threshold} }
    \item{threshold}{\code{signature(object = "MMSlidingWindow")}: returns the value of the parameter \code{threshold} }
    \item{userParam}{\code{signature(object = "MMSlidingWindow")}: see \code{\link{Interpolation-class}} }
	 }
}
\author{Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clement Rezvoy}

\seealso{
	\code{\link{Interpolation-class}}
}
\examples{
data(Homo_sapiens_mean)
human7 <- Homo_sapiens_mean[["Chromosome 07"]]
itr1 <- MMSlidingWindow()
color(itr1) <- "red"
size(itr1) <- 5000000
shift(itr1) <- 1000000
human7 <- human7 + itr1
plot(human7)
}
\keyword{classes}
