\name{pneu}
\alias{pneu}
\docType{data}
\title{Pneumoconiosis amongst Coalminers}
\description{
This gives the degree of pneumoconiosis (normal, present, or severe)
in a group of coalminers as a function of the number of years worked
at the coalface.  The degree of the disease was assessed radiologically and is qualitative.
}
\usage{data(pneu)}
\format{
  A data frame with 8 observations on the following 4 variables.
  \describe{
    \item{Years}{Period of exposure (years worked at the coalface)}
    \item{Normal}{Number of miners with normal lungs}
    \item{Present}{Number of miners with disease present}
    \item{Severe}{Number of miners with severe disease}
  }
}
\source{
Ashford, J. R. (1959)  An approach to the analysis of data for semi-quantal 
responses in biological assay.  \emph{Biometrics}, \bold{15}, 573--581.}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 509.}
\examples{
data(pneu)
summary(glm(cbind(Present+Severe,Normal)~log(Years),data=pneu,binomial))
summary(glm(cbind(Severe,Normal+Present)~log(Years),data=pneu,binomial))
}
\keyword{datasets}
