\name{rankSizeSlope}
\alias{rankSizeSlope}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
rankSizeSlope(m = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m}{
%%     ~~Describe \code{m} here~~
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
function (m = NULL) 
{
    if (is.null(m)) {
        return(list(rankSizeAlpha = NA, rankSizeRSquared = NA))
    }
    r_pop = raster(m)
    size = cellStats(r_pop, function(x, ...) {
        na.omit(log(x))
    })
    size = size[size > 0]
    size = sort(size, decreasing = TRUE)
    rank = log(1:length(size))
    if (length(size) > 0) {
        reg = lm(size ~ rank, data.frame(rank, size))
        return(list(rankSizeAlpha = reg$coefficients[2], rankSizeRSquared = summary(reg)$r.squared))
    }
    else {
        return(list(rankSizeAlpha = NA, rankSizeRSquared = NA))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
