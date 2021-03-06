\name{knapsack}
\alias{knapsack}
\title{
  0-1 Knapsack Problem
}
\description{
  Solves the 0-1 (binary) single knapsack problem.
}
\usage{
knapsack(w, p, cap)
}
\arguments{
  \item{w}{integer vector of weights.}
  \item{p}{integer vector of profits.}
  \item{cap}{maximal capacity of the knapsack, integer too.}
}
\details{
  \code{knapsack} solves the 0-1, or: binary, single knapsack problem by
  using the dynamic programming approach. The problem can be formulated as:

  Maximize \code{sum(x*p)} such that \code{sum(x*w) <= cap}, where \code{x}
  is a vector with \code{x[i] == 0 or 1}.
}
\value{
  A list with components \code{capacity}, \code{profit}, and \code{indices}.
}
\note{
  Will be replaced by a compiled version.
}
\author{
  HwB  email: <hwborchers@googlemail.com>
}
\references{
  Papadimitriou, C. H., and K. Steiglitz (1998). Combinatorial Optimization:
  Algorithms and Complexity. Dover Publications 1982, 1998.

  Horowitz, E., and S. Sahni (1978). Fundamentals of Computer Algorithms.
  Computer Science Press, Rockville, ML.
}
\seealso{
  \code{knapsack::knapsack}
}
\examples{
# Example 1
p <- c(15, 100, 90, 60, 40, 15, 10,  1)
w <- c( 2,  20, 20, 30, 40, 30, 60, 10)
cap <- 102
(is <- knapsack(w, p, cap))
# [1] 1 2 3 4 6 , capacity 102 and total profit 280

## Example 2
p <- c(70, 20, 39, 37, 7, 5, 10)
w <- c(31, 10, 20, 19, 4, 3,  6)
cap <- 50
(is <- knapsack(w, p, cap))
# [1] 1 4 , capacity 50 and total profit 107
}
\keyword{ optimize }
