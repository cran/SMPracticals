\name{nuclear}
\alias{nuclear}
\docType{data}
\title{Nuclear Power Station Construction Data}
\description{
     The data relate to the construction of 32 light water reactor
     (LWR) plants  constructed in the U.S.A in the late 1960's and
     early 1970's.  The data was collected with the aim of predicting
     the cost of construction of further LWR plants.  6 of the power
     plants had partial turnkey guarantees and it is possible that, for
     these plants, some manufacturers' subsidies may be hidden  in the
     quoted capital costs.
}
\usage{data(nuclear)}
\format{
  A data frame with 32 observations on the following 11 variables.
  \describe{
    \item{cost}{The capital cost of construction in millions of dollars
          adjusted to 1976 base.}
    \item{date}{The date on which the construction permit was issued.  The
          data are measured in years since January 1 1990 to the
          nearest month.}
    \item{t1}{The time between application for and issue of the
          construction permit.}
    \item{t2}{The time between issue of operating license and construction
          permit.}
    \item{cap}{The net capacity of the power plant (MWe).}
    \item{pr}{A binary variable where `1' indicates the prior existence of
          a LWR plant at the same site.}
    \item{ne}{A binary variable where `1' indicates that the plant was
          constructed in the  north-east region of the U.S.A.}
    \item{ct}{A binary variable where `1' indicates the use of a cooling
          tower in the plant.}
    \item{bw}{A binary variable where `1' indicates that the nuclear steam
          supply system was manufactured by Babcock-Wilcox.}
    \item{cum.n}{The cumulative number of power plants constructed by each
          architect-engineer.}
    \item{pt}{A binary variable where `1' indicates those plants with
          partial turnkey guarantees.}
  }
}
\source{
    Cox, D.R. and Snell, E.J. (1981)  \emph{Applied Statistics: Principles
     and Examples}. Chapman and Hall.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 401.
}
\examples{
data(nuclear)
pairs(nuclear)
fit <- lm(log(cost)~date+t1+t2+cap+pr+ne+ct+bw+cum.n+pr,data=nuclear)
step(fit)  # stepwise model selection
}
\keyword{datasets}
