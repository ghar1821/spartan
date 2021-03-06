% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/efast_analysis_netlogo.R
\name{efast_netlogo_get_overall_medians}
\alias{efast_netlogo_get_overall_medians}
\title{Deprecated: Use \code{efast_netlogo_get_overall_medians}}
\usage{
efast_netlogo_get_overall_medians(FILEPATH, NUMCURVES, PARAMETERS,
  NUMSAMPLES, MEASURES, TIMEPOINTS = NULL, TIMEPOINTSCALE = NULL)
}
\arguments{
\item{FILEPATH}{Directory where the simulation runs can be found, in folders
or in CSV file format}

\item{NUMCURVES}{The number of 'resamples' to perform (see eFAST
documentation) - recommend using at least 3}

\item{PARAMETERS}{Array containing the names of the parameters of which
parameter samples will be generated}

\item{NUMSAMPLES}{The number of parameter subsets that were generated in
the eFAST design}

\item{MEASURES}{Array containing the names of the output measures which
are used to analyse the simulation}

\item{TIMEPOINTS}{Implemented so this method can be used when analysing
multiple simulation timepoints. If only analysing one timepoint, this
should be set to NULL. If not, this should be an array of timepoints,
e.g. c(12,36,48,60)}

\item{TIMEPOINTSCALE}{Sets the scale of the timepoints being analysed,
e.g. "Hours"}
}
\description{
Deprecated: Use \code{efast_netlogo_get_overall_medians}
}
