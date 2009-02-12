\name{pollution}
\alias{pollution}
\docType{data}
\title{Air Pollution and Mortality}
\description{
Data on the relation between weather, socioeconomic, and air pollution variables
and mortality rates in 60 Standard Metropolitan Statistical Areas (SMSAs) of the
USA, for the years 1959-1961.  Some of the variables are highly collinear.
}
\usage{data(pollution)}
\format{
  A data frame with 60 observations on the following variables.
  \describe{
    \item{prec}{Average annual precipitation in inches}
    \item{jant}{Average January temperature in degrees F}
    \item{jult}{Average July temperature in degrees F}
    \item{ovr95}{Percentage of 1960 SMSA population aged 65 or older}
    \item{popn}{Average household size}
    \item{educ}{Median school years completed by those over 22}
    \item{hous}{percentage of housing units which are sound and with all facilities}
    \item{dens}{Population per square mile in urbanized areas, 1960}
    \item{nonw}{Percentage non-white population in urbanized areas, 1960}
    \item{wwdrk}{Percentage  employed in white collar occupations}
    \item{poor}{Percentage  of families with income < 3000 dollars}
    \item{hc}{Relative hydrocarbon pollution potential}
    \item{nox}{Same for nitric oxides}
    \item{so}{Same for sulphur dioxide}
    \item{humid}{Annual average percentage relative humidity at 1pm}
    \item{mort}{Total age-adjusted mortality rate per 100,000}
  }
}
\source{
McDonald, G. C. and Schwing, R. C. (1973) Instabilities of regression
estimates relating air pollution to mortality, \emph{Technometrics}, \bold{15}, 463-482.
}
\examples{
data(pollution)
## maybe str(pollution) ; plot(pollution) ...
}
\keyword{datasets}
