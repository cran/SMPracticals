\name{beaver}
\alias{beaver}
\docType{data}
\title{Body Temperatures for a Female Beaver}
\description{
Data comprise 100 consecutive elemetric measurements of the body
temperature of a female beaver, at 10-minute intervals.
The animal remained in its lodge for the first 38 recordings, and then
went outside.
}
\usage{data(beaver)}
\format{
  A data frame with 100 observations on the following 4 variables.
  \describe{
    \item{day}{Day number}
    \item{time}{Time of day (hhmm)}
    \item{temp}{Body temperature ($^\circ$C)}
    \item{activ}{Indicator of activity outside the lodge}
  }
}
\source{
Reynolds, P. S. (1994) Time-series analyses of beaver body temperatures.
In \emph{Case Studies in Biometry}, eds N. Lange, L. Ryan,
L. Billard, D. R. Brillinger, L. Conquest and J. Greenhouse, pp. 211--228.
  New York: Wiley.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 266.
}
\examples{
data(beaver)
plot(beaver$temp,type="l",xlab="Time",ylab="Temperature")
}
\keyword{datasets}
