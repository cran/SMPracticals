\name{pumps}
\alias{pumps}
\docType{data}
\title{Pump Failure Data}
\description{
The data give numbers of failures of 
ten pumps from several systems
in the nuclear plant Farley 1.  Pumps 1, 3, 4, and 6 operate continuously, 
while the rest operate only intermittantly or on standby.  }
\usage{data(pumps)}
\format{
  A data frame with 10 observations on the following 2 variables.
  \describe{
    \item{x}{Operating time (in thousands of operatin hours)}
    \item{y}{Number of failures}
  }
}
\source{Gaver, D. P. and O'Muircheartaigh, I. G. (1987) 
Robust empirical Bayes analysis of event rates.  \emph{Technometrics}, 
\bold{29}, 1--15.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 600.}
\keyword{datasets}
