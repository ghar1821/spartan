% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emulation_utilities.R
\name{extract_predictions_from_result_list}
\alias{extract_predictions_from_result_list}
\title{Internal function used to extract the predictions made in emulation generation from a list}
\usage{
extract_predictions_from_result_list(model_predictions, technique,
  measures)
}
\arguments{
\item{model_predictions}{Predictions that have been generated by an emulator}

\item{technique}{The machine learning technique used to develop the emulator}

\item{measures}{Simulation responses the model should predict}
}
\value{
Predicted results extracted from the model_predictions list
}
\description{
Internal function used to extract the predictions made in emulation generation from a list
}
\keyword{internal}
