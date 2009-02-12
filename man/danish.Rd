\name{danish}
\alias{danish}
\docType{data}
\title{Danish Fire Insurance Claims}
\description{
Data on major insurance claims due to fires in Denmark, 
1980--1990.  The values of the claims have been rescaled 
for commercial reasons.
}
\usage{data(beaver)}
\format{
  An irregular time series.
}
\source{
Embrechts, P., Kluppelberg, C. and Mikosch, T. (1997) 
\emph{Modelling Extremal Events for Insurance and Finance}.
Berlin: Springer.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  
Cambridge University Press.
Page 278.
}
\examples{
data(danish)
plot(danish,type="h")
}
\keyword{datasets}
