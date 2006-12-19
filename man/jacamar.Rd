\name{jacamar}
\alias{jacamar}
\docType{data}
\title{Jacamar Learning Ability Data}
\description{
Response of a rufous-tailed jacamar to butterflies, by not attacking them,
by attacking but not eating them, and by attacking and eating them.
}
\usage{data(jacamar)}
\format{
  A data frame with 48 observations on the following 5 variables.
  \describe{
    \item{species}{Butterfly species: Aphrissa boisduvalli (Ab), 
Phoebis argante (Pa), Dryas iulia (Di),  Pierella luna (Pl), Consul fabius (Cf), 
Siproeta stelenes (Ss)}
    \item{colour}{colour butterfly wings were painted: Unpainted, Brown, 
Yellow, Blue, Green, Red, Orange, Black}
    \item{N}{Number not attacked}
    \item{S}{Number attacked but rejected}
    \item{E}{Number eaten}
  }
}
\details{
As part of a study of the learning ability of tropical birds, Peng Chai 
of the University of Texas at
Austin collected data on the response of a rufous-tailed jacamar
 to butterflies.  He used marker pens to paint the underside 
of the wings of eight species of butterflies, and then 
released each butterfly in the cage where the bird was confined.  
The bird responded in three ways: by not attacking the butterfly
 (N); by attacking the butterfly, then sampling but rejecting it 
(S); or by attacking and eating the butterfly, usually after 
removing some or all of the wings (E).
}
\source{
Davison, A. C. (2003)  \emph{Statistical Models}.  Cambridge University Press.
Page 470.
}
\examples{
data(jacamar)
}
\keyword{datasets}
