\name{alofi}
\alias{alofi}
\title{Daily Rainfall at Alofi}
\description{
Three-state data derived from daily rainfall over three years at Alofi
in the Niue Island group in the Pacific Ocean.  The states are
1 (no rain), 2 (up to 5mm rain), 3 (over 5mm).
}
\usage{data(alofi)}
\source{
Avery, P. J. and Henderson, D. A. (1999) Fitting Markov chain models to
  discrete state series such as DNA sequences.
\emph{Applied Statistics}, \bold{48}, 53--61.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 294.
}
\examples{
data(alofi)
fit <- MClik(alofi)
fit$df
fit$AIC
plot(fit$df,fit$AIC)  # best model has minimal AIC?
}
\keyword{datasets}
