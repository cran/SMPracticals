\name{rat.growth}
\alias{rat.growth}
\docType{data}
\title{Rat Growth Data}
\description{
Data on the weights of 30 rats each week for 5 weeks.
}
\usage{data(rat.growth)}
\format{
  A data frame with 150 observations on the following 3 variables.
  \describe{
    \item{rat}{a factor with levels 1-30}
    \item{week}{takes values 0-4}
    \item{y}{rat weight (units unspecified)}
  }
}

\source{
Gelfand, A. E., Hills, S. E., Racine-Poon, A. and Smith, A. F. M. (1990)
Illustration of Bayesian inference in normal data models using Gibbs sampling.
\emph{Journal of the American Statistical Association}, \bold{85}, 972--985.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 460.
}
\examples{
data(rat.growth)
library(nlme)
rat.fit <- groupedData( y~poly(week,2) | rat,
                   data = rat.growth,
                   labels = list( x = "Week",
                     y = "Weight" ),
                   units = list( x = "", y = "(?)") )

summary(lme(rat.fit))
}
\keyword{datasets}
