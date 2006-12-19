\name{frets}
\alias{frets}
\docType{data}
\title{Head Dimensions in Brothers}
\description{
The 'frets' data frame has 25 rows and 4 columns.

The data consist of measurements of the length and breadth of the
heads of  pairs of adult brothers in 25 randomly sampled families.
All measurements are expressed in millimetres.
}
\usage{data(frets)}
\format{
   This data frame contains the following columns:
  \describe{
    \item{l1}{The head length of the eldest son.}
    \item{b1}{The head breadth of the eldest son.}
    \item{l2}{The head length of the second son.}
    \item{b2}{The head breadth of the second son.}
  }
}
\source{
Frets, G.P. (1921) Heredity of head form in man. \emph{Genetica}, \bold{3}, 193.
}
\references{
    Whittaker, J. (1990) \emph{Graphical Models in Applied Multivariate
     Statistics}. John Wiley.
}
\examples{
data(frets)
## maybe str(frets) ; plot(frets) ...
}
\keyword{datasets}
