\name{pigs}
\alias{pigs}
\docType{data}
\title{Pig Diet Data}
\description{
Data on weight gains in 32 pigs, divided into eight groups
of four, and with 4 different diets allocated to the group
members.
}
\usage{data(pigs)}
\format{
  A data frame with 32 observations on the following 3 variables.
  \describe{
    \item{group}{a factor with 8 levels}
    \item{diet}{a factor with levels \code{I}--\code{IV}}
    \item{gain}{weight gain (units unknown)}
  }
}
\source{
Unpublished lecture notes, Imperial College, 
London
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 431.
}
\examples{
data(pigs)
anova(lm(gain~group+diet,data=pigs))
}
\keyword{datasets}
