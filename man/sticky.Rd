\name{sticky}
\alias{sticky}
\docType{data}
\title{Stickiness of blood data}
\description{
Data on stickiness of blood for six subjects
}
\usage{data(sticky)}
\format{
  A data frame with 42 observations on the following 2 variables.
  \describe{
    \item{subject}{factor with levels 1--6}
    \item{y}{measurement of a property related to stickiness of blood}
  }
}
\source{
Unpublished lecture notes, Imperial College London.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 450.}
\examples{
data(sticky)
anova(lm(y~subject,data=sticky))
}
\keyword{datasets}
