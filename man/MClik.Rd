\name{MClik}
\alias{MClik}
\title{Likelihood Estimation for Markov Chains}
\description{
Computes maximum likelihood estimates of transition probabilities
for stationary Markov chain models, of order 0 (independence) to 3.

This is intended for use with Practical 6.1 of Davison (2003), not as production
code.
}
\usage{
MClik(d)
}
\arguments{
  \item{d}{A sequence containing successive states of the chain}
}
\value{
  \item{order}{order of fitted chain}
  \item{df}{degrees of freedom using in fitting}
  \item{L}{maximum log likelihood for each order}
  \item{AIC}{Akaike information criterion for each order}
  \item{one}{one-way marginal table of counts}
  \item{two}{two-way margin table of transitions}
  \item{three}{three-way marginal table of transitions}
  \item{four}{four-way marginal table of transitions}
}
\references{
Avery, P. J. and Henderson, D. A. (1999) Fitting Markov chain models to
discrete state series such as DNA sequences. \emph{Applied Statistics}, \bold{48}, 53--61.

Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Section 6.1.
 }
\author{A. C. Davison (Anthony.Davison@epfl.ch)}
\examples{
data(intron)

fit <- MClik(intron)
}
\keyword{ts}
