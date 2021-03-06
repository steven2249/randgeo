% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geo_point.R
\name{geo_point}
\alias{geo_point}
\title{Random GeoJSON point}
\usage{
geo_point(count = 1, bbox = NULL)
}
\arguments{
\item{count}{(integer/numeric) number of Polygons. Default: 1}

\item{bbox}{(integer/numeric) bounding box, numeric vector of the form
\code{west, south, east, north}. optional}
}
\value{
GeoJSON; a list with one ore more Points in a FeatureCollection
}
\description{
Random GeoJSON point
}
\examples{
geo_point()
geo_point(10)
geo_point(bbox = c(50, 50, 60, 60))
}

