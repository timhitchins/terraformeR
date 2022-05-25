#' @export
geojson_to_arcgis <- function(json, id = NULL) {
    # parse an ArcGIS Geometry to GeoJSON
    tryCatch(
        {
            terraformer$call(
                "Terraformer.geojsonToArcGIS",
                V8::JS(json),
                id
            )
        },
        error = function(e) {
            stop(paste("An error occurred:", e))
        }
    )
}

#' @export
arcgis_to_geojson <- function(json, id = NULL) {
    # convert a GeoJSON object into an ArcGIS geometry
    tryCatch(
        {
            terraformer$call(
                "Terraformer.arcgisToGeoJSON",
                V8::JS(json),
                id
            )
        },
        error = function(e) {
            stop(paste("An error occurred:", e))
        }
    )
}