\name{mice}
\alias{mice}
\docType{data}
\title{Mice Deaths from Radiation}
\description{
 RFM male mice were exposed to 300 rads of x-radiation at 5--6
weeks of age.  The causes of death were thymic lymphoma, reticulum
cell sarcoma, and other.  Some of the mice were kept in a 
conventional environment, and the others in a germ-free environment.
}
\usage{data(mice)}
\format{
  A data frame with 177 observations on the following 4 variables.
  \describe{
    \item{type}{Environment type (factor)}
    \item{cause}{Cause of death}
    \item{status}{Censoring indicator, with 1 indicating death}
    \item{y}{Age at death (weeks)}
  }
}
\source{
Hoel, D. G. and Walburg, H. E. (1972) Statistical analysis of survival
  experiments.
\emph{Journal of the National Cancer Institute}, \bold{49}, 361--372.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 200.
}
\examples{
data(mice)
library(survival)
fit <- survfit(Surv(y,status)~cause,data=mice[1:95,]) # first group
plot(fit,lty=c(3,2,1))
}
\keyword{datasets}
