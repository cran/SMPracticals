\name{shuttle}
\alias{shuttle}
\docType{data}
\title{O-ring Thermal Distress Data for Space Shuttle}
\description{
  Data on the number of rubber O-rings showing thermal distress for
23 flights of the space shuttle, with the ambient temperature and
pressure at which tests on the putty next to the rings were performed.
}
\usage{data(shuttle)}
\format{
  A data frame with 23 observations on the following 4 variables.
  \describe{
    \item{m}{Number of rings}
    \item{r}{Number of rings showing thermal distress}
    \item{temperature}{ambient temperature (degrees Fahrenheit)}
    \item{pressure}{pressure (pounds per square inch)}
  }
}
\source{
Dalal, S. R., Fowlkes, E. B. and Hoadley, B. (1989)  Risk analysis of the space shuttle:
Pre-Challenger prediction of failure.  \emph{Journal of the American Statistical
Association}, \bold{84}, 945--957.}
\references{
 Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.  Page 7.
}
\examples{
data(shuttle)
attach(shuttle)
plot(temperature, r/m,ylab="Proportion of failures")
}
\keyword{datasets}
