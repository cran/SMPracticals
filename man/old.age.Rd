\name{old.age}
\alias{old.age}
\docType{data}
\title{Estimates of Hazard Function for Old Age}
\description{
Historical estimates of the force of mortality (hazard function)
averaged for 5-year age groups.  The data are taken from various
historical sources.
}
\usage{data(old.age)}
\format{
  A data frame with 14 observations on the following 8 variables.
  \describe{
    \item{age}{Age group (5-year intervals)}
    \item{hungary}{Data estimated from Hungarian graveyards, 900--1100}
    \item{eng.1640}{Data estimated from England, 1640--1689}
    \item{breslau}{Data estimated from Breslau, 1687--1691}
    \item{engm.1841}{Data from England and Wales, males, 1841}
    \item{engf.1841}{Data from England and Wales, females, 1841}
    \item{engm.1980}{Data from England and Wales, males, 1980--1982}
    \item{engf.1980}{Data from England and Wales, females, 1980--1982}
  }
}
\details{
The estimated numbers of people on which the data in the columns are
based are 2300, 3133, 2675, 71,000, 74,000, 834,0000, and 828,000.
}
\source{
Thatcher, A. R. (1999) The long-term pattern of adult mortality and the
  highest attained age (with Discussion).
\emph{Journal of the Royal Statistical Society series A}, \bold{16}, 5--43.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 194.
}
\examples{
data(old.age)
}
\keyword{datasets}
