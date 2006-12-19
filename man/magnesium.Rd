\name{magnesium}
\alias{magnesium}
\docType{data}
\title{Magnesium Treatment for Heart Attack Patients}
\description{
Data from 11 clinical trials to compare magnesium treatment for
heart attacks with control.
}
\usage{data(magnesium)}
\format{
  A data frame with 22 observations on the following 4 variables.
  \describe{
    \item{trial}{a factor with levels \code{1}--\code{11}}
    \item{group}{Treatment indicator (factor)}
    \item{m}{Total patients in group}
    \item{r}{Number of deaths in group}
  }
}
\source{
Copas, J. B. (1999) What works?: Selectivity models and meta-analysis.
\emph{Journal of the Royal Statistical Society series A}, \bold{162}, 96--109.
}
\references{
Davison, A. C. (2003)  Statistical Models.  Cambridge University Press.
Page 208.}
\examples{
data(magnesium)
fit <- glm(cbind(r,m-r)~trial+group,binomial,data=magnesium[1:20,])
anova(fit,test="Chi")
summary(fit)
}
\keyword{datasets}
