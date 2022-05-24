#' @export
geojsonToArcGIS <- function(json, id = NULL) {
    # parse an ArcGIS Geometry to GeoJSON

    terraformer$call(
        "Terraformer.geojsonToArcGIS",
        V8::JS(json),
        id
    )
}

#' @export
arcgisToGeoJSON <- function(json, id = NULL) {
    # convert a GeoJSON object into an ArcGIS geometry

    terraformer$call(
        "Terraformer.arcgisToGeoJSON",
        V8::JS(json),
        id
    )
}