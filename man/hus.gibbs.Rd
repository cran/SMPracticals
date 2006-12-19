\name{hus.gibbs}
\alias{hus.gibbs}
\title{Gibbs Sampler for Poisson Changepoint Model, Practical 11.6}
\description{
This function implements a Gibbs sampler for the Poisson changepoint
model applied to the HUS data used in Example 4.40 and Practical 11.6
of Davison (2003), which should be consulted for details.
}
\usage{
hus.gibbs(init, y, R = 10, a1 = 1, a2 = 1, c = 0.01, d = 0.01)
}
\arguments{
  \item{init}{Initial values for parameters}
  \item{y}{A series of Poisson counts}
  \item{R}{Number of iterations of sampler}
  \item{a1}{Value of a hyperparameter}
  \item{a2}{Value of a hyperparameter}
  \item{c}{Value of a hyperparameter}
  \item{d}{Value of a hyperparameter}
}
\details{
 This is provided simply so that  readers spend less time typing. It is not intended to be
robust and general code.
}
\value{
A matrix of size R x 7, whose first five columns contain the values of the
parameters for the iterations.  Columns 6 and 7 contain the log likelihood and log prior
for that iteration.
}
\references{Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press. Practical 11.6.}

\author{Anthony Davison (\code{anthony.davison@epfl.ch})}

\examples{
## From Example 11.6:
hus <- c(1,5,3,2,2,1,0,0,2,1,1,7,11,4,7,10,16,16,9,15)
system.time( gibbs.out <- hus.gibbs(c(5, 5, 1, 1, 2), hus, R=1000))
plot.ts(gibbs.out[,1], main="lambda1") # time series plot for lam1
plot.ts(gibbs.out[,2], main="lambda1") # time series plot for lam2
plot.ts(gibbs.out[,6], main="log lik") # and of log likelihood
table(gibbs.out[,5])  # tabulate observed values of tau
rm(hus)
}
\keyword{ distribution }
