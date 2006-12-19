\name{pigeon}
\alias{pigeon}
\docType{data}
\title{Homing Pigeon Data}
\description{
Bearings (degrees) of 29 homing pigeons 30, 60, 90 after their
release, and on vanishing from sight.
}
\usage{data(pigeon)}
\format{
  A data frame with 29 observations on the following 4 variables.
  \describe{
    \item{s30}{Bearing after 30 seconds}
    \item{s60}{Bearing after 60 seconds}
    \item{s90}{Bearing after 90 seconds}
    \item{van}{Bearing on vanishing from sight}
  }
}

\source{
Artes, R. (1997) Extens\~{o}es da Teoria das Equa\c{c}\~{o}es de
  Estima\c{c}\~{a}o Generalizadas a Dados Circulares e Modelos de
  Dispers\~{a}o. Ph.D. thesis, University of S\~{a}o Paulo.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press. Page 173.
}
\examples{
data(pigeon)
plt <- function( ang, r=c(1,2,3,4), lty=1,... )
{
  si <- sin(2*pi*ang/360)
  co <- cos(2*pi*ang/360)
  points( r*si,r*co )
  lines( c(0,r*si),c(0,r*co),...)
}
par(pty="s")
plot(c(0,0),c(0,0),xlim=c(-4,4),ylim=c(-4,4),
    xlab="Easting",ylab="Northing")
for (i in 1:nrow(pigeon)) plt( pigeon[i,],col=i )

}
\keyword{datasets}
