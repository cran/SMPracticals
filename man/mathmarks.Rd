\name{mathmarks}
\alias{mathmarks}
\docType{data}
\title{Math Marks Data}
\description{
Marks out of 100 for 88 students taking examinations in
mechanics (C), vectors (C), algebra (O), analysis (O),
statistics (O), where C indicates closed and O indicates 
open book examination.
}
\usage{data(mathmarks)}
\format{
  A data frame with 88 observations on the following 5 variables.
  \describe{
    \item{mechanics}{mark out of 100 for mechanics}
    \item{vectors}{mark out of 100 for vectors}
    \item{algebra}{mark out of 100 for algebra}
    \item{analysis}{mark out of 100 for analysis}
    \item{statistics}{mark out of 100 for statistics}
  }
}
\source{
Mardia, K. V., Kent, J. T. and Bibby, J. M. (1979) 
\emph{Multivariate  Analysis}.  London: Academic Press.  Pages 3--4.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 256.
}
\examples{
data(mathmarks)
pairs(mathmarks)
var(mathmarks)
}
\keyword{datasets}
