\name{moranPoints}
\alias{moranPoints}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
moranPoints(points, varcol, weights = spatialWeightsPoints(points))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{points}{
%%     ~~Describe \code{points} here~~
}
  \item{varcol}{
%%     ~~Describe \code{varcol} here~~
}
  \item{weights}{
%%     ~~Describe \code{weights} here~~
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
function (points, varcol, weights = spatialWeightsPoints(points)) 
{
    v = points[[varcol]]
    v = v - mean(v)
    num = sum(weights * (Diagonal(v) \%*\% Diagonal(v)))
    denom = sum(v^2)
    normalization = nrow(points)/sum(weights)
    return(normalization * num/denom)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
