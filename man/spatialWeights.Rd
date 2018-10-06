\name{spatialWeights}
\alias{spatialWeights}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
spatialWeights(N, P, rescaleFactor = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{N}{
%%     ~~Describe \code{N} here~~
}
  \item{P}{
%%     ~~Describe \code{P} here~~
}
  \item{rescaleFactor}{
%%     ~~Describe \code{rescaleFactor} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (N, P, rescaleFactor = 1) 
{
    d_hor = (matrix(rep(cumsum(matrix(1, 2 * N + 1, 1)), 2 * 
        P + 1), nrow = 2 * N + 1) - N - 1)^2
    d_ver = (matrix(rep(cumsum(matrix(1, 2 * P + 1, 1)), 2 * 
        N + 1), ncol = 2 * P + 1, byrow = TRUE) - P - 1)^2
    w = 1/(rescaleFactor * sqrt((d_hor^2 + d_ver^2)))
    w[w == Inf] = 0
    return(w)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
