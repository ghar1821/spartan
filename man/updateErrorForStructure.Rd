% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neural_network_utilities.R
\name{updateErrorForStructure}
\alias{updateErrorForStructure}
\title{Add the MSE for a newly examined structure to the list of those already seen}
\usage{
updateErrorForStructure(network_ms_errors, network_struc, average_errors,
  measures)
}
\arguments{
\item{network_ms_errors}{Mean Squared errors for a newly evaluated structure}

\item{network_struc}{The network structure evaluated}

\item{average_errors}{The current list of MSEs for all structures being
evaluated}

\item{measures}{Names of the simulation responses that form the output
node of the neural network}
}
\description{
Add the MSE for a newly examined structure to the list of those already seen
}
