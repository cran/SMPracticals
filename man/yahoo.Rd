\name{yahoo}
\alias{yahoo}
\docType{data}
\title{Yahoo Closing Prices}
\description{
Daily closing prices (US dollars) of \code{Yahoo.com} shares from 12 April 1996 to 
26 April 2000.
}
\usage{data(yahoo)}
\format{
An irregular time series with 1017 values.
}
\examples{
data(yahoo)
plot(yahoo,type="l",ylab="Yahoo closing prices")
plot(diff(100*log(yahoo)),type="l",ylab="Yahoo log returns (percent)")
}
\keyword{datasets}
