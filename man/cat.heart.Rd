\name{cat.heart}
\alias{cat.heart}
\docType{data}
\title{Cat Heart Data}
\description{
Data from a Latin square experiment on the potencies of cardiac drugs given to
anesthetized cats.
}
\usage{data(cat.heart)}
\format{
  A data frame with 64 observations on the following 6 variables.
  \describe{
    \item{Day}{on which experiment performed}
    \item{Time}{morning or afternoon}
    \item{Observer}{four observers took part}
    \item{Drug}{cardiac drug given to cat}
    \item{y}{100 times log dose in micrograms at which cat died}
    \item{x}{100 times log cat heart weight in grams}
  }
}
\details{
These are results from an experiment to determine the relative potencies of 
eight similar cardiac drugs, labelled A--H, where A is a standard.  The method 
used was to infuse slowly a suitable dilution of the drug into an anaesthetized cat.  
The dose at which death occurred and the weight of the cat's heart were recorded.  
 Four observers each made two determinations on each of eight days, 
with a Latin square design used to eliminate observer and time differences.  
The heart weight cannot be known at the start of the experiment, but might 
be  expected to affect comparisons
among the treatments; it is assumed that heart weight is unaffected by the treatments.}
\source{
Unpublished lecture notes, Imperial College, London.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 447.
}
\examples{
data(cat.heart)
anova(lm(y~Observer+Time+Day+Drug+Observer:Time,data=cat.heart))
}
\keyword{datasets}
