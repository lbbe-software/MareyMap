\name{Homo_sapiens}

\alias{Homo_sapiens_female}
\alias{Homo_sapiens_male}
\alias{Homo_sapiens_mean}

\docType{data}

\title{The marey map for the species Homo sapiens (female, male and mean of the two)}

\description{
  A marey map is an interpolation between genetical and physical maps of a mapomosome. This data file contains marey map for the species Homo sapiens.
  This map is held into an object of class MapSet.
}

\usage{data(Homo_sapiens_mean)}

\format{
  Homo sapiens (female, male and mean) contains an object of the class \code{\link{MapSet-class}}. The maps inside this object (objects of the class \code{\link{MareyMap-class}}) can be accessed using the operator "[[" (see example)
  Each of the 3 sets (female, male and mean) contains 22 maps called "Chromosome 01", ... , "Chromosome 22".
}

\source{
  Rutgers Combined Linkage-Physical Maps, version 2.0 (Build 35). Xiangyang Komg and Tara Matise 12/08/2004
}

\author{Aurélie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clément Rezvoy}

\examples{
data(Homo_sapiens_female)
map <- Homo_sapiens_female[["Chromosome 01"]]
plot(map)
names(Homo_sapiens_female@maps)
}

\keyword{datasets}
