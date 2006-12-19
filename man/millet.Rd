\name{millet}
\alias{millet}
\docType{data}
\title{Millet Data}
\description{
Data from an experiment conducted to determine the optimal planting distance
between plants in rows of millet.  The rows were 1 foot apart.  The design was a
5 x 5 Latin square.
}
\usage{data(millet)}
\format{
  A data frame with 25 observations on the following 4 variables.
  \describe{
    \item{row}{Row label, coded \code{1}-\code{5}.}
    \item{col}{Column label, coded \code{1}-\code{5}.}
    \item{dist}{distances between plants:\code{2}, \code{4}, \code{6}, \code{8}, or \code{10}
inches.}
    \item{y}{Average yield (grams) of three central rows, 15 feet long after allowing for discards,
from each plot.}
  }
}
\source{
Unpublished lecture notes, Imperial College, London.
}
\examples{
data(millet)
## maybe str(millet) ; plot(millet) ...
}
\keyword{datasets}
