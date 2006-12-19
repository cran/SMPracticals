\name{marking}
\alias{marking}
\docType{data}
\title{Examination Marking Data}
\description{
 The data are from an experiment to compare how different markers assess examination
scripts, some of which were original and others of which were photocopies.
}
\usage{data(marking)}
\format{
  A data frame with 32 observations on the following 5 variables.
  \describe{
    \item{Exam}{Two exams were marked}
    \item{Script}{Scripts from 8 persons were marked, coded \code{1}-\code{8}.}
    \item{Marker}{Coded \code{1}-\code{4}}
    \item{Original}{Is the script an original (1) or a photocopy (0)?}
    \item{y}{The mark out of 80 attributed by the marker.}
  }
}
\details{
Normally each marker had a different batch of
scripts, but for the experiment one script was taken at random from each batch
and replaced after three copies of it had been made.  The three copies
were sent to the other three markers who assessed them, while the 
original was replaced and assessed in the usual way.  Each of the four
copies was therefore assessed by a single marker, but the three markers
who had a copy knew that the script was part of the experiment, while
the person marking the original did not know it to be part of the
experiment.  The experiment was repeated at another examination, with
the same examiners, but different scripts.  }
\source{
Lindley, D. V. (1961) An experiment in the marking of an examination (with Discussion).
\emph{Journal of the Royal Statistical Society, series A}, \bold{124}, 285--313.
}
\examples{
data(marking)
## maybe str(marking) ; plot(marking) ...
}
\keyword{datasets}
