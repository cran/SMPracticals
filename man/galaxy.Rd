\name{galaxy}
\alias{galaxy}
\docType{data}
\title{Galaxy Velocity Data}
\description{
Velocities (km/second) of 82 galaxies in a survey of the Corona
Borealis region.
}
\usage{data(galaxy)}
\format{
  The format is:
 num [1:82] 9.17 9.35 9.48 9.56 9.78 ...
}
\source{
Roeder, K. (1990) Density estimation with confidence sets exemplified by
  superclusters and voids in galaxies.
\emph{Journal of the American Statistical Association}, \bold{85}, 617--624.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 214.
}
\examples{
data(galaxy)
plot(density(galaxy))
rug(galaxy)
}
\keyword{datasets}
