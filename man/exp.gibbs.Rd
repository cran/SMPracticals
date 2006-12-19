\name{exp.gibbs}
\alias{exp.gibbs}
\title{Gibbs Sampling for Two Truncated Exponential Variables, Practical 11.3}
\description{
Performs Gibbs sampling for problem with two truncated exponential variables.
See Practical 11.3 of Davison (2003) for details.
}
\usage{
exp.gibbs(u1 = NULL, u2 = NULL, B, I = 100, S = 100)
}
\arguments{
  \item{u1}{Initial values for variable 1 }
  \item{u2}{Initial values for variable 2}
  \item{B}{Value at which exponential distribution is truncated}
  \item{I}{Number of iterations of sampler}
  \item{S}{Number of replicates of sampler}
}
\details{
 This is provided simply so that  readers spend less time typing. It is not intended to be
robust and general code.
}
\value{
A 2 x S x I array containing the values of the variables for the successive
iterations
}
\references{Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press.Practical 11.3.}
\author{Anthony Davison (\code{anthony.davison@epfl.ch})}

\examples{
add.exp.lines <- function( exp.out, i, B=10)
{
  dexp.trunc <- function( u, lambda, B ) 
     dexp(u, rate=lambda)/(1-exp(-lambda*B))
  S <- dim(exp.out)[2]
  I <- dim(exp.out)[3]
  u <- seq(0.0001,B,length=1000)
  fu <- rep(0,1000)
  for (s in 1:S) fu <- fu + dexp.trunc(u,exp.out[3-i,s,I],B)/S
  lines(u,fu,col="red")
  invisible()
}
par(mfrow=c(3,2))
B <-10; I <- 15; S <- 500
exp.out <- exp.gibbs(B=B,I=I,S=S)
hist(exp.out[1,,I],prob=TRUE,nclass=15,xlab="u1",ylab="PDF",xlim=c(0,B),ylim=c(0,1))
add.exp.lines(exp.out,1)
hist(exp.out[2,,I],prob=TRUE,nclass=15,xlab="u2",ylab="PDF",xlim=c(0,B),ylim=c(0,1))
add.exp.lines(exp.out,2)
}
\keyword{ misc }

