\name{calcium}
\alias{calcium}
\docType{data}
\title{Calcium Uptake Data}
\description{
These are data on the uptake of calcium by cells suspended in a
radioactive solution, as a function of time.
}
\usage{data(calcium)}
\format{
  A data frame with 27 observations on the following 2 variables.
  \describe{
    \item{time}{The time (in minutes) that the cells were suspended in the
          solution}
    \item{cal}{The amount of calcium uptake (nmoles/mg)}
  }
}
\details{
      Howard Grimes from the Botany Department, North Carolina State
     University, conducted an experiment for biochemical analysis of
     intracellular storage and transport of calcium across plasma
     membrane.  Cells were suspended in a solution of radioactive
     calcium for a certain length of time and then the amount of
     radioactive calcium that was absorbed by the cells was measured. 
     The experiment was repeated independently with 9 different times
     of suspension each replicated 3 times.
}
\source{
Rawlings, J.O. (1988) \emph{Applied Regression Analysis}.  Wadsworth and
     Brooks/Cole Statistics/Probability Series.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 469.
}
\examples{
data(calcium)
summary(nls(cal~beta0*(1-exp(-time/beta1)),data=calcium,start=list(beta0=5,beta1=5)))
}
\keyword{datasets}
