% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mask_extreme.R
\name{mask_extreme}
\alias{mask_extreme}
\title{Replace extreme values by NA}
\usage{
mask_extreme(x, percent = c(0.5, 0.5))
}
\arguments{
\item{x}{a numeric vector.}

\item{percent}{a vector of length 2 containing the percentage of data to replace by NA at the low end and at the high end of x. If percent contains only one number, this percentage is removed at both ends.}
}
\value{
The input vector with NA where the extreme were.
}
\description{
Compute quantiles of the input data and replace data beyond a given quantile by NA.
}
\examples{
x <- rgamma(1000, 1, 1)
hist(x)
# remove 0.5\% at both ends
hist(mask_extreme(x))
# remove at the high end (shorten the long tail)
hist(mask_extreme(x, c(0,1)))
# remove at the low end (little change)
hist(mask_extreme(x, c(1,0)))
}
