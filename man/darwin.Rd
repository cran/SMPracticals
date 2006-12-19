\name{darwin}
\alias{darwin}
\docType{data}
\title{Darwin's Maize Data}
\description{
The heights in eighths of inches of young maize plants put by Charles Darwin in
four pots.  He planted 15 pairs of plants together, one of each pair being
cross-fertilised, and the other being self-fertilised.
}
\usage{data(darwin)}
\format{
  A data frame with 30 observations on the following 4 variables.
  \describe{
    \item{pot}{a factor giving the pot}
    \item{pair}{a factor giving the pair}
    \item{type}{a factor giving the type of fertilisation}
    \item{height}{height of plant in eighths of inches}
  }
}
\source{
  Fisher, R. A. (1935)  \emph{Design of Experiments}.  Edinburgh: Oliver and Boyd.  Page 30.
}
\references{
  The original book is reprinted as part of 
Fisher, R. A. (1990)  \emph{Statistical Methods, Experimental Design, 
and Scientific Inference}.  Oxford University Press.  

Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 2.
}
\examples{
data(darwin)
attach(darwin)
plot(height~type)
anova(lm(height~pot+pair+type,data=darwin))}
\keyword{datasets}
