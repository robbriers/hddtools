% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GRDC.R
\name{catalogueGRDC}
\alias{catalogueGRDC}
\title{Data source: Global Runoff Data Centre catalogue}
\usage{
catalogueGRDC(areaBox = NULL, columnName = NULL, columnValue = NULL,
  mdDescription = FALSE, useCachedData = TRUE)
}
\arguments{
\item{areaBox}{bounding box, a list made of 4 elements: minimum longitude (lonMin), minimum latitude (latMin), maximum longitude (lonMax), maximum latitude (latMax)}

\item{columnName}{name of the column to filter}

\item{columnValue}{value to look for in the column named columnName}

\item{mdDescription}{boolean value. Default is FALSE (no description is printed)}

\item{useCachedData}{logical, set to TRUE to use cached data, set to FALSE to retrive data from online source. This is TRUE by default.}
}
\value{
This function returns a data frame made of 8966 rows (gauging stations, as per October 2016) and 44 columns containing metadata.
}
\description{
This function interfaces the Global Runoff Data Centre database which provides river discharge data for about 9000 sites over 157 countries.
}
\examples{
\dontrun{
  # Retrieve the whole catalogue
  GRDC_catalogue_all <- catalogueGRDC()

  # Define a bounding box
  areaBox <- raster::extent(-3.82, -3.63, 52.41, 52.52)
  # Filter the catalogue based on bounding box
  GRDC_catalogue_bbox <- catalogueGRDC(areaBox = areaBox)

  # Get only catchments with area above 5000 Km2
  GRDC_catalogue_area <- catalogueGRDC(columnName = "area",
                                       columnValue = ">= 5000")

  # Get only catchments within river Thames
  GRDC_catalogue_river <- catalogueGRDC(columnName = "river",
                                        columnValue = "Thames")
}

}
\author{
Claudia Vitolo
}

