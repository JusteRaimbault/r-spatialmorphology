\name{convolMoran}
\alias{convolMoran}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
convolMoran(r_pop)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{r_pop}{
%%     ~~Describe \code{r_pop} here~~
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
function (r_pop) 
{
    meanPop = cellStats(r_pop, sum)/ncell(r_pop)
    w = spatialWeights(nrow(r_pop) - 1, ncol(r_pop) - 1)
    return(ncell(r_pop) * cellStats(focal(r_pop - meanPop, w, 
        sum, pad = TRUE, padValue = 0) * (r_pop - meanPop), sum)/cellStats((r_pop - 
        meanPop) * (r_pop - meanPop), sum)/cellStats(focal(raster(matrix(data = rep(1, 
        ncell(r_pop)), nrow = nrow(r_pop))), w, sum, pad = TRUE, 
        padValue = 0), sum))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
