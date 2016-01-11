\name{MMLoess-class}
\docType{class}
\alias{MMLoess-methods}
\alias{MMLoess,missing-method}
\alias{MMLoess}
\alias{MMLoess-class}
\alias{createOrder,MMLoess-method}
\alias{degree<-}
\alias{degree<-,MMLoess-method}
\alias{degree}
\alias{degree,MMLoess-method}
\alias{interpolate,MMLoess,MareyMap-method}
\alias{plot,MareyMap,MMLoess-method}
\alias{plotModel,MMLoess-method}
\alias{plotRate,MMLoess-method}
\alias{query,MMLoess,numeric-method}
\alias{span<-}
\alias{span<-,MMLoess-method}
\alias{span}
\alias{span,MMLoess-method}
\alias{userParam,MMLoess-method}

\title{Class "MMLoess". Interpolation method plug-in for MareyMap }
\description{ This packages provides an interpolation method that estimates the recombination rates using \code{\link{loess}}. 
For more details on how this method works, see \code{\link{loess}}.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("MMLoess", ...)} or simply by calling \code{MMLoess()}.
}
\section{Slots}{
	 \describe{
    \item{\code{span}:}{Object of class \code{"numeric"}, parameters that controls the degree of smoothing. }
    \item{\code{degree}:}{Object of class \code{"integer"}, the degree of the polynomials to be used, up to 2. }
    \item{\code{model}:}{Object of class \code{"ANY"}  }
    \item{\code{name}:}{Object of class \code{"character"}, name of the interpolation. }
    \item{\code{color}:}{Object of class \code{"character"}, color of the interpolation on the map. }
    \item{\code{physicalPositions}:}{Object of class \code{"vector"}, physical positions of the markers of the map on which the interpolation is calculated. }
    \item{\code{rates}:}{Object of class \code{"vector"}, the local estimation of the recombination rate at the position of each markers. }
    \item{\code{visible}:}{Object of class \code{"logical"}, whether the interpolation should be plotted or not. }
    \item{\code{persistent}:}{Object of class \code{"logical"}, whether the interpolation should be saved along with the map in the text file }
  }
}
\section{Extends}{
Class \code{"Interpolation"}, directly.
}
\section{Methods}{
  \describe{
    \item{createOrder}{\code{signature(object = "MMLoess")}: see \code{\link{Interpolation-class}}.  }
    \item{degree<-}{\code{signature(object = "MMLoess")}: changes the degree of the polynomials. }
    \item{degree}{\code{signature(object = "MMLoess")}: returns the degree of the polynomials. }
    \item{interpolate}{\code{signature(object = "MMLoess", map = "MareyMap")}: see \code{\link{Interpolation-class}}. }
    \item{plotModel}{\code{signature(object = "MMLoess")}: see \code{\link{Interpolation-class}}. }
    \item{plotRate}{\code{signature(object = "MMLoess")}: see \code{\link{Interpolation-class}}. }
    \item{query}{\code{signature(object = "MMLoess", pos = "numeric")}: see \code{\link{Interpolation-class}}. }
    \item{span<-}{\code{signature(object = "MMLoess")}: changes the value of the span. }
    \item{span}{\code{signature(object = "MMLoess")}: returns the value of the span. }
    \item{userParam}{\code{signature(object = "MMLoess")}: see \code{\link{Interpolation-class}}. }
	 }
}

\author{Aurélie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clément Rezvoy}
\seealso{
	\code{\link{loess}}
	\code{\link{Interpolation-class}}
}
\examples{
data(Homo_sapiens_male)
chr7 <- Homo_sapiens_male[["Chromosome 07"]]
itr1 <- MMLoess()
color(itr1) <- "red"
span(itr1) <- 0.05
chr7 <- chr7 + itr1
}

\keyword{classes}
