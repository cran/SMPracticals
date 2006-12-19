\name{blalock}
\alias{blalock}
\docType{data}
\title{Blalock--Taussig Shunt Data}
\description{
The Blalock--Taussig shunt is an operative procedure for infants with 
congenital cyanotic heart disease.  The data are the survival times
in months for shunts in 81 infants, divided into two age groups.
}
\usage{data(blalock)}
\format{
  A data frame with 81 observations on the following 3 variables.
  \describe{
    \item{group}{1 indicates infants aged over 1 month at time of the 
  operation.  2 indicates those aged 30 or fewer days at time of operation.}
    \item{months}{survival time in months}
    \item{cens}{censoring indicator: 1 indicates observed failure time}
  }
}
\source{
Oakes, D. (1991) Life-table analysis.
In \emph{Statistical Theory and Modelling: In Honour of Sir David
  Cox, FRS}, eds D. V. Hinkley, N. Reid and E. J. Snell, pp. 107--128. 
London: Chapman and Hall/CRC Press.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 192.}
\examples{
data(blalock)
library(survival)
plot(survfit(Surv(months,cens)~group,data=blalock),conf.int=TRUE,col=c(2,3))
}
\keyword{datasets}
