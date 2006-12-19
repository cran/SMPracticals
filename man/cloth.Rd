\name{cloth}
\alias{cloth}
\docType{data}
\title{Numbers of Flaws in Lengths of Cloth}
\description{
The data comprise lengths of cloth samples and the numbers of flaws found in
them.
}
\usage{data(cloth)}
\format{
  A data frame with 32 observations on the following 2 variables.
  \describe{
    \item{x}{The length of the roll of cloth.}
    \item{y}{The number of flaws found in the roll.}
  }
}
\source{
 Bissell, A. F. (1972) A negative binomial model with varying element size. 
\emph{Biometrika}, \bold{59}, 435--441.}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 515.
}
\examples{
data(cloth)
attach(cloth)
plot(x,y)
# Comparison of Poisson and quasilikelihood fits
summary(glm(y~x-1,family=poisson(identity)))
summary(glm(y~x-1,family=quasipoisson(identity)))
}
\keyword{datasets}
