\name{smoking}
\alias{smoking}
\docType{data}
\title{Survival and Smoking}
\description{
Twenty-year survival and smoking status for 1314 women from
Whickham, near Newcastle-upon-Tyne.
}
\usage{data(smoking)}
\format{
  A data frame with 14 observations on the following 4 variables.
  \describe{
    \item{age}{Age group (factor)}
    \item{smoker}{Smoking status (1=smoker, 0=non-smoker)}
    \item{alive}{Number alive after 20 years}
    \item{dead}{Number dead after 20 years}
  }
}
\source{
Appleton, D. R., French, J. M. and Vanderpump, M. P. J. (1996) 
Ignoring a covariate: An example of Simpson's paradox.
\emph{The American Statistician}, \bold{50}, 340--341.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 258.
}
\examples{
data(smoking)
summary(glm(cbind(dead,alive)~smoker,data=smoking,binomial))
# note sign change for smoker covariate, due to Simpson's paradox
summary(glm(cbind(dead,alive)~age+smoker,data=smoking,binomial))
}
\keyword{datasets}
