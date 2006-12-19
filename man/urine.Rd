\name{urine}
\alias{urine}
\docType{data}
\title{ Urine Analysis Data}
\description{
     The 'urine' data frame has 79 rows and 7 columns.

     79 urine specimens were analyzed in an effort to determine if
     certain physical characteristics of the urine might be related to
     the formation of calcium oxalate crystals.  Cases 1 and 55 have
     missing covariates.
}
\usage{data(urine)}
\format{
 This data frame contains the following columns:
  \describe{
    \item{r}{Indicator of the presence of calcium oxalate crystals.}
    \item{gravity}{The specific gravity of the urine.}
    \item{ph}{The pH reading of the urine.}
    \item{osmo}{The osmolarity of the urine. Osmolarity is proportional to
          the concentration of molecules in solution.}
    \item{cond}{The conductivity of the urine.  Conductivity is
          proportional to the  concentration of charged ions in
          solution.}
    \item{urea}{The urea concentration in millimoles per litre.}
    \item{calc}{The calcium concentration in millimoles per litre.}
  }
}
\source{
    Andrews, D.F. and Herzberg, A.M. (1985)  \emph{Data: A Collection of
     Problems from Many Fields for the Student and Research Worker}. 
     Springer-Verlag.  Pages 249--251.
}
\examples{
data(urine)
glm(r~gravity+ph+osmo+cond+urea+calc,binomial,data=urine,subset=-c(1,55))
}
\keyword{datasets}
