\name{MapSet-class}
\docType{class}
\alias{MapSet}
\alias{MapSet-class}
\alias{-,MapSet,character-method}
\alias{[,MapSet-method}
\alias{[[<-,MapSet,ANY,ANY,MareyMap-method}
\alias{[[,MapSet-method}
\alias{$,MapSet-method}
\alias{+,MapSet,MareyMap-method}
\alias{coerce,MapSet,data.frame-method}
\alias{mapNames,MapSet-method}
\alias{setName<-,MapSet,character-method}
\alias{setName,MapSet-method}
\alias{length,MapSet-method}
\alias{textFile,MapSet,character-method}

\title{Class "MapSet"}
\description{This class is a collection of MareyMap for a given set. Not that useful on its own, it is used for internal organization inside a MapCollection}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("MapSet", ...)}. Or using the function \code{MapSet()}.
}
\section{Slots}{
	 \describe{
    \item{\code{maps}:}{Object of class \code{"list"} containing all the \code{MareyMap} of the set.}
    \item{\code{setName}:}{Object of class \code{"character"} containing the name of the set}
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "MapSet")}: returns a map from the list  }
    \item{[[<-}{\code{signature(x = "MapSet", i = "ANY", j = "ANY", value = "MareyMap")}: replaces a map in the list with a new one }
    \item{[[}{\code{signature(x = "MapSet")}: returns a map from the list.  }
    \item{$}{\code{signature(x = "MapSet")}: access a map by name in the list. }
    \item{+}{\code{signature(e1 = "MapSet", e2 = "MareyMap")}: adds a map to the collection. }
    \item{-}{\code{signature(e1 = "MapSet", e2 = "character")}: removes the map named e2 from the object e1.}
    \item{coerce}{\code{signature(from = "MapSet", to = "data.frame")}: converts the specieMaps object into a data.frame. }
    \item{mapNames}{\code{signature(object = "MapSet")}: returns a vector containing the names of all the maps. }
    \item{setName<-}{\code{signature(object = "MapSet", value = "character")}: changes the name of the set. Also changes the named of all MareyMap objects inside the list. }
    \item{setName}{\code{signature(object = "MapSet")}: returns the name of the set. }
    \item{length}{\code{signature(object = "MapCollection")}: returns the length of the set}
    \item{textFile}{\code{signature(object = "MapSet", file = "character")}: Writes the content of the MapSet object to file. }
	 }
}

\author{Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clement Rezvoy}

\seealso{
	\code{\link{MapCollection-class}}
	\code{\link{MareyMap-class}}
}
\examples{
data(Homo_sapiens_mean)
set <- Homo_sapiens_mean
setName(set) <- "Human"
set[["Chromosome 01"]]
}
\keyword{classes}
