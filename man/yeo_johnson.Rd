% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/yeo_johnson.R
\name{yeo_johnson}
\alias{yeo_johnson}
\title{Yeo-Johnson transformation}
\usage{
yeo_johnson(x, lambda = NULL, eps = 0.001)
}
\arguments{
\item{x}{a numeric vector of values to make normal.}

\item{lambda}{the value of the lambda parameter. When NULL, an appropriate value is estimated from the data.}

\item{eps}{the tolerance value under which lamba is considered to be 0 and that is used to choose the appropriate formula.}
}
\value{
A vector of transformed values, with an attribute to store the lambda value. The object if of class 'yeo_johnson' and can be used with \code{\link[=predict.yeo_johnson]{predict.yeo_johnson()}}.
}
\description{
Perform Yeo-Johnson transformation to attempt normalization.
}
\details{
The Yeo-Johnson is similar to the Box-Cox method, however it allows for the transformation of non-positive data as well.
}
\examples{
# simulate non-normal data
x <- rgamma(100, 1, 1)
hist(x)
# and make it more normal looking
hist(yeo_johnson(x))
}
\references{
Yeo, I. K., & Johnson, R. A. (2000). A new family of power transformations to improve normality or symmetry. Biometrika.
}
\seealso{
\code{\link[=predict.yeo_johnson]{predict.yeo_johnson()}} to apply the same transformation to a new dataset.
}
