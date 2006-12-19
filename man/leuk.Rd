\name{leuk}
\alias{leuk}
\docType{data}
\title{Survival Times and White Blood Counts for Leukaemia Patients}
\description{
  A data frame of data from 33 leukaemia patients.
}
\usage{data(leuk)}
\format{
  A data frame with 33 observations on the following 3 variables.
  \describe{
    \item{wbc}{white blood cell count}
    \item{ag}{a test result, '"present"' or '"absent"'}
    \item{time}{survival time in weeks}
  }
}
\details{
  Survival times are given for 33 patients who died from acute
     myelogenous leukaemia.  Also measured was the patient's white
     blood cell count at the time of diagnosis.  The patients were also
     factored into 2 groups according to the presence or absence of a
     morphologic characteristic of white blood cells. Patients termed
     AG positive were identified by the presence of Auer rods and/or
     significant granulation of the leukaemic cells in the bone marrow
     at the time of diagnosis.
}
\source{
     Feigl, P. and Zelen, M. (1965) Estimation of exponential survival
     probabilities with concomitant information. Biometrics, 21,
     826--838.

}
\references{
Cox, D. R. and Oakes, D. (1984) \emph{Analysis of Survival Data}.    
Chapman & Hall, p. 9.

Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 542.
}
\examples{
data(leuk)
library(survival)
plot(survfit(Surv(time) ~ ag, data = leuk), lty = 2:3, col = 2:3)
# fit of exponential model
summary(glm(time~ag+log10(wbc),data=leuk,family=Gamma(log)),dispersion=1)
# now Cox models
leuk.cox <- coxph(Surv(time) ~ ag + log(wbc), leuk)
summary(leuk.cox)
}
\keyword{datasets}
