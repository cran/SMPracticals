\name{motorette}
\alias{motorette}
\docType{data}
\title{Motorette Failure Data}
\description{
Times to failure of motorettes tested at different
temperatures.
}
\usage{data(motorette)}
\format{
  A data frame with 40 observations on the following 3 variables.
  \describe{
    \item{x}{Temperature in degrees Fahrenheit}
    \item{cens}{Censoring indicator}
    \item{y}{Failure time in hours}
  }
}
\source{Nelson, W. D. and Hahn, G. J. (1972)  Linear estimation of a 
regression relationship from censored data.  Part 1 --- simple methods 
and their application (with Discussion).  \emph{Technometrics}, \bold{14}, 247--276.
}

\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 615.}
\examples{
data(motorette)
library(survival)
motor.fit <- survreg(Surv(y,cens)~log(x),dist="weibull",data=motorette)
summary(motor.fit)
}
\keyword{datasets}
