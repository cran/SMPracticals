\name{tide}
\alias{tide}
\docType{data}
\title{Annual Maximum Sea Levels}
\description{
Annual maximum sea levels (m) at seven locations near to or in
south-east England, between 1819--1986.  There are many missing
values.
}
\usage{data(tide)}
\format{
  A data frame with 168 observations on the following 8 variables.
  \describe{
    \item{year}{Year}
    \item{Yarmouth}{Annual maximum high tide at Yarmouth}
    \item{Lowestoft}{Annual maximum high tide at Lowestoft}
    \item{Harwich}{Annual maximum high tide at Harwich}
    \item{Walton}{Annual maximum high tide at Walton}
    \item{Holland}{Annual maximum high tide at a site in Holland}
    \item{Southend}{Annual maximum high tide at Southend}
    \item{Sheerness}{Annual maximum high tide at Sheerness}
  }
}
\source{
The data were kindly provided by Professor Jonathan Tawn of 
Lancaster University.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 281.
}
\examples{
data(tide)
plot(tide$year,tide$Yarmouth,type="l")
}
\keyword{datasets}
