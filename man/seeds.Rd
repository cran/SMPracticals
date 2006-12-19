\name{seeds}
\alias{seeds}
\docType{data}
\title{Germination of seeds}
\description{
These are the number of seeds germinating when subjected to extracts of certain roots.
}
\usage{data(seeds)}
\format{
  A data frame with 21 observations on the following 4 variables.
  \describe{
    \item{r}{Number of seeds germinating}
    \item{m}{Total number of seeds}
    \item{seed}{Seed type: O. aegyptiaco 75 or O. aegyptiaco 73}
    \item{root}{Root extract}
  }
}
\source{
Crowder, M. J.  (1978)  Beta-binomial ANOVA for proportions.  \emph{Applied Statistics},  
\bold{27}, 34--37.
}
\references{
Cox, D. R. and Snell, E. J. (1989)  \emph{Analysis of Binary Data}, second edition.  
London: Chapman and Hall.  Section 3.2.
}
\examples{
data(seeds)
## maybe str(seeds) ; plot(seeds) ...
}
\keyword{datasets}
