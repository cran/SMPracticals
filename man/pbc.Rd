\name{pbc}
\alias{pbc}
\docType{data}
\title{Mayo Clinic Primary Biliary Cirrhosis Data}
\description{
Followup of 312 randomised and 108 unrandomised patients with
     primary biliary cirrhosis, a rare autoimmune liver disease, at
     Mayo Clinic.
}
\usage{data(pbc)}
\format{
  A data frame with 418 observations on the following 20 variables.
  \describe{
    \item{age}{in years}
    \item{alb}{serum albumin}
    \item{alkphos}{alkaline phosphotase}
    \item{ascites}{presence of ascites}
    \item{bili}{serum bilirubin}
    \item{chol}{serum cholesterol}
    \item{edema}{presence of edema}
    \item{edtrt}{0 no edema, 0.5 untreated or successfully treated
                  1 unsuccessfully treated edema}
    \item{hepmeg}{enlarged liver}
    \item{time}{survival time}
    \item{platelet}{platelet count}
    \item{protime}{standardised blood clotting time}
    \item{sex}{1=male}
    \item{sgot}{liver enzyme (now called AST)}
    \item{spiders}{blood vessel malformations in the skin}
    \item{stage}{histologic stage of disease (needs biopsy)}
    \item{status}{censoring status}
    \item{trt}{1/2/-9 for control, treatment, not randomised}
    \item{trig}{triglycerides}
    \item{copper}{urine copper}
  }
}
\source{Fleming, T. R. and Harrington, D. P. (1991)   
\emph{Counting Processes and Survival Analysis}.  Wiley: New York.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 549.
}
\examples{
data(pbc)  
# to make version of dataset used in book
pbcm <- pbc[(pbc$trt!=-9),]
pbcm$copper[(pbcm$copper==-9)] <- median(pbcm$copper[(pbcm$copper!=-9)])
pbcm$platelet[(pbcm$platelet==-9)] <- median(pbcm$platelet[(pbcm$platelet!=-9)])
attach(pbcm)

library(survival)
par(mfrow=c(1,2),pty="s")
plot(survfit(Surv(time,status)~trt),ylim=c(0,1),lty=c(1,2),
   ylab="Survival probability",xlab="Time (days)")
plot(survfit(coxph(Surv(time,status)~trt+strata(sex))),ylim=c(0,1),lty=c(1,2),
   ylab="Survival probability",xlab="Time (days)")
lines(survfit(coxph(Surv(time,status)~trt)),lwd=2)
# proportional hazards model fit
fit <- coxph(formula = Surv(time, status) ~ age + alb + alkphos + ascites + 
      bili + edtrt + hepmeg + platelet + protime + sex + spiders, data=pbcm)
summary(fit)
step.fit <- step(fit,direction="backward")
}
\keyword{datasets}
