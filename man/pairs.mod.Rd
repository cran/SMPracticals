\name{pairs.mod}
\alias{pairs.mod}
\title{Modified Scatterplot Matrix}
\description{
Plots a scatterplot matrix in which panels below the diagonal
show ordinary scatterplots of pairs of variables, and those above
the diagonal show scatterplots of residuals after regression on all
the other variables.   
}
\usage{
pairs.mod(x, format = "MC", labelnames = names(x), highlight = NULL, level = 0.9, ...)
}
\arguments{
  \item{x}{A matrix whose rows correspond to units and whose columns
correspond to variables measured on those units.}
  \item{format}{'MM' for marginal (that is, standard) scatterplots above and below the diagonal, 'MC' for marginal below and conditional (= partial) above, etc.  'MC' by default.}
  \item{labelnames}{Names of the variables.}
  \item{highlight}{Indexes of observations (rows) to be highlighted.}
  \item{level}{Scalar giving the level for the contour, 0.9 by default.}
  \item{\dots}{The plotting symbol and other arguments for the points can be controlled by `pch=', etc.}
}
\details{
The diagonal shows histograms of the original data, and (in black) histograms of the partial
residuals after adjustment on all the other variables, shifted to have
the same mean as the original data.   Also given are the original

The below-diagonal panels contain the numerical value of the correlation, and those above the diagonal contain the partial
correlation, that is, the correlation of the residuals after linear regression on the remaining variables. The panels show ellipses which
would contain 90 percent of the observations in a large normal sample
with the same mean and covariance matrix as the data.
}
\value{
  Produces the scatterplot matrix, and prints the marginal and partial
standard deviations of the variables.
}
\references{
Davison, A. C. and Sardy, S. (2000)  The partial scatterplot matrix.
\emph{Journal of Computational and Graphical Statistics}, \bold{9}, 750--758.
}
\author{
Sylvain Sardy (Sylvain.Sardy@epfl.ch)
}
\note{
pairs.mod calls library(ellipse) and will give an error if this is
unavailable.
}

\examples{
library(ellipse)
data(mathmarks)
pairs.mod(mathmarks)
}
\keyword{ hplot }% at least one, from doc/KEYWORDS
