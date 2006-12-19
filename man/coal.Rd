\name{coal}
\alias{coal}
\docType{data}
\title{Data on UK coal mining disasters}
\description{
     The 'coal' data frame has 191 rows and 1 column.

     This data frame gives the dates of 191 explosions in UK coal mines
     which resulted in 10 or more fatalities.  The time span of the
     data is from March 15, 1851 until March 22 1962.
}
\usage{data(coal)}
\format{
This data frame contains the following column:
  \describe{
    \item{date}{The date of the disaster.  The integer part of 'date' gives
          the year.  The day is represented as the fraction of the year
          that had elapsed on that day.
}
  }
}
\source{
    The data were obtained from

     Hand, D.J., Daly, F., Lunn, A.D., McConway, K.J. and Ostrowski, E.
     (1994) \emph{A Handbook of Small Data Sets}, Chapman and Hall.
}
\references{
     Jarrett, R.G. (1979) A note on the intervals between coal-mining
     disasters. \emph{Biometrika}, \bold{66}, 191--193.
}
\examples{
data(coal)
plot(density(coal$date))
rug(coal$date)
}
\keyword{datasets}
