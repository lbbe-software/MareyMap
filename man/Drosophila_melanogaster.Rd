\name{Drosophila_melanogaster}
\alias{Drosophila_melanogaster}

\docType{data}

\title{The marey map for the species Drosophila melanogaster}

\description{
  A marey map is an interpolation between genetical and physical maps of a mapomosome. This data file contains marey map for the species Drosophila melanogaster.
  This map is held into an object of class MapSet.
}

\usage{data(Drosophila_melanogaster)}

\format{
  Drosophila_melanogaster contains an object of the class \code{\link{MapSet-class}}. The maps inside this object (objects of the class \code{\link{MareyMap-class}}) can be accessed using the operator "[[" (see example)
  This set contains 6 maps called "2L", "2R", "3L", "3R", "4", "X".
}

\source{
  2nd release of D. mel genome, v 01/1998 Flybase. Marais G, Piganeau G.Hill-Robertson interference is a minor determinant of variations in codon bias across Drosophila melanogaster and Caenorhabditis elegans genomes. Mol Biol Evol. 2002 Sep;19(9):1399-406.
}

\author{Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clement Rezvoy}

\examples{
data(Drosophila_melanogaster)
map <- Drosophila_melanogaster[["2L"]]
plot(map)
names(Drosophila_melanogaster@maps)
}

\keyword{datasets}
