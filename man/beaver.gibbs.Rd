\name{beaver.gibbs}
\alias{beaver.gibbs}
\title{ Gibbs Sampler for Normal Changepoint Model, Practical 11.7}
\description{
This function implements a Gibbs sampler for the normal changepoint
model applied to the beaver temperature data used in Example 6.22 
and Practical 11.7 of Davison (2003), which should be consulted for details.}
\usage{
beaver.gibbs(init, y, R = 10, a = 1, b = 0.05)
}
\arguments{
  \item{init}{Initial values for parameters }
  \item{y}{ A series of normal observations}
  \item{R}{Number of iterations of sampler}
  \item{a}{Value of a hyperparameter}
  \item{b}{ Value of a hyperparameter}
}
\details{
 This is provided simply so that  readers spend less time typing. It is not intended to be
robust and general code.
}
\value{
A matrix of size R x 6, whose first four columns contain the values of the
parameters for the iterations.  Columns 5 and 6 contain the log likelihood and log prior
for that iteration.
}
\references{Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press. Practical 11.7.}

\author{Anthony Davison (\code{anthony.davison@epfl.ch})}

\examples{
## From Example 11.7:
data(beaver)
system.time( gibbs.out <- beaver.gibbs(c(36, 40, 3, 38), beaver$temp, R=1000))
par(mfrow=c(2,3))
plot.ts(gibbs.out[,1],main="mu1") # time series plot for mu1
plot.ts(gibbs.out[,2],main="mu2") # time series plot for mu2
plot.ts(gibbs.out[,3],main="lambda") # time series plot for lambda
plot.ts(gibbs.out[,4],main="gamma") # time series plot for gamma
plot.ts(gibbs.out[,5],main="log likelihood")  # and of log likelihood
}
\keyword{ misc}
