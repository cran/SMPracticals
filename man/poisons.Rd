\name{poisons}
\alias{poisons}
\docType{data}
\title{Survival Times for Poisoned Animals}
\description{In an experiment to assess the usefulness of
treatments for poisons, 
48 animals were split randomly into 12 groups of 4.
Each group was administered one of three poisons,
and one of four treatments, giving a 
3x4 factorial design with 4 replicates.
}
\usage{data(poisons)}
\format{
  A data frame with 48 observations on the following 3 variables.
  \describe{
    \item{time}{Survival time (units of 10 hours)}
    \item{poison}{Factor giving poison}
    \item{treat}{Factor giving treatment}
  }
}
\source{
Box, G. E. P. and Cox, D. R. (1964) An analysis of transformations
 (with  Discussion).
\emph{Journal of the Royal Statistical Society series B}, \bold{26}, 211--246.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 391.
}
\examples{
data(poisons)
fit <- lm(time~poison+treat,data=poisons)
library(MASS)
boxcox(time~poison+treat,data=poisons)
}
\keyword{datasets}
