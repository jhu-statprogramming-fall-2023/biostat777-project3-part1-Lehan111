\name{agreg.fit}
\alias{agreg.fit}
\alias{coxph.fit}
\title{Cox model fitting functions}
\description{
  These are the the functions called by coxph that do the actual
  computation.
  In certain situations, e.g. a simulation, it may be advantageous to
  call these directly rather than the usual \code{coxph} call using
  a model formula.
}
\usage{
agreg.fit(x, y, strata, offset, init, control, weights, method,
rownames, resid=TRUE, nocenter=NULL)
coxph.fit(x, y, strata, offset, init, control, weights, method,
rownames, resid=TRUE, nocenter=NULL)
}
\arguments{
  \item{x}{Matix of predictors.  This should \emph{not} include an
    intercept.}

  \item{y}{a \code{Surv} object containing either 2 columns (coxph.fit)
    or 3 columns (agreg.fit).}

  \item{strata}{a vector containing the stratification, or NULL}
  \item{offset}{optional offset vector}
  \item{init}{initial values for the coefficients}
  \item{control}{the result of a call to \code{coxph.control}}
  \item{weights}{optional vector of weights}
  \item{method}{method for handling ties, one of "breslow" or "efron"}
  \item{rownames}{this is only needed for a NULL model, in which case it
    contains the rownames (if any) of the original data.}
  \item{resid}{compute and return residuals.}
  \item{nocenter}{an optional list of values. Any column of the X matrix
    whose values lie strictly within that set will not be recentered.
  Note that the coxph function has (-1, 0, 1) as the default.}
}
\details{
This routine does no checking that arguments are the proper length or
type.
Only use it if you know what you are doing!

The \code{resid} and \code{concordance} arguments will save some compute
time for calling routines that only need the likelihood,
the generation of a permutation distribution for instance.
}
\value{
  a list containing results of the fit}
\author{Terry Therneau}
\seealso{\code{\link{coxph}}}
\keyword{ survival }
