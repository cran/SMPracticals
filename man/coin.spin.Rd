\name{coin.spin}
\alias{coin.spin}
\title{Function for Coin Spinning, Practical 11.1}
\description{
 This function computes the posterior distribution of the success
probability theta when a coin is spun on its edge (or tossed), when the
prior density for that probability is a mixture of beta densities.
}
\usage{
coin.spin(para, r = 0, n = 0, n.points = 199)
}
\arguments{
  \item{para}{A matrix with 3 columns and k rows, where k is the number of components of
the mixture.  The first column contains the probabilities, and the next two the shape parameters
a and b for the components.}
  \item{r}{ Number of successes}
  \item{n}{Number of trials}
  \item{n.points}{The number of values of theta, equally-spaced between 0 and 1.}
}
\details{
 This is provided simply so that  readers spend less time typing. It is not intended to be
robust and general code.
}
\value{
  \item{x}{Values of theta}
  \item{y}{Values of posterior density for theta}
}
\references{Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press. Practical 11.1.}
\author{Anthony Davison (\code{anthony.davison@epfl.ch})}

 \examples{
## From Practical 11.1:
para <- matrix( c(0.5, 10, 20, 0.5, 20, 10), nrow=2, ncol=3, byrow=TRUE)
prior <- coin.spin(para)
plot(prior, xlab="theta",ylab="PDF", type="l",ylim=c(0,6))
post <- coin.spin(para, r=4, n=10)
}
\keyword{ distribution }% at least one, from doc/KEYWORDS
