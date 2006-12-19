\name{cement}
\alias{cement}
\docType{data}
\title{Hald Cement Data}
\description{
Heat evolved in setting of cement, as a function of its chemical
composition.
}
\usage{data(cement)}
\format{
  A data frame with 13 observations on the following 5 variables.
  \describe{
    \item{x1}{percentage weight in clinkers of 3CaO.Al2O3}
    \item{x2}{percentage weight in clinkers of 3CaO.SiO2}
    \item{x3}{percentage weight in clinkers of 4CaO.Al2O3.Fe2O3}
    \item{x4}{percentage weight in clinkers of 2CaO.SiO2}
    \item{y}{heat evolved (calories/gram)}
  }
}
\source{
Woods, H., Steinour, H. H. and Starke, H. R. (1932) 
Effect of composition of Portland cement on heat evolved during hardening.
\emph{Industrial Engineering and Chemistry}, \bold{24}, 1207--1214.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 355.}
\examples{
data(cement)
lm(y~x1+x2+x3+x4,data=cement)
}
\keyword{datasets}
