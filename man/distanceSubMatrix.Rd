\name{distanceSubMatrix}
\alias{distanceSubMatrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
distanceSubMatrix(n_rows, n_cols, raster_cols, row_offset, col_offset)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n_rows}{
%%     ~~Describe \code{n_rows} here~~
}
  \item{n_cols}{
%%     ~~Describe \code{n_cols} here~~
}
  \item{raster_cols}{
%%     ~~Describe \code{raster_cols} here~~
}
  \item{row_offset}{
%%     ~~Describe \code{row_offset} here~~
}
  \item{col_offset}{
%%     ~~Describe \code{col_offset} here~~
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
function (n_rows, n_cols, raster_cols, row_offset, col_offset) 
{
    di = matrix(rep(cumsum(rep(1, n_rows)), n_cols), nrow = n_rows) + 
        row_offset
    dj = matrix(rep(cumsum(rep(1, n_cols)), n_rows), nrow = n_rows, 
        byrow = TRUE) + col_offset
    return(sqrt((abs(di - dj)\%/\%raster_cols)^2 + (abs(di - dj)\%\%raster_cols)^2))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
