\name{nodal}
\alias{nodal}
\docType{data}
\title{Nodal Involvement in Prostate Cancer}
\description{
     The `nodal' data frame has 53 rows and 7 columns.

     The treatment strategy for a patient diagnosed with cancer of the
     prostate depend highly on whether the cancer has spread to the
     surrounding lymph nodes. It is common to operate on the patient to
     get samples from the nodes which can then be analysed under a
     microscope but clearly it would be preferable if an accurate
     assessment of nodal involvement could be made without surgery.

     For a sample of 53 prostate cancer patients, a number of possible
     predictor variables were measured before surgery.  The patients
     then had surgery to  determine nodal involvement.  It was required
     to see if nodal involvement could  be accurately predicted from
     the predictor variables and which ones were most important.
}
\usage{data(nodal)}
\format{
  A data frame with 53 observations on the following 7 variables.
  \describe{
    \item{m}{A column of ones.}
    \item{r}{An indicator of nodal involvement. }
    \item{aged}{The patients age dichotomized into less than 60 (`0') and
          60 or over `1'.}
    \item{stage}{A measurement of the size and position of the tumour
          observed by palpatation with the fingers via the rectum.  A
          value of `1' indicates a more serious case of the cancer.}
    \item{grade}{Another indicator of the seriousness of the cancer, this
          one is determined by a pathology reading of a biopsy taken by
          needle before surgery. A value of `1' indicates a more
          serious case of the cancer.}
    \item{xray}{A third measure of the seriousness of the cancer taken from
          an X-ray reading. A value of `1' indicates a more serious
          case of the cancer.}
    \item{acid}{The level of acid phosphatase in the blood serum.}
  }
}
\source{
Brown, B.W. (1980) Prediction analysis for binary data. In 
     \emph{Biostatistics Casebook}. R.G. Miller, B. Efron, B.W. Brown and L.E.
     Moses (editors), 3-18. John Wiley.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 491.
}
\examples{
data(nodal)
nodal.glm <- glm(r~aged+stage+grade+xray+acid,binomial,data=nodal)
summary(nodal.glm,correlation=FALSE)

}
\keyword{datasets}
