\name{survival}
\alias{survival}
\docType{data}
\title{Survival of Rats After Radiation Doses}
\description{
     The `survival' data frame has 14 rows and 2 columns.

     The data measured the survival percentages of batches of rats who
     were given  varying doses of radiation.  At each of 6 doses there
     were two or three replications of the experiment.
}
\usage{data(survival)}
\format{
  A data frame with 14 observations on the following 2 variables.
  \describe{
    \item{dose}{The dose of radiation administered (rads).}
    \item{surv}{The survival rate of the batches expressed as a percentage.}
  }
}
\source{
     Efron, B. (1988) Computer-intensive methods in statistical
     regression. \emph{SIAM Review}, \bold{30}, 421-449.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 376.
}
\examples{
data(survival)
plot(survival$dose,survival$surv,log="y")  # note the obvious outlier
lm(log(surv)~dose,data=survival)
}
\keyword{datasets}


