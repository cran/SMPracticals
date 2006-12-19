\name{forbes}
\alias{forbes}
\docType{data}
\title{Atmospheric Pressure and Boiling Point in the Alps}
\description{
James Forbes measured the atmospheric pressure and boiling
point of water at 17 locations in the Alps.
}
\usage{data(forbes)}
\format{
  A data frame with 17 observations on the following 2 variables.
  \describe{
    \item{bp}{Boiling point (Fahrenheit)}
    \item{pres}{Pressure (inches of mercury)}
  }
}
\source{
Atkinson, A. C. (1985)  \emph{Plots, Transformations, and Regression}.  
Oxford University Press.
}
\examples{
data(forbes)
plot(forbes)
fit <- lm(bp~pres,data=forbes)
fit
plot(forbes$pres,resid(fit))  # model OK?
# try refitting with transformation
fit <- lm(log(bp)~log(pres),data=forbes)
}
\keyword{datasets}
