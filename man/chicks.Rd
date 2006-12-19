\name{chicks}
\alias{chicks}
\docType{data}
\title{Chick Bone Data}
\description{
Balanced incomplete block design on the effect of amino
acids on growth of chick bones.
}
\usage{data(chicks)}
\format{
  A data frame with 30 observations on the following 3 variables.
  \describe{
    \item{Treat}{Treatment with levels \code{All} (all amino acids present), 
   \code{Arg-}(all acids present except Arg), etc.}
    \item{Pair}{bones were taken in pairs from 15 chicks}
    \item{y}{Log10 dry weight of bones at end of experiment}
  }
}
\details{
Bones from 7-day-old chick embryos were cultivated over a nutrient
chemical medium.  Two bones were available from each chick, and the
experiment was set out in a balanced incomplete block design with two
units per block.  The treatments were growth in the complete medium,
with about 30 nutrients in carefully controlled quantities, and growth
in five other media, each with a single amino acid omitted.  Thus His-,
Arg-, and so forth denote media without particular amino acids.  
}
\source{
Cox, D. R. and Snell, E. J. (1981) 
\emph{Applied Statistics: Principles and Examples}.
London: Chapman and Hall/CRC Press.  Page 95.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 432.
}
\keyword{datasets}
