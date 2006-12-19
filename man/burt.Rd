\name{burt}
\alias{burt}
\docType{data}
\title{IQs of identical twins}
\description{
 These are said to be measurements of IQ scores for pairs of identical 
twins, the first raised by foster parents and the second raised 
by natural parents, published by Sir Cyril Burt. Cases are divided into groups according to 
parents' social class, A-C, labelled 1-3.
 The general objective 
is to assess the impact of social class, and in particular the 
effect of environment,  on IQ.

}
\usage{data(burt)}
\format{
  A data frame with 27 observations on the following 3 variables.
  \describe{
    \item{y}{IQ score for twin raised in foster home}
    \item{x}{IQ score for twin raised by natural parents}
    \item{class}{Social class of twins}
  }
}
\details{
Burt used these and similar data to argue that IQ was largely inherited, a view which strongly
influenced British education through the creation of the 11+ exam, which was used to decide
which children should be given different forms of education.  However after his death it was
suggested that the data were fake, a view accepted by some and strongly rebutted by others.
}
\source{
Unpublished lecture notes of David Hinkley.
}
\references{
For information about Burt, see www.indiana.edu/~intell/burt.shtml  
}
\examples{
data(burt)
attach(burt)
par(pty="s")
plot(x,y,type="n",xlim=c(60,140),ylim=c(60,140))
text(x,y,class,cex=0.8)
abline(0,1,lty=2)
}
\keyword{datasets}
