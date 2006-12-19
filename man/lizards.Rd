\name{lizards}
\alias{lizards}
\docType{data}
\title{Lizard Count Data}
\description{
These are data on the structural habitat of two species of lizards in 
Whitehouse, Jamaica.  They comprise
observed counts for perch height, perch diameter, insolation, 
and time of day, for both species.  The
data can be represented as a 2 x 2 x 2 x 3 x 2 contingency table. 
}
\usage{data(lizards)}
\format{
  A data frame with 48 observations on the following 6 variables.
  \describe{
    \item{height}{\code{high} indicates perch at height 
5 or more feet, \code{low} indicates perch below 5 feet.}
    \item{diameter}{\code{large} indicates perch diameter 2 inches or more, 
                              \code{small} indicates perch diameter less than 2 inches.}
    \item{sun}{Is the perch in a \code{shady} or a \code{sunny} location?}
    \item{time}{Time of day when lizard observed: \code{early}, 
\code{late} or \code{midday}.}
    \item{species}{Species of lizard: \code{grahami} or \code{opalinus}.}
    \item{y}{Number of lizards seen.}
  }
}
\source{
Bishop, Y. M. M., Fienberg, S. E. and Holland, P. W. (1975)  
\emph{Discrete Multivariate Analysis}.  
Cambridge, Mass.: MIT Press.  Page 164.
}
\examples{
data(lizards)
## maybe str(lizards) ; plot(lizards) ...
}
\keyword{datasets}
