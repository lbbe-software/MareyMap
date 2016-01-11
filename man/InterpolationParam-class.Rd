\name{InterpolationParam-class}
\docType{class}
\alias{InterpolationParam}
\alias{InterpolationParam-class}
\alias{paramDefault<-,InterpolationParam-method}
\alias{paramDefault,InterpolationParam-method}
\alias{paramDesc<-,InterpolationParam,character-method}
\alias{paramDesc,InterpolationParam-method}
\alias{paramFun<-,InterpolationParam,character-method}
\alias{paramFun,InterpolationParam-method}
\alias{paramMax<-,InterpolationParam-method}
\alias{paramMax,InterpolationParam-method}
\alias{paramMin<-,InterpolationParam-method}
\alias{paramMin,InterpolationParam-method}
\alias{paramName<-,InterpolationParam,character-method}
\alias{paramName,InterpolationParam-method}
\alias{paramType<-,InterpolationParam,character-method}
\alias{paramType,InterpolationParam-method}
\alias{paramValues<-,InterpolationParam,vector-method}
\alias{paramValues,InterpolationParam-method}

\title{Class "InterpolationParam"}
\description{Class holding informations about a parameter of an interpolation method. This class is used in the function \code{\link{userParam,Interpolation-method}}. These informations are used by the GUI to dynamically create the dialog to modify this parameter.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("InterpolationParam", ...)} or using the method\code{InterpolationParam()}. 
}
\section{Slots}{
	 \describe{
    \item{\code{paramName}:}{Object of class \code{"character"} holding the name of the parameter.}
    \item{\code{paramType}:}{Object of class \code{"character"} holding the type of the parameter, currently supported parameter types are: \code{logical}, \code{numeric}, \code{integer} and \code{color}.}
    \item{\code{paramDesc}:}{Object of class \code{"character"} giving a small description of the parameter's signification.}
    \item{\code{paramDefault}:}{Object of class \code{"ANY"}, default value for the parameter.}
    \item{\code{paramValues}:}{Object of class \code{"vector"} containing the set of valid values for the parameter (can be NULL).}
    \item{\code{paramMin}:}{Object of class \code{"ANY"}, a minimum value for the parameter, or minimal string length if the parameter is of type \code{character}}
    \item{\code{paramMax}:}{Object of class \code{"ANY"} , a minimum value for the parameter, or maximum string length if the parameter is of type \code{character}}
    \item{\code{paramFun}:}{Object of class \code{"character"}, the nae of function that is to be called to update the parameter's value. ex if paramFun is \code{foo} the parameter's value will be set using \code{foo(interpolation)<-new_value}}
  }
}
\section{Methods}{
  \describe{
    \item{paramDefault<-}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramDefault}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramDesc<-}{\code{signature(object = "InterpolationParam", value = "character")}: ...}
    \item{paramDesc}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramFun<-}{\code{signature(object = "InterpolationParam", value = "character")}: ...}
    \item{paramFun}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramMax<-}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramMax}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramMin<-}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramMin}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramName<-}{\code{signature(object = "InterpolationParam", value = "character")}: ...}
    \item{paramName}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramType<-}{\code{signature(object = "InterpolationParam", value = "character")}: ...}
    \item{paramType}{\code{signature(object = "InterpolationParam")}: ...}
    \item{paramValues<-}{\code{signature(object = "InterpolationParam", value = "vector")}: ...}
    \item{paramValues}{\code{signature(object = "InterpolationParam")}: ...}
	 }
}
\author{Aurélie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Clément Rezvoy}
\seealso{
	\code{\link{Interpolation-class}}
}
\examples{
  nam <- InterpolationParam()
	paramName(nam) <- "name"
	paramDesc(nam) <- "The name of the interpolation.\n"
	paramType(nam) <- "character"
	paramDefault(nam) <- "default name"
	paramMin(nam) <- 1
	paramMax(nam) <- NULL	
	paramFun(nam) <- "name"

	vis <- InterpolationParam()
	paramName(vis) <- "visible"
	paramDesc(vis) <- "Whether the line is visible on the plot or not"
	paramType(vis) <- "logical"
	paramDefault(vis) <- TRUE
	paramFun(vis) <- "visible"
	
	sav <- InterpolationParam()
	paramName(sav) <- "persistent"
	paramDesc(sav) <- "Indicate if the interpolation is to be be kept \n\
  when the map is saved to text file"
	paramType(sav) <- "logical"
	paramDefault(sav) <- TRUE
	paramFun(sav) <- "persistent"
	
	col <- InterpolationParam()
	paramName(col) <- "line color"
	paramDesc(col) <- "color of the line"
	paramType(col) <- "color"
	paramDefault(col) <- "#000000"
	paramFun(col) <- "color"
}
\keyword{classes}
