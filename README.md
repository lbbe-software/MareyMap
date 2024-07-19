[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version-ago/MareyMap)](http://cran.r-project.org/package=MareyMap)
[![CRAN Downloads](https://cranlogs.r-pkg.org/badges/MareyMap)](https://cran.r-project.org/package=MareyMap)
[![R-CMD-check](https://github.com/lbbe-software/MareyMap/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/lbbe-software/MareyMap/workflows/R-CMD-check.yaml)

**Please note! Since January 2024, this repository has belonged to the lbbe-software organization.** 
To avoid confusion, we strongly recommend updating any existing local clones to point to the new repository URL. You can do this by using git remote on the command line:

`git remote set-url origin git@github.com:lbbe-software/MareyMap.git`

or

`git remote set-url origin https://github.com/lbbe-software/MareyMap.git`

---------------------------

`MareyMap` is an R package to estimate local recombination rates along the genome using Marey maps.

`MareyMap` relies on comparing the genetic and the physical maps of a given chromosome to estimate local recombination rates (given by the slope of the curve describing the relationship between both variables), a graphical method called the Marey map method introduced by A. Chakravarti in 1991. `MareyMap` accepts Marey map data as input (genetic and physical positions of markers for a set of chromosomes of a species) and will return local recombination rate estimates.

`MareyMap` has many features and possible options (detailled in the present user guideline document) including :

  * taking Marey map data from any species, including some Marey map data for a few species provided with the package;
  * estimating local recombination rates using different interpolation methods;
  * providing in an automatic way local recombination rates for any given gene (or set of genes) in the genome.
  
All functionalities of `MareyMap` are introduced on the [vignette](https://cran.r-project.org/web/packages/MareyMap/vignettes/vignette.pdf) of the package.



# The package

The stable version of `MareyMap` can be installed from CRAN using:
```r
install.packages("MareyMap")
```

The development version of MareyMap can be installed from GitHub (`remotes` needed):
```r
if (!requireNamespace("remotes", quietly = TRUE))
   install.packages("remotes")
   
remotes::install_github("lbbe-software/MareyMap")
```

Finally load the package in your current R session with the following R command:
```r
library(MareyMap)
```



# The shiny app

A web application (a `Shiny` app) is available to use the functionalities of the `MareyMap` package in an interactive way.
`MareyMap Online` offers a simpler version of the R package MareyMap. 

The `MareyMap Online Shiny app` can be found at:
https://lbbe-shiny.univ-lyon1.fr/MareyMapOnline/




# References
<p style="color:green;">Rezvoy C, Charif D, Guéguen L, Marais GAB. (2007) <i>MareyMap: an R-based tool with graphical interface for estimating recombination rates.</i> Bioinformatics. 23(16): 2188-9. <a href="https://doi.org/10.1093/bioinformatics/btm315" style="text-decoration:underline; color:green;" target="_blank">https://doi.org/10.1093/bioinformatics/btm315</a></p>

<p style="color:green;">A. Siberchicot, A. Bessy, L. Guéguen, G. Marais (2017). <i>MareyMap Online: A User-Friendly Web Application and Database Service for Estimating Recombination Rates Using Physical and Genetic Maps</i>. Genome Biology and Evolution. 9(10): 2506-2509. <a href="https://doi.org/10.1093/gbe/evx178" style="text-decoration:underline; color:green;" target="_blank">https://doi.org/10.1093/gbe/evx178</a></p>


