\name{teak}
\alias{teak}
\docType{data}
\title{Teak Plant Data}
\description{
These are data from an experiment on the growth of teak plants after one season, using
two planting methods and three root lengths.  Plants were laid out in four randomised 
blocks, each consisting of 6 plots with 50 plants in each plot.
}
\usage{data(teak)}
\format{
  A data frame with 24 observations on the following 4 variables.
  \describe{
    \item{Block}{Block labels.}
    \item{Plant}{\code{A} indicates planting using pits, \code{B} using crowbar.}
    \item{Root}{length,  \code{4}, \code{6} or \code{8} inches.}
    \item{y}{mean height (inches) of the 50 plants grown on each plot.}
  }
}
\source{
Unpublished lecture notes, Imperial College, London.
}
\examples{
data(teak)
anova(lm(y~Block*Plant*Root,data=teak),test="F")
}
\keyword{datasets}
