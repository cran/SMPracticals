\name{poi.gibbs}
\alias{poi.gibbs}
\title{Gibbs Sampler for Hierarchical Poisson Model, Practical 11.5}
\description{
This function implements Gibbs sampling for the hierarchical Poisson model
described in Example 11.19 and Practical 11.5 of Davison (2003), which 
should be consulted for more details.
}
\usage{
poi.gibbs(d, alpha, gamma, delta, I, S)
}
\arguments{
  \item{d}{A data frame with vector components \code{y} containing the numbers of
counts and \code{x} the period for which the \code{n} Poisson processes are observed.}
  \item{alpha}{A hyperparameter of the prior density}
  \item{gamma}{A hyperparameter of the prior density}
  \item{delta}{ A hyperparameter of the prior density}
  \item{I}{Number of iterations for which sampler is run}
  \item{S}{Number of independent replicates of sampler}
}
\details{
 This is provided simply so that  readers spend less time typing. It is not intended to be
robust and general code.
}
\value{
An I x S x (n+1) array containing the successive iterations of the samplers, 
for the I iterations, S independent replicates, and \code{n} rate parameters plus the parameter
\code{beta} of the prior distribution.
}
\references{Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press. Practical 11.5.}
\author{Anthony Davison (\code{anthony.davison@epfl.ch})}

\examples{
 ## From Practical 11.5:
data(pumps)
system.time( pumps.sim <- poi.gibbs(pumps, alpha=1.8, delta=0.1, gamma=1, 
             I=1000, S=5) )
par(mfrow=c(2,3))
plot.ts(pumps.sim[,1,1])
acf(pumps.sim[,1,1])
pacf(pumps.sim[,1,1])
plot.ts(pumps.sim[,1,11])
acf(pumps.sim[,1,11])
pacf(pumps.sim[,1,11])
}
\keyword{ distribution }
