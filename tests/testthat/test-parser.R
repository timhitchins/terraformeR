test_that("parser returns valid geojson", {
  json <- jsonlite::toJSON(
    list(
      x = -122.6764,
      y = 45.5165,
      "spatialReference" = list(wkid = 4326)
    ),
    auto_unbox = TRUE
  )

  arc_geometry <- arcgis_parse(json)

  expect_true(is.list(arc_geometry))
})

test_that("converter returns valid json", {
  json <- jsonlite::toJSON(
    list(
      type = "Point",
      coordinates = list(45.5165, -122.6764)
    ),
    auto_unbox = TRUE
  )

  geojson <- arcgis_convert(json)

  expect_true(is.list(geojson))
})