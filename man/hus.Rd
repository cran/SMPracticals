\name{hus}
\alias{hus}
\docType{data}
\title{Haemolytic Uraemic Syndrome}
\description{
  Annual numbers of cases of `diarrhoea-associated haemolytic
uraemic syndrome' treated in clinics in Birmingham and Newcastle
from 1970--1989.
}
\usage{data(hus)}
\format{
  A data frame with 20 observations on the following 3 variables.
  \describe{
    \item{year}{a numeric vector}
    \item{birmingham}{Number of cases treated in Birmingham}
    \item{newcastle}{Number of cases treated in Newcastle}
  }
}

\source{
Henderson, R. and Matthews, J. N. S. (1993) An investigation of 
changepoints in the annual number of cases of haemolytic 
uraemic syndrome.  \emph{Applied Statistics}, \bold{42}, 461--471.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 142.
}
\examples{
data(hus)
plot(hus$year,hus$birmingham,ylab="Annual number of cases",type="s")
}
\keyword{datasets}
