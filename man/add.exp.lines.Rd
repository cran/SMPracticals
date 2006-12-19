\name{add.exp.lines}
\alias{add.exp.lines}
\title{Add Exponential Lines in Practical 11.3 }
\description{
Adds lines to density plot used in Practical 11.3
}
\usage{
add.exp.lines(exp.out, i, B = 10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{exp.out}{Gibbs sampler output}
  \item{i}{Variable index (=1, 2)}
  \item{B}{Upper bound for truncated exponential density}
}
\author{Anthony Davison}
\examples{
B <-10; I <- 15; S <- 500

exp.out <- exp.gibbs(B=B,I=I,S=S)

hist(exp.out[1,,I],prob=TRUE,nclass=15,xlab="u1",ylab="PDF",xlim=c(0,B),ylim=c(0,1))

add.exp.lines(exp.out,1)

}
\keyword{ aplot }
