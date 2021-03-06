% Generated by roxygen2 (4.0.1): do not edit by hand
\name{makeNaryFunctionFitnessFunction}
\alias{makeNaryFunctionFitnessFunction}
\title{Create a fitness function from a n-ary reference function}
\usage{
makeNaryFunctionFitnessFunction(func, dim, designFunction = gridDesign,
  errorMeasure = rmse, indsizelimit = NA, ...)
}
\arguments{
\item{func}{The reference function. Its single argument must be numeric
vector of length \code{dim} and it must return a scalar numeric.}

\item{dim}{The dimension of the reference function.}

\item{designFunction}{A function to generate sample points. Its first
argument must be \code{dim}. Defaults to \code{\link{gridDesign}}.}

\item{errorMeasure}{A function to use as an error measure, defaults to RMSE.}

\item{indsizelimit}{Individuals exceeding this size limit will get
a fitness of \code{Inf}.}

\item{...}{Additional arguments to the \code{designFunction}.}
}
\value{
A fitness function based on the reference function \code{func}.
}
\description{
Creates a fitness function that calculates an error measure with
respect to an arbitrary n-ary reference function based sample points
generated by a given \code{designFunction}.
When an \code{indsizelimit} is given, individuals exceeding this
limit will receive a fitness of \code{Inf}.
}
\seealso{
\code{\link{latinHypercubeDesign}}, \code{\link{gridDesign}},
}

