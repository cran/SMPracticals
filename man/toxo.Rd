\name{toxo}
\alias{toxo}
\docType{data}
\title{Toxoplasmosis Data}
\description{
Data on the relation between rainfall and the numbers of people testing
positive for toxoplasmosis in 34 cities in El Salvador.
}
\usage{data(toxo)}
\format{
  A data frame with 34 observations on the following 3 variables.
  \describe{
    \item{rain}{Annual rainfall (mm)}
    \item{m}{Number of persons tested}
    \item{r}{Number of persons testing positive for toxoplasmosis}
  }
}
\source{  
Efron, B. (1986)  Double exponential families and their use in generalized 
linear regression.  \emph{Journal of the American Statistical Association}, 
\bold{82}, 
171--200.}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 516.}
\examples{
data(toxo)
anova(glm(cbind(r,m-r)~poly(rain,3),data=toxo,family=binomial),test="Chi")
fit <- glm(cbind(r,m-r)~poly(rain,3),data=toxo,family=quasibinomial)
anova(fit,test="F")
summary(fit)
}
\keyword{datasets}
