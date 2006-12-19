\name{ulcer}
\alias{ulcer}
\docType{data}
\title{Recurrent Bleeding from Ulcers}
\description{
Data from 40 experiments to compare a new surgery for stomach ulcer
 with an older surgery.}
\usage{data(ulcer)}
\format{
  A data frame with 80 observations on the following 9 variables.
  \describe{
    \item{author}{Author of study from which data taken}
    \item{year}{Year of publication}
    \item{quality}{Assessment of quality of trial on which data based}
    \item{age}{Mean age of patients}
    \item{r}{Number of patients without recurrent bleeding}
    \item{m}{Total number of patients}
    \item{bleed}{a numeric vector}
    \item{treat}{Factor giving control (C) or variants of new treatment}
    \item{table}{Factor giving 2x2 table corresponding to each trial}
  }
}
\source{
Efron, B. (1996) Empirical Bayes methods for combining likelihoods (with
  Discussion).
\emph{Journal of the American Statistical Association}, \bold{91},  538--565.

Errors in the data given in the paper have been corrected 
here.}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 496.
}
\examples{
data(ulcer)
glm(cbind(r,m-r)~table+treat,data=ulcer,family=binomial)

}
\keyword{datasets}
