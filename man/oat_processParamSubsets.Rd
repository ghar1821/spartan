% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robustness_analysis.R
\name{oat_processParamSubsets}
\alias{oat_processParamSubsets}
\title{Summarises stochastic, repeated, simulations for all robustness parameter sets into a single file.}
\usage{
oat_processParamSubsets(FILEPATH, PARAMETERS, NUMRUNSPERSAMPLE, MEASURES,
  RESULTFILENAME, ALTERNATIVEFILENAME, OUTPUTFILECOLSTART,
  OUTPUTFILECOLEND, CSV_FILE_NAME, BASELINE, PMIN = NULL, PMAX = NULL,
  PINC = NULL, PARAMVALS = NULL, TIMEPOINTS = NULL,
  TIMEPOINTSCALE = NULL, check_done = FALSE)
}
\arguments{
\item{FILEPATH}{Directory where either the simulation runs or single CSV file result can be found}

\item{PARAMETERS}{Array containing the names of the parameters for which local analyses are being conducted}

\item{NUMRUNSPERSAMPLE}{The number of runs performed for each parameter subset. This figure is generated through Aleatory Analysis}

\item{MEASURES}{Array containing the names of the output measures which are used to analyse the simulation}

\item{RESULTFILENAME}{Name of the simulation results file. In the current version, XML and CSV files can be processed. If performing this analysis over multiple timepoints, it is assumed that the timepoint follows the file name, e.g. trackedCells_Close_12.csv.}

\item{ALTERNATIVEFILENAME}{In some cases, it may be relevant to read from a further results file if he initial file contains no results. This filename is set here.}

\item{OUTPUTFILECOLSTART}{Column number in the simulation results file where output begins - saves (a) reading in unnecessary data, and (b) errors where the first column is a label, and therefore could contain duplicates.}

\item{OUTPUTFILECOLEND}{Column number in the simulation results file where the last output measure is. Only required if running the first method.}

\item{CSV_FILE_NAME}{Name of the file created that summarises the median value of each measure for every run. This specifies what that file should be called (e.g. Medians.csv).}

\item{BASELINE}{Array containing the values assigned to each of these parameters in the calibrated baseline}

\item{PMIN}{Array containing the minimum value that should be used for each parameter.  Sets a lower bound on sampling space}

\item{PMAX}{Array containing the maximum value that should be used for each parameter.  Sets an upper bound on sampling space}

\item{PINC}{Array containing the minimum value that should be used for each parameter.  Sets a lower bound on sampling space}

\item{PARAMVALS}{Array containing a list of strings for each parameter, each string containing comma separated values that should be assigned to that parameter. Thus sampling can be performed for specific values for each parameter, rather than a uniform incremented value. This replaces the PMIN, PMAX, and PINC where this method is used}

\item{TIMEPOINTS}{Implemented so this method can be used when analysing multiple simulation timepoints. If only analysing one timepoint, this should be set to NULL. If not, this should be an array of timepoints, e.g. c(12,36,48,60)}

\item{TIMEPOINTSCALE}{Implemented so this method can be used when analysing multiple simulation timepoints. Sets the scale of the timepoints being analysed, e.g. "Hours"}

\item{check_done}{Whether the input has been checked (used when doing multiple timepoints)}
}
\description{
This method should only be used for stochastic simulations where the data is
provided in the set folder structure (see the spartan R Journal paper). Each
parameter, and all values that it has been assigned, are examined in turn.
For each replicate run under those parameter conditions, the median of the
simulation response is calculated. These medians for each simulation replicate,
of each parameter set, are stored in a CSV file, creating the same single CSV
file format that can also be provided as Spartan input. This file is named
as stated in parameter CSV_FILE_NAME. This method can be performed for a number
of simulation timepoints, producing these statistics for each timepoint taken.
}
