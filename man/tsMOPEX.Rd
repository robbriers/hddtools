% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MOPEX.R
\name{tsMOPEX}
\alias{tsMOPEX}
\title{Interface for the MOPEX database of Daily Time Series}
\usage{
tsMOPEX(stationID, plotOption = FALSE, timeExtent = NULL)
}
\arguments{
\item{stationID}{hydrometric reference number (string)}

\item{plotOption}{boolean to define whether to plot the results. By default this is set to TRUE.}

\item{timeExtent}{is a vector of dates and times for which the data should be retrieved}
}
\value{
The function returns a data frame containing 2 time series (as zoo objects): "P" (precipitation) and "Q" (discharge).
}
\description{
This function extract the dataset containing daily rainfall and streamflow discharge at one of the MOPEX locations.
}
\examples{
\dontrun{
  stationID <- catalogueMOPEX()$stationID[1]
  BroadRiver <- tsMOPEX(stationID = stationID)
  BroadRiver <- tsMOPEX(stationID = stationID, plotOption = TRUE)
}

}
\author{
Claudia Vitolo
}

