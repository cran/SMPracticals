\name{springs}
\alias{springs}
\docType{data}
\title{Spring Failure Data}
\description{
  Failure times of 60 springs divided into 6 groups of 10, with each group
 subject to a different level of stress.  Some of the times are right-censored.
}
\usage{data(springs)}
\format{
  A data frame with 60 observations on the following 3 variables.
  \describe{
    \item{cycles}{failure times (in units of $10^3$ cycles of loading)}
    \item{cens}{censoring indicator, with 0 indicating right-censoring}
    \item{stress}{a factor giving the stress (N/mm$^3$)}
  }
}
\source{
  Cox, D. R. and Oakes, D. (1984)  \emph{Analysis of Survival Data}.  
London: Chapman and Hall/CRC Press.
}
\examples{
data(springs)
attach(springs)
plot(cycles~stress)
plot(cycles~stress,log="y")
}
\keyword{datasets}
