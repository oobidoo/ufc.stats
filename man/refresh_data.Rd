% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/refresh_data.R
\name{refresh_data}
\alias{refresh_data}
\title{Refresh UFC data with the latest fights}
\usage{
refresh_data()
}
\value{
The latest version of ufc_stats data.frame.
}
\description{
Retrieve the latest ufc_stats data.frame from GitHub. This function will also automatically overwrite the current rda contained in the package.
}
