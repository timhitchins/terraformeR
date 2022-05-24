test_that("parser returns valid geojson", {
  json <- jsonlite::toJSON(
    list(
      x = -122.6764,
      y = 45.5165,
      "spatialReference" = list(wkid = 4326)
    ),
    auto_unbox = TRUE
  )

  arcgis_json <- arcgisToGeoJSON(json)

  expect_true(is.list(arcgis_json))
})

test_that("converter returns valid json", {
  json <- jsonlite::toJSON(
    list(
      type = "Point",
      coordinates = list(45.5165, -122.6764)
    ),
    auto_unbox = TRUE
  )

  geojson <- geojsonToArcGIS(json)

  expect_true(is.list(geojson))
})