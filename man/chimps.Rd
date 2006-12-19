\name{chimps}
\alias{chimps}
\docType{data}
\title{Chimpanzee Learning Data}
\description{
These are the times in minutes taken for four chimpanzees to learn each of four 
words.
}
\usage{data(chimps)}
\format{
  A data frame with 40 observations on the following 3 variables.
  \describe{
    \item{chimp}{a factor with levels 1-4}
    \item{word}{a factor with 1-10}
    \item{y}{learning time (minutes)}
  }
}
\source{
Brown, B. W. and Hollander, M. (1977) \emph{Statistics: A Biomedical
  Introduction}. New York: Wiley.
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 485.
}
\examples{
data(chimps)
anova(glm(y~chimp+word,Gamma(log),data=chimps),test="F")
anova(glm(y~word+chimp,Gamma(log),data=chimps),test="F")
}
\keyword{datasets}
