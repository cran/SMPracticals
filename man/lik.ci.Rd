\name{lik.ci}
\alias{lik.ci}
\title{Likelihood Confidence Intervals for Scalar Parameter}
\description{
A simple function for computing confidence intervals from the
values of a likelihood function for a scalar parameter.  
It prints the maximum likelihood estimate (MLE) and its standard error, 
and confidence intervals based on normal approximation to the
distribution of the MLE and on the chi-squared approximation
to the distribution of the likelihood ratio statistic.
}
\usage{
lik.ci(psi, logL, conf = c(0.975, 0.025))
}
\arguments{
  \item{psi}{Vector containing parameter values, the range of which contains the MLE}
  \item{logL}{Vector containing corresponding log likelihood values}
  \item{conf}{Vector containing levels for which confidence interval limits needed}
}
\value{
  See above
}
\references{Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge 
University Press.  Sections 4.4.2, 4.5.1.}
\author{Anthony Davison (Anthony.Davison@epfl.ch)}
\note{This uses the spline functions in library(modreg).}
\examples{
# likelihood analysis for mean of truncated Poisson data
y <- c(1:6)
n <- c(1486,694,195,37,10,1)
logL <- function(x, y, n.obs)      # x is theta
{  f <- dpois(y,x)/(1-dpois(0,x))  # dpois is Poisson PDF
   sum(n*log(f))  }                # log likelihood
theta <- seq(from=0.8, to=1, length=200)
L <- rep(NA, 200)
for (i in 1:200) L[i] <- logL(theta[i], y, n)
plot(theta, L, type="l", ylab="Log likelihood")
lik.ci(theta, L)
}
\keyword{ misc }% at least one, from doc/KEYWORDS
