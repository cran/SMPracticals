\name{eyes}
\alias{eyes}
\docType{data}
\title{Visual Impairment Data}
\description{
Joint distribution of visual impairment on both eyes, by race and age.
}
\usage{data(eyes)}
\format{
  A data frame with 32 observations on the following 6 variables.
  \describe{
    \item{L}{Impairment (+) or not (-) for left eye.}
    \item{R}{Impairment (+) or not (-) for right eye.}
    \item{age}{a factor with levels \code{40-50} \code{51-60} 
\code{61-70} \code{70+}}
    \item{colour}{White (W) or black (B)}
    \item{a}{mid-point for age groups, as numeric vector}
    \item{y}{Number of individuals in each class}
  }
}
\source{
K.-Y. Liang, S. L. Zeger and B. Qaqish (1992)  
Multivariate regression analyses for categorical data (with Discussion).
\emph{Journal of the Royal Statistical Society, series B}, \bold{54}, 3--40.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 505.}
\examples{
data(eyes)
eyes.glm <- glm(y~age*colour+L*R+(L+R):poly(a,2)+colour:(L+R),poisson,data=eyes)
anova(eyes.glm,test="Chi")   # analysis of deviance for loglinear model
}
\keyword{datasets}
