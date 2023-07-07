\name{print.xts}
\alias{print.xts}
\title{ Print An xts Time-Series Object }
\description{
  Method for printing an extensible time-series object.
}
\usage{
\method{print}{xts}(x, fmt, ..., show.attrs = TRUE, attr.trunc = 50, show.rows = 10, max.rows = 100)
}

\arguments{
  \item{x}{ An xts object }
  \item{fmt}{ Passed to \code{\link{coredata}} to format the time index }
  \item{\dots}{ Arguments passed to other methods }
  \item{show.attrs}{ Whether xtsAttributes should also be printed }
  \item{attr.trunc}{ Number of characters to be printed for xtsAttributes. }
  \item{show.rows}{ The number of first and last rows to print if the number of
      rows is truncated (default 10, or \code{getOption("xts.print.show.rows")}) }
  \item{max.rows}{ The output will contain at most \code{max.rows} rows before
      being truncated (default 100, or \code{getOption("xts.print.max.rows")}) }
}
%\details{
% Add notes about truncated rows, columns, any addition descriptive information we add
%
%}
\value{
  Returns \code{x} invisibly.
}
\author{ Joshua M. Ulrich }
\examples{
data(sample_matrix)
sample.xts <- as.xts(sample_matrix)

# output is truncated and shows first and last 10 observations
print(sample.xts)

# show the first and last 5 observations
print(sample.xts, show.rows = 5)

# with xtsAttributes
xtsAttributes(sample.xts) <- list(name = "sample xts object", min = min(sample.xts), max = max(sample.xts))
print(sample.xts)
}
\keyword{ print }
