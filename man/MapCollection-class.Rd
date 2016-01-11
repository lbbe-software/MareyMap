\name{MapCollection-class}
\docType{class}
\alias{MapCollection,missing-method}
\alias{MapCollection}
\alias{MapCollection-class}
\alias{[,MapCollection-method}
\alias{[[<-,MapCollection,ANY,ANY,MapSet-method}
\alias{[[<-,MapCollection,ANY,ANY,MareyMap-method}
\alias{[[,MapCollection-method}
\alias{$,MapCollection-method}
\alias{+,MapCollection,MareyMap-method}
\alias{+,MapCollection,MapSet-method}
\alias{+,MapCollection,MapCollection-method}
\alias{-,MapCollection,character-method}
\alias{coerce,MapCollection,data.frame-method}
\alias{setNames,MapCollection-method}
\alias{length,MapCollection-method}
\alias{textFile,MapCollection,character-method}

\title{Class "MapCollection"}
\description{This class holds several \code{\link{MareyMap-class}} objects organised in sets (using \code{\link{MapSet-class}} object).}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("MapCollection", ...)} or using the function MapCollection. You may as well use the default collection provided by the package (as \code{data()}). 
}
\section{Slots}{
	 \describe{
    \item{\code{sets}:}{Object of class \code{"list"} containing a \code{\link{MapSet-class}} for each set$* of the collection.}
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "MapCollection")}: ...}
    \item{[[<-}{\code{signature(x = "MapCollection", i = "ANY", j = "ANY", value = "MapSet")}: ...}
    \item{[[<-}{\code{signature(x = "MapCollection", i = "ANY", j = "ANY", value = "MareyMap")}: ...}
    \item{[[}{\code{signature(x = "MapCollection")}: obtain the MapSet corresponding to a set name}
    \item{$}{\code{signature(x = "MapCollection")}: subset by set name}
    \item{+}{\code{signature(e1 = "MapCollection", e2 = "MareyMap")}: adds a map to the collection}
    \item{+}{\code{signature(e1 = "MapCollection", e2 = "MapSet")}: adds a set t the collection}
    \item{-}{\code{signature(e1 = "MapCollection", e2 = "character")}: removes the map named e2 from the object e1.}
    \item{coerce}{\code{signature(from = "MapCollection", to = "data.frame")}: \code{--> as(object,"data.frame")}}
    \item{setNames}{\code{signature(object = "MapCollection")}: returns the list of the names of all the sets present in the collection}
    \item{length}{\code{signature(object = "MapCollection")}: returns the length of the collection}
    \item{textFile}{\code{signature(object = "MapCollection", file = "character")}: Writes the content of the collection to text file \code{text}.}
}}

\author{Aurélie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clément Rezvoy}

\seealso{
	\code{\link{MapSet-class}}
	\code{\link{MareyMap-class}}
}
\examples{
data(Homo_sapiens_mean)
map1 <- Homo_sapiens_mean[["Chromosome 01"]]
# do some useful changes to the map...
mapName(map1)<- "Chrom 1 (modified)"
}
\keyword{classes}
