\name{field.concrete}
\alias{field.concrete}
\docType{data}
\title{Field Concrete Mixture Data}
\description{
Data from a 4x4 Latin square experiment on the efficiency of
a field concrete mixer.
}
\usage{data(field.concrete)}
\format{
  A data frame with 16 observations on the following 4 variables.
  \describe{
    \item{efficiency}{a numeric vector}
    \item{speed}{a factor with levels 4, 8, 12, 16 mph.}
    \item{run}{order in which runs were performed each day}
    \item{day}{day on which runs were performed}
  }
}
\source{
Unpublished lecture notes, Imperial College, London.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 435.
}
\examples{
data(field.concrete)
fit <- lm(efficiency~run+day+speed,data=field.concrete)
anova(fit)
summary(fit)
fit <- lm(efficiency~run+day+poly(as.numeric(speed),3),data=field.concrete)
summary(fit)
}
\keyword{datasets}
