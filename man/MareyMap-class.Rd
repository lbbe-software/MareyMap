\name{MareyMap-class}
\docType{class}
\alias{MareyMap}
\alias{MareyMap,data.frame,ANY,ANY,ANY-method}
\alias{MareyMap-class}
\alias{[,MareyMap-method}
\alias{[[<-,MareyMap-method}
\alias{[[<-,MareyMap,ANY,ANY,ANY-method}
\alias{[[,MareyMap-method}
\alias{+,MareyMap,Interpolation-method}
\alias{coerce,MareyMap,data.frame-method}
\alias{coerce,data.frame,MareyMap-method}
\alias{coerce,MareyMap,NULL-method}
\alias{geneticDistances<-,MareyMap-method}
\alias{geneticDistances,MareyMap-method}
\alias{interpolation<-,MareyMap,character,Interpolation-method}
\alias{interpolation,MareyMap,character-method}
\alias{interpolations<-,MareyMap-method}
\alias{interpolations,MareyMap-method}
\alias{mapName<-,MareyMap-method}
\alias{mapName,MareyMap-method}
\alias{markerNames<-,MareyMap-method}
\alias{markerNames,MareyMap-method}
\alias{markerValidity<-,MareyMap-method}
\alias{markerValidity,MareyMap-method}
\alias{physicalPositions<-,MareyMap-method}
\alias{physicalPositions,MareyMap-method}
\alias{plot,MareyMap,missing-method}
\alias{plotMarkers,MareyMap-method}
\alias{plotModels,MareyMap-method}
\alias{plotRates,MareyMap-method}
\alias{query,MareyMap,numeric-method}
\alias{removeMarker,MareyMap,integer-method}
\alias{setName<-,MareyMap,ANY-method}
\alias{setName,MareyMap-method}
\alias{setName,MareyMap-method}
\alias{textFile,MareyMap,character-method}
\alias{validPositions,MareyMap-method}

\title{Class "MareyMap" }
\description{ The class holds the physical and genetic positions of a marey map}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("MareyMap", ...)} or using the function \code{MareyMap()}.
However, most of the time you can more conveniently use already constructed objects contained in (c.f. code examples)
}
\section{Slots}{
	 \describe{
    \item{\code{setName}:}{Object of class \code{"character"}  }
    \item{\code{mapName}:}{Object of class \code{"character"} containing the name of the map, usually the name of the mapomosome it is mapping. }
    \item{\code{markerNames}:}{Object of class \code{"vector"} containing the names of the markers of the map. }
    \item{\code{physicalPositions}:}{Object of class \code{"vector"} containing the physical positions of the markers. }
    \item{\code{geneticDistances}:}{Object of class \code{"vector"} containing the positions of the markers on the genetic map. }
    \item{\code{markerValidity}:}{Object of class \code{"vector"} indicating for each marker if it is to be taken into account for interpolations. }
    \item{\code{interpolations}:}{Object of class \code{"list"} containing the \code{interpolation}s calculated on the map. }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "MareyMap")}: returns a vector combining marker name, physical position, genetic distance and marker validity for the i th marker }
    \item{[[<-}{\code{signature(x = "MareyMap")}: replaces marker name, physical position, genetic distance and marker validity for the i th marker. value must be a vector containing 4 column named "name", "phys", "gen" and "valid". }
    \item{[[<-}{\code{signature(x = "MareyMap", i = "ANY", j = "ANY", value = "ANY")}: replaces marker name, physical position, genetic distance and marker validity for the i th marker. value must be a vector containing 4 column named "name", "phys", "gen" and "valid". }
    \item{[[}{\code{signature(x = "MareyMap")}: returns a vector combining marker name, physical position, genetic distance and marker validity for the i th marker }
    \item{+}{\code{signature(e1 = "MareyMap", e2 = "Interpolation")}: adds an interpolation to the map }
    \item{coerce}{\code{signature(from = "MareyMap", to = "data.frame")}: convert the Marey map into a data.frame. }
    \item{coerce}{\code{signature(from = "MareyMap", to = "NULL")}: returns NULL }
    \item{coerce}{\code{signature(from = "data.frame", to = "MareyMap")}: create a MareyMap from a data.frame. }
    \item{geneticDistances<-}{\code{signature(object = "MareyMap")}: replace the genetic distance with a new vector. }
    \item{geneticDistances}{\code{signature(object = "MareyMap")}: returns the genetic distances of the markers }
    \item{interpolation<-}{\code{signature(object = "MareyMap", inter_name = "character", value = "Interpolation")}:  replaces the interpolation which name matches \code{inter_name} with the content of the parameter \code{value}.}
    \item{interpolation}{\code{signature(object = "MareyMap", inter_name = "character")}: returns the interpolation which name matches \code{inter_name}. }
    \item{interpolations<-}{\code{signature(object = "MareyMap")}: replace the list of interpolation with a new list. }
    \item{interpolations}{\code{signature(object = "MareyMap")}: returns the list of interpolations. }
    \item{mapName<-}{\code{signature(object = "MareyMap")}: replaces the name of the map }
    \item{mapName}{\code{signature(object = "MareyMap")}: returns the name of the map }
    \item{markerNames<-}{\code{signature(object = "MareyMap")}: replaces the marker names with a new vector of  names}
    \item{markerNames}{\code{signature(object = "MareyMap")}: returns a vector containing the names of the markers}
    \item{markerValidity<-}{\code{signature(object = "MareyMap")}: replaces the marker validity with a new vector}
    \item{markerValidity}{\code{signature(object = "MareyMap")}: returns a vector containing information about the validity of the markers}
    \item{physicalPositions<-}{\code{signature(object = "MareyMap")}: replaces the vector of physical positions with a new vector}
    \item{physicalPositions}{\code{signature(object = "MareyMap")}: returns a vector containing the physical positions of the markers}
    \item{plot}{\code{signature(x = "MareyMap", y = "missing")}: plots the map as well as the interpolations (if any)}
    \item{plotMarkers}{\code{signature(object = "MareyMap")}: plots only the markers of the map, without plotting the interpolations}
    \item{plotModels}{\code{signature(object = "MareyMap")}: plot only the models of the interpolations}
    \item{plotRates}{\code{signature(object = "MareyMap")}: plots only the recombination rates}
    \item{query}{\code{signature(object = "MareyMap", pos = "numeric")}: returns the value of the local  recombination rate at physical position \code{pos} as estimated by the interpolations defined on the map. Returns a list of integers (or NAs). each individual result may be accessed via result[[interpolation\_name]]}
    \item{removeMarker}{\code{signature(object = "MareyMap", value = "integer")}: remove the marker number \code{value}.}
    \item{setName<-}{\code{signature(object = "MareyMap", value = "ANY")}: replaces the name of the set with a new \code{character}.}
    \item{setName}{\code{signature(object = "MareyMap")}: returns the name of the set.}
    \item{validPositions}{\code{signature(object = "MareyMap")}:}
    \item{textFile}{\code{signature(object = "MareyMap", file = "character")}: Writes the map to text file.}
	 }
}

\author{Aurélie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clément Rezvoy}

\section{Warning}{vectors \code{markerNames}, \code{physicalPositions}, \code{geneticDistances} and \code{markerValidity} must always retain the same length.}

\seealso{
	\code{\link{MapCollection-class}}
	\code{\link{MapSet-class}}
}
\examples{
data(Homo_sapiens_male)
chr7 <- Homo_sapiens_male[["Chromosome 07"]]
chr7 <- chr7 + MMLoess()
par(mfrow = c(2, 1))
plotMarkers(chr7)
}
\keyword{classes}
