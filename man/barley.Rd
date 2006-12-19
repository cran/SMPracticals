\name{barley}
\alias{barley}
\docType{data}
\title{Spring Barley Data}
\description{
The spatial layout and plot yield at harvest in a final assessment trial of 
75 varietes of spring barley.  The varieties are sown in three blocks, each 
with 75 plots, and each variety is replicated thrice.  The yield for variety
27 is missing in block 3.
}
\usage{data(barley)}
\format{
  A data frame with 225 observations on the following 4 variables.
  \describe{
    \item{Block}{a factor with three levels}
    \item{Location}{a numeric vector with 75 values giving the plot}
    \item{Variety}{a factor with 75 levels giving the variety of barley sown in the plot}
    \item{y}{yield at harvest, standardised to have unit crude variance}
  }
}
\source{
Besag, J. E., Green, P. J., Higdon, D. and Mengersen, K. (1995)  
Bayesian computation and stochastic systems (with Discussion).  
\emph{Statistical Science}, \bold{10}, 3--66.  
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Pages 534--535.}
\examples{
data(barley)
}
\keyword{datasets}
