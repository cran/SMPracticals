\name{ftse}
\alias{ftse}
\docType{data}
\title{FTSE Daily Returns}
\description{
Daily returns (%) of the Financial Times Stock Exchange
index, 1991--1998.
}
\usage{data(ftse)}
\format{
  A time series.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press. Page 266.
}
\examples{
data(ftse)
plot(ftse,type="l",xlab="Time",ylab="Percent return")
plot(exp(cumsum(ftse/100)),type="l",xlab="Time",ylab="Relative closing value")
}
\keyword{datasets}
