\name{lung.cancer}
\alias{lung.cancer}
\docType{data}
\title{Lung Cancer Deaths among UK Physicians}
\description{
  The data give the number of deaths due to lung cancer in British
male physicians, as a function of years of smoking and cigarette consumption.
}
\usage{data(lung.cancer)}
\format{
  A data frame with 63 observations on the following 4 variables.
  \describe{
    \item{years.smok}{a factor giving the number of years smoking}
    \item{cigarettes}{a factor giving cigarette consumption}
    \item{Time}{man-years at risk}
    \item{y}{number of deaths}
  }
}

\source{
Frome, E. L. (1983)  The analysis of rates using Poisson regression models.
\emph{Biometrics}, \bold{39}, 665--674.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.  Page 8.
}
\examples{
data(lung.cancer)
}
\keyword{datasets}
