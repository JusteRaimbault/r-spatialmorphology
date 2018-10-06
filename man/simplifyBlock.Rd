\name{simplifyBlock}
\alias{simplifyBlock}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
simplifyBlock(data, resFactor, areasize)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
}
  \item{resFactor}{
%%     ~~Describe \code{resFactor} here~~
}
  \item{areasize}{
%%     ~~Describe \code{areasize} here~~
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
function (data, resFactor, areasize) 
{
    m = matrix(data = data, nrow = areasize, byrow = TRUE)
    m[is.na(m)] <- 0
    res = matrix(0, areasize * resFactor, areasize * resFactor)
    for (x in 1:(areasize * resFactor)) {
        for (y in 1:(areasize * resFactor)) {
            res[x, y] = sum(m[((x - 1)/resFactor + 1):(x/resFactor), 
                ((y - 1)/resFactor + 1):(y/resFactor)])
        }
    }
    return(res)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
