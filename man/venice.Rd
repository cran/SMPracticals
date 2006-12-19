\name{venice}
\alias{venice}
\docType{data}
\title{Extreme Sea Levels at Venice}
\description{
The ten highest annual sea levels (cm) at Venice, from 1887--1981.
}
\usage{data(venice)}
\format{
  A data frame with 95 observations on the following 11 variables.
  \describe{
    \item{year}{1887--1981}
    \item{y1}{Annual maximum sea level (cm)}
    \item{y2}{Second largest sea level (cm)}
    \item{y3}{Third largest sea level (cm)}
    \item{y4}{Fourth largest sea level (cm)}
    \item{y5}{Fifth largest sea level (cm)}
    \item{y6}{Sixth largest sea level (cm)}
    \item{y7}{Seventh largest sea level (cm)}
    \item{y8}{Eighth largest sea level (cm)}
    \item{y9}{Ninth largest sea level (cm)}
    \item{y10}{Tenth largest sea level (cm)}
  }
}
\details{
 There are missing values in 1922 and 1935.  
}
\source{
Pirazzoli, P. A. (1982) Maree estreme a Venezia (periodo 1872--1981).
\emph{Acqua Aria}, \bold{10}, 1023--1039.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press.  Page 162.
}
\examples{
data(venice)
attach(venice)
y <- y1[year>1930]  # for analysis in Section 5 of Davison (2003)
x <- year[year>1930]-1956
plot(x+1956,y,ylab="Sea level (cm)",xlab="Year")
lm(y~x)
}
\keyword{datasets}
