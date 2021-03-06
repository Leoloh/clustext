% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cosine_distance.R
\name{cosine_distance}
\alias{cosine_distance}
\alias{cosine_distance.DocumentTermMatrix}
\alias{cosine_distance.TermDocumentMatrix}
\title{Optimized Computation of Cosine Distance}
\usage{
cosine_distance(x, ...)

\method{cosine_distance}{DocumentTermMatrix}(x, ...)

\method{cosine_distance}{TermDocumentMatrix}(x, ...)
}
\arguments{
\item{x}{A data type (e.g., \code{\link[tm]{DocumentTermMatrix}} or
\code{\link[tm]{TermDocumentMatrix}}).}

\item{\ldots}{ignored.}
}
\value{
Returns a cosine distance object of class \code{"dist"}.
}
\description{
Utilizes the \pkg{slam} package to efficiently calculate cosine distance
on large sparse matrices.
}
\examples{
library(gofastr)
library(dplyr)

out <- presidential_debates_2012 \%>\%
    with(q_dtm(dialogue)) \%>\%
    cosine_distance()
}
\author{
Michael Andrec and Tyler Rinker <tyler.rinker@gmail.com>.
}
\references{
\url{http://stackoverflow.com/a/29755756/1000343}
}
\keyword{cosine}
\keyword{dissimilarity}

