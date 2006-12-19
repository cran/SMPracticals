\name{arithmetic}
\alias{arithmetic}
\docType{data}
\title{Teaching Arithmetic Data}
\description{
45 school pupils were divided at random into 5 groups of size 9.
Groups A and B were taught arithmetic in separate classes by the
usual method.  Groups C, D, and E were taught together for several
days.  On each day group C were publically praised, group D were 
publically reproved, and group E were ignored.  The responses are
from a standard test taken by all pupils at the end of the period.
}
\usage{data(arithmetic)}
\format{
  A data frame with 45 observations on the following 2 variables.
  \describe{
    \item{group}{a factor with levels \code{A} \code{B} \code{C} \code{D} \code{E}}
    \item{y}{a numeric vector}
  }
}
\source{
Unpublished lecture notes, Imperial College, London.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 427.
}
\examples{
data(arithmetic)
attach(arithmetic)
plot(y~group)
anova(lm(y~group,data=arithmetic))
summary(lm(y~group,data=arithmetic))  # two different parametrisations
summary(lm(y~group-1,data=arithmetic)) # for ANOVA
}
\keyword{datasets}
