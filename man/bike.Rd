\name{bike}
\alias{bike}
\docType{data}
\title{Bicycling Times}
\description{
The times taken to cycle up a hill, as function of the bicycle
seat height, use of dynamo, and tyre pressure.  16 runs were made
using a factorial design.
}
\usage{data(bike)}
\format{
  A data frame with 16 observations on the following 11 variables.
  \describe{
    \item{day}{Day of run}
    \item{run}{Order of run}
    \item{seat}{Seat height: -1 indicates 26 inches, 1 indicates 30 inches}
    \item{dynamo}{Use of dynamo: -1 indicates not used}
    \item{tyre}{Tyre pressure: -1 indicates 40 psi, 1 indicates 55 psi}
    \item{dayf}{factor corresponding to day}
    \item{runf}{factor corresponding to run}
    \item{seatf}{factor corresponding to seat height}
    \item{dynamof}{factor corresponding to use of dynamo}
    \item{tyref}{factor corresponding to tyre pressure}
    \item{time}{Run time (seconds)}
  }
}
\source{
Box, G. E. P., Hunter, W. G. and Hunter, J. S. (1978) 
\emph{Statistics for Experimenters}.  New York: Wiley.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 357.
}
\examples{
data(bike)
anova(lm(time~dayf+runf+seat+dynamo+tyre,data=bike))
}
\keyword{datasets}
