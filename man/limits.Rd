\name{limits}
\alias{limits}
\docType{data}
\title{Swedish Speed Limit Data}
\description{
The data are numbers of traffic accidents with personal injuries, reported to the police, on Swedish 
roads on 92 days in 1961 and 92 matching days in 1962.  On some of these days a general speed limit
of 90 or 100 km/hour was imposed.
}
\usage{data(limits)}
\format{
  A data frame with 92 observations on the following 5 variables.
  \describe{
    \item{day}{A factor indicating the day, coded \code{1}-\code{92}.}
    \item{lim1}{1 indicates a limit imposed in 1961, 0 not.}
    \item{lim2}{1 indicates a limit imposed in 1962, 0 not.}
    \item{y1}{Number of accidents on this day in 1961.}
    \item{y2}{Number of accidents on this day in 1962.}
  }
}
\source{
Svensson, A. (1981)  On a goodness-of-fit test for multiplicative Poisson models.  
\emph{Annals of Statistics}, \bold{9}, 697--704.
}
\examples{
data(limits)
## maybe str(limits) ; plot(limits) ...
}
\keyword{datasets}
