\name{bard}
\alias{bard}
\docType{data}
\title{Shakespeare's Word Type Frequencies}
\description{
These are the frequencies with which Shakespeare used word types.
There are 846 word types which appear more than 100 times in his
total works, giving an overall total of 31534 word types.
}
\usage{data(bard)}
\format{
  A data frame with 100 observations on the following 2 variables.
  \describe{
    \item{r}{Number of times a word type is used}
    \item{n}{Number of word types used r times}
  }
}
\details{
The canon of Shakespeare's accepted works contains 884,647 words, with
31,534 distinct word types.  A word type is a distinguishable arrangement 
of letters, so `king' is different from `kings' and `alehouse' different 
from both `ale' and `house'. 
}
\source{Efron, B. and Thisted, R. (1976) Estimating the number of 
unseen species: How many words did Shakespeare know? \emph{Biometrika}, 
\bold{63},  435--448.  

Thisted, R. and Efron, B. (1987 ) Did Shakespeare write a newly-discovered poem? 
\emph{Biometrika}, \bold{74}, 445--455. 
}
\references{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 629.
}
\keyword{datasets}
