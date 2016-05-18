[![Travis-CI Build Status](https://travis-ci.org/aursiber/MareyMap.svg?branch=master)](https://travis-ci.org/aursiber/MareyMap)
[![AppVeyor Build status](https://ci.appveyor.com/api/projects/status/40lihci6k3r2j224/branch/master?svg=true)](https://ci.appveyor.com/project/aursiber/mareymap/branch/master)


# MareyMap

`MareyMap` is an R package to estimate local recombination rates along the genome using marey maps.

`MareyMap` relies on comparing the genetic and the physical maps of a given chromosome to estimate local recombination rates (given by the slope of the curve describing the relationship between both variables), a graphical method called the Marey map method introduced by A. Chakravarti in 1991. `MareyMap` accepts Marey map data as input (genetic and physical positions of markers for a set of chromosomes of a species) and will return local recombination rate estimates.

`MareyMap` has many features and possible options (detailled in the present user guideline document) including :

  * taking Marey map data from any species, including some Marey map data for a few species provided with the package;
  * estimating local recombination rates using different interpolation methods;
  * providing in an automatic way local recombination rates for any given gene (or set of genes) in the genome.
  
All functionalities of `MareyMap` are introduced on the [vignette](https://cran.r-project.org/web/packages/MareyMap/vignettes/vignette.pdf) of the package.



### Installing `MareyMap`

To install the development version from GitHub:

1. Install the release version of `devtools` from CRAN with `install.packages("devtools")`.

2. Make sure you have a working development environment.
    * **Windows**: Install [Rtools](http://cran.r-project.org/bin/windows/Rtools/).
    * **Mac**: Install Xcode from the Mac App Store.
    * **Linux**: Install a compiler and various development libraries (details vary across different flavors of Linux).
    
3. Then:
```r
library(devtools)
install_github("aursiber/MareyMap")
```

The stable version can be installed from CRAN using:
```r
install.packages("MareyMap")
```

Once installed, the package can be loaded using:
```r
library("MareyMap")
```



### The web application of `MareyMap`

A web application (a `Shiny` app) is available to use the functionalities of the `MareyMap` package in an interactive way.
`MareyMap Online` offers a simpler version of the R package MareyMap. 

The `MareyMap Online Shiny app` can be found at:
http://lbbe-shiny.univ-lyon1.fr/MareyMapOnline/




### Reference
Rezvoy C, Charif D, Guéguen L and Marais G (2007). *MareyMap: an R-based tool with graphical interface for estimating recombination rates.* Bioinformatics. 23(16):2188-2189. doi: 10.1093/bioinformatics/btm315 

