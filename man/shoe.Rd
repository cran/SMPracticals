\name{shoe}
\alias{shoe}
\docType{data}
\title{Shoe Wear Data}
\description{
Amount of wear in a paired comparison of two materials used
for soling the shoes of 10 boys.  The materials were allocated randomly
to the left and right feet.
}
\usage{data(shoe)}
\format{
  A data frame with 20 observations on the following 4 variables.
  \describe{
    \item{material}{factor giving the shoe sole material}
    \item{boy}{factor with 10 levels}
    \item{foot}{factor giving left or right foot}
    \item{y}{amount of shoe wear}
  }
}
\source{
Box, G. E. P., Hunter, W. G. and Hunter, J. S. (1978) 
\emph{Statistics for  Experimenters}.  New York: Wiley.  Page 100.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 422.
}
\examples{
data(shoe)
attach(shoe)
d <- y[material=="B"]-y[material=="A"]  # difference
t.test(d)  # t test of hypothesis that B wears quicker 
}  
\keyword{datasets}
