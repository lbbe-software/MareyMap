\name{Interpolation-class}

\docType{class}

\alias{Interpolation}
\alias{Interpolation-class}

\alias{interpolate,Interpolation,MareyMap-method}
\alias{userParam,Interpolation-method}
\alias{query,Interpolation,integer-method}
\alias{query,Interpolation,numeric-method}
\alias{argList,Interpolation-method}
\alias{plot,MareyMap,Interpolation-method}
\alias{plotModel,Interpolation-method}
\alias{plotRate,Interpolation-method}
\alias{name<-,Interpolation-method}
\alias{name,Interpolation-method}
\alias{rates<-,Interpolation-method}
\alias{rates,Interpolation-method}
\alias{visible<-,Interpolation-method}
\alias{visible,Interpolation-method}
\alias{color<-,Interpolation-method}
\alias{color,Interpolation-method}
\alias{persistent<-,Interpolation-method}
\alias{persistent,Interpolation-method}


\title{Class "Interpolation"}

\description{This class serves as a base for interpolation methods. 
Although it is not defined as virtual for technical reason, it should not be used as is and is only useful after having been extended.
}

\section{Objects from the Class}{
  Objects from the class should not be created
}

\section{Slots}{
	 \describe{
    \item{\code{name}:}{Object of class \code{"character"} holding the name of the interpolation }
    \item{\code{color}:}{Object of class \code{"character"} holding the name or the code (\#RRGGBB) of the color of the interpolation on the plot }
    \item{\code{physicalPositions}:}{Object of class \code{"vector"} holding the valid physical position of the map on which the interpolation is calculated. This redundancy is necessary to cary out the plotting of the map. }
    \item{\code{rates}:}{Object of class \code{"vector"} holding the local recombination rate estimations at the location of each markers. }
    \item{\code{visible}:}{Object of class \code{"logical"}, whether or not the interpolation should be plotted }
    \item{\code{persistent}:}{Object of class \code{"logical"}, whether or not the interpolation should be saved when the map is saved to text file. }
  }
}

\section{Methods}{
  \describe{
    \item{argList}{\code{signature(object = "Interpolation")}: This function is used in the function createList (c.f. code examples).}
    \item{color<-}{\code{signature(object = "Interpolation")}: changes the color of the interpolation.}
    \item{color}{\code{signature(object = "Interpolation")}: returns the color of the interpolation.}
    \item{interpolate}{\code{signature(object = "Interpolation", map = "MareyMap")}: recalculate the interpolation.}
    \item{name<-}{\code{signature(object = "Interpolation")}: changes the name of the interpolation.}
    \item{name}{\code{signature(object = "Interpolation")}: returns the name of the interpolation.}
    \item{persistent<-}{\code{signature(object = "Interpolation")}: changes the persistence state of the interpolation.}
    \item{persistent}{\code{signature(object = "Interpolation")}: returns the persistence state of the interpolation.}
    \item{plotModel}{\code{signature(object = "Interpolation")}: this function plots only the model of the marey map calculated by the method.}
    \item{plotRate}{\code{signature(object = "Interpolation")}: this function plots the recombination rates calculated by the method.}
    \item{query}{\code{signature(object = "Interpolation", pos = "integer")}: returns the recombination rate calculated by this method on a given location on the sequence.}
    \item{rates<-}{\code{signature(object = "Interpolation")}: replaces the rates with a new vector.}
    \item{rates}{\code{signature(object = "Interpolation")}: returns the rates of the interpolation.}
    \item{userParam}{\code{signature(object = "Interpolation")}: function returning information about the parameters modifiable by the user (c.f. code example.)}
    \item{visible<-}{\code{signature(object = "Interpolation")}: changes the visibility of the interpolation.}
    \item{visible}{\code{signature(object = "Interpolation")}: returns the visibility of the interpolation}
	 }
}
\author{Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clement Rezvoy}

\seealso{
	\code{\link{InterpolationParam-class}}
	\code{\link{MareyMap-class}}
}

\keyword{classes}
