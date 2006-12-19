\name{ihess}
\alias{ihess}
\title{Inverse Hessian}
\description{
 Inverse Hessian matrix, useful for obtaining standard errors}
\usage{
ihess(f, x, ep = 1e-04, ...)
}
\arguments{
  \item{f}{Usually a negative log likelihood}
  \item{x}{Usually maximum likelihood estimates for f}
  \item{ep}{Step length used to compute numerical second derivatives}
  \item{\dots}{Extra arguments for f, if any}
}
\value{
Matrix of dimension dim(x) times dim(x), containing inverse Hessian
matrix of f at x.
}
\references{Based on code written by Stuart Coles of Padova University}
\author{Anthony Davison}
\note{This is not needed in R, where hessian matrices are obtained by setting hessian=T in
calls to optimisation functions.}

\examples{
# ML fit of t distribution
nlogL <- function(x, data) # negative log likelihood
{ mu <- x[1]
  sig <- x[2]
  df <- x[3]
  -sum(log( dt((data-mu)/sig, df=df)/sig )) }
y <- rt(n=100, df=10) # generate t data
# this is Splus code.....so remove the #'s for it to work in R
# fit <- nlminb(c(1,1,4), nlogL, upper=c(Inf,Inf,Inf), lower=c(-Inf,0,0),
#               data=y)
# fit$parameters # maximum likelihood estimates
# J <- ihess(nlogL, fit$parameters, data=y)
#  sqrt(diag(J)) # standard errors based on observed information
# 
# In this example the standard error can be a bad measure of
# uncertainty for the df.
}
\keyword{ misc }
