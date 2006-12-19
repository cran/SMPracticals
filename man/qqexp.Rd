\name{qqexp}
\alias{qqexp}
\title{Exponential Quantile-Quantile Plots}
\description{
Exponential probability plot of data.  
}
\usage{
qqexp(y, line = FALSE, ...)
}
\arguments{
  \item{y}{Vector for which plot is required}
  \item{line}{Add line to plot (no line by default)}
  \item{\dots}{Other options for plot command}
}
}
\value{
  A exponential probablity plot of the data in y; that is, a plot of
the ordered values of y against the quantiles of the standard exponential
distribution.
}
\seealso{\code{\link{qqnorm}}}
\examples{
qqexp(rexp(50))
qqexp(rgamma(50,shape=2),line=TRUE)
}
\keyword{hplot}% at least one, from doc/KEYWORDS
