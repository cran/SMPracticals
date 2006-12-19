\name{breast}
\alias{breast}
\docType{data}
\title{Breast Cancer Data}
\description{
Initial and follow-up status for 37 breast cancer patients treated for
spinal metastases.  The status is able to walk unaided (1), unable to
walk unaided (2), dead (3).  The follow-up times are 0, 3, 6, 12, 24, 
and 60 months after treatment began.  
}
\usage{data(breast)}
\format{
  A data frame with 37 observations on the following 8 variables.
  \describe{
    \item{j}{Case number}
    \item{init}{Initial status}
    \item{x0}{Status immediately after treatment started}
    \item{x1}{Status after 3 months}
    \item{x2}{Status after 6 months}
    \item{x3}{Status after 12 months}
    \item{x4}{Status after 24 months}
    \item{x5}{Status after 60 months}
  }
}
\details{
Woman 24 was alive after 6 months
but her ability to walk was not recorded (she was in state 1 or 2).

NA indicates that a woman has previously died, or that her status is
unknown.
}

\source{
de Stavola, B. L. (1988) Testing departures from time homogeneity in
  multistate Markov processes.
\emph{Applied Statistics}, \bold{37}, 242--250.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 227.
}
\examples{
data(breast)
}
\keyword{datasets}
