#' Random WKT point
#'
#' @export
#' @param count (integer/numeric) number of Polygons. Default: 1
#' @param bbox (integer/numeric) bounding box, numeric vector of the form
#' \code{west, south, east, north}. optional
#' @param fmt (integer/numeric) number of digits. Default: 7
#' @return WKT; a character vector with one ore more POINT strings
#' @examples
#' wkt_point()
#' wkt_point(10)
#' wkt_point(100)
#'
#' wkt_point(fmt = 5)
#' wkt_point(fmt = 6)
#' wkt_point(fmt = 7)
wkt_point <- function(count = 1, bbox = NULL, fmt = 7) {
  assert(fmt, c('numeric', 'integer'))

  res <- geo_point(count, bbox)
  unlist(
    lapply(res$features, function(z) to_wkt_pt(z$geometry$coordinates, fmt))
  )
}
