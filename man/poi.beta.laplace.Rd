\name{poi.beta.laplace}
\alias{poi.beta.laplace}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Laplace Approximation for Posterior Density, Practical 11.2}
\description{
This function computes the Laplace approximation to the posterior density
of the parameter beta in a Poisson regression model.  For more details see
Practical 11.2 of Davison (2003).
}
\usage{
poi.beta.laplace(data, alpha = get.alpha(data), phi = 1, nu = 0.1, beta = seq(from = 0, to = 7, length = 1000))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data frame with vector components \code{y} and \code{x} of the same length.  
\code{y} contains the numbers of counts, and \code{x} the corresponding time intervals.}
  \item{alpha}{Prior value of a parameter, estimated from the data by default.}
  \item{phi}{Prior value of a parameter.}
  \item{nu}{ Prior value of a parameter.}
  \item{beta}{Values for which posterior density of beta should be provided. }
}
\details{
 This is provided simply so that  readers spend less time typing. It is not intended to be
robust and general code.
}
\value{
  \item{int }{Estimated integral of posterior density.}
  \item{conv }{Did the routine for the Laplace optimization converge?}
  \item{x}{Values of beta}
  \item{y}{Values of posterior density}
}
\references{Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press. Practical 11.2.}
\author{Anthony Davison (\code{anthony.davison@epfl.ch})}

\examples{
## From Practical 11.2:
get.alpha <- function(d)
{  # estimate alpha from data
  rho <- d$y/d$x
  n <- length(d$y)
  mean(rho)^2/( (n-1)*var(rho)/n - mean(rho)*mean(1/d$x) )
}
data(cloth)
attach(cloth)
plot(x,y)
beta <- seq(from=0,to=10,length=1000)
beta.post <- poi.beta.laplace(cloth,beta=beta,nu=1)
plot(beta.post,type="l",xlab="beta",ylab="Posterior density")
beta.post <- poi.beta.laplace(cloth,beta=beta,nu=5)
lines(beta.post,lty=2)
}
\keyword{ distribution }% at least one, from doc/KEYWORDS
