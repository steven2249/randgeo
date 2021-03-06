context("wkt_polygon")

test_that("wkt_polygon works", {
  skip_on_cran()

  aa <- wkt_polygon()

  expect_is(aa, "character")
  expect_match(aa, "POLYGON")
  expect_match(aa, "\\(\\(")
  expect_match(aa, "\\)\\)")

  xx <- as.numeric(
    strsplit(regmatches(aa, regexpr('[0-9.-]+\\s[0-9.-]+', aa)), " ")[[1]]
  )
  lng <- xx[1]
  lat <- xx[2]

  # lng is between -180 and 180
  expect_lte(abs(lng), 180)

  # lat is between -90 and 90
  expect_lte(abs(lat), 90)
})
