\name{Arabidopsis_thaliana}
\alias{Arabidopsis_thaliana}

\docType{data}

\title{The marey map for the species Arabidopsis thaliana}

\description{
  A marey map is an interpolation between genetical and physical maps of a mapomosome. This data file contains marey map for the species Arabidopsis thaliana.
  This map is held into an object of class MapSet.
}

\usage{data(Arabidopsis_thaliana)}

\format{
  Arabidopsis_thaliana contains an object of the class \code{\link{MapSet-class}}. The maps inside this object (objects of the class \code{\link{MareyMap-class}}) can be accessed using the operator "[[" (see example)
  This set contains 5 maps called "Chromosome 1", ..., "Chromosome 5".
}

\source{
  The physical positions were also recorded for those genetic markers that have both been mapped to the Recombinant Inbred (RI) recombination map 
  (see \url{https://arabidopsis.info/}), and have been precisely physically mapped on the basis of flanking sequence, 
  using the marker position information from TAIR. (release 1). 
  Wright SI, Agrawal N, Bureau TE. Effects of recombination rate and gene density on transposable element distributions in Arabidopsis thaliana.Genome Res. 2003 Aug;13(8):1897-903.
}

\author{Aurélie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clément Rezvoy}

\examples{
#data(Arabidopsis_thaliana)
#map <- Arabidopsis_thaliana[["Chromosome 1"]]
#plot(map)
#names(Arabidopsis_thaliana@maps)
}

\keyword{datasets}
