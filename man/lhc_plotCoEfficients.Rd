% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lhc_plotting.R
\name{lhc_plotCoEfficients}
\alias{lhc_plotCoEfficients}
\title{Plots the PRCC coefficients against each other for ease of comparison}
\usage{
lhc_plotCoEfficients(FILEPATH, CORCOEFFSOUTPUTFILE, MEASURES, PRINTOPT,
  TIMEPOINTS = NULL, TIMEPOINTSCALE = NULL)
}
\arguments{
\item{FILEPATH}{Location of the LHC result set}

\item{CORCOEFFSOUTPUTFILE}{Name of the CSV file in FILEPATH containing
the Partial Rank Correlation Coefficients}

\item{MEASURES}{Names of the simulation responses}

\item{PRINTOPT}{Used in plotting Partial Rank Correlation Coefficients,
should be either "ALL" or "INDIVIDUAL"}

\item{TIMEPOINTS}{Implemented so this method can be used when analysing
multiple simulation timepoints. If only analysing one timepoint, this
should be set to NULL. If not, this should be an array of timepoints,
e.g. c(12,36,48,60)}

\item{TIMEPOINTSCALE}{Implemented so this method can be used when
analysing multiple simulation timepoints. Sets the scale of the timepoints
being analysed, e.g. "Hours"}
}
\description{
Plots the Partial Rank Correlation Coefficients for either all measures
or for one individual measure, for all simulation parameters.
}
