test_that("parser returns valid geojson", {
  json <- jsonlite::toJSON(
    list(
      x = -122.6764,
      y = 45.5165,
      "spatialReference" = list(wkid = 4326)
    ),
    auto_unbox = TRUE
  )

  arc_geometry <- parseArcGISGeometry(json)

  expect_true(is.list(arc_geometry))
})