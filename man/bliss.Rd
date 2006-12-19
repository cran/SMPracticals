\name{bliss}
\alias{bliss}
\docType{data}
\title{Bliss data on deaths of flour beetles}
\description{
These are the number of adult flour beetles which died following a
     5-hour exposure to gaseous carbon disulphide.}
\usage{data(bliss)}
\format{
  A data frame with 8 observations on the following 3 variables.
  \describe{
    \item{dose}{concentration of carbon disulphide(mg. per litre)}
    \item{m}{Numbers of beetles exposed}
    \item{r}{Numbers of beetles dying}
  }
}
\source{
Bliss, C. I. (1935).The calculation of the dosage-mortality curve. 
\emph{Annals of Applied BIology}, \bold{22}, 134-167.}
\examples{
data(bliss)
attach(bliss)
plot(log(dose),r/m,ylim=c(0,1),ylab="Proportion dead")
fit <- glm(cbind(r,m-r)~log(dose),binomial)
summary(fit)
}
\keyword{datasets}
