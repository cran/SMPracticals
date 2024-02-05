\name{glm.diag}
\alias{glm.diag}
\title{Generalized Linear Model Diagnostics}
\description{
Calculates jackknife deviance residuals, standardized deviance residuals, standardized Pearson residuals, approximate Cook statistic, leverage and estimated dispersion.}
\usage{
\method{glm}{diag}(glmfit)
}
\arguments{
  \item{glmfit}{ \code{glmfit} is a \code{glm.object} or a \code{lm.object} - the result of a call to \code{glm()} or \code{lm()} }
}
\value{
A list containing the following items:
  \item{res }{The vector of jackknife deviance residuals.}
  \item{rd}{The vector of standardized deviance residuals.}
 \item{ rp}{The vector of standardized Pearson residuals.}
\item{ cook}{The vector of approximate Cook statistics.}
\item{ h}{The vector of leverages of the observations.}
\item{sd}{The value used to standardize the residuals. This is the the estimate of residual standard deviation in the Gaussian family and is the square root of the estimated shape parameter in the Gamma family. In all other cases it is 1.}
}
\references{ Davison, A.C. and Snell, E.J. (1991) Residuals and diagnostics. In \emph{Statistical Theory and Modelling: In Honour of Sir David Cox}. D.V. Hinkley, N. Reid and E.J. Snell (editors), 83-106. Chapman and Hall.}
\author{ Anthony Davison <anthony.davison@epfl.ch> }
\note{ See the helpfile for \code{glm.diag.plots} for an example of the use of \code{glm.diag}. }

\seealso{\code{\link{glm}},\code{\link{lm}},\code{\link{plot.glm.diag}},\code{\link{summary.glm}} }
\keyword{ misc }
