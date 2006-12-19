\name{cake}
\alias{cake}
\docType{data}
\title{Breaking of Chocolate Cakes}
\description{
Data on breaking angles of chocolate cakes made using different recipes,
mixes, and cooking temperatures.
}
\usage{data(cake)}
\format{
  A data frame with 270 observations on the following 4 variables.
  \describe{
    \item{recipe}{Recipe used}
    \item{mix}{mix, a factor with 15 levels}
    \item{temp}{temperature (degrees Fahrenheit) at which cake baked}
    \item{y}{breaking angle (degrees)}
  }
}
\details{
These are data from an experiment in which six different
temperatures for cooking three recipes for chocolate cake were compared.  Each time a mix
was made using one of the recipes, enough batter was prepared for six cakes, which were
then randomly allocated to be cooked at the different temperatures.  
The response is the breaking angle, found by fixing one half of a slab of cake, then
pivoting the other half about the middle until breakage occurs.
 }
\source{
Cochran, W. G. and Cox, G. M. (1959) \emph{Experimental Designs}. Second
  edition.  New York: Wiley.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 454.
}
\examples{
data(cake)
}
\keyword{datasets}
