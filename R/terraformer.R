#' @export
geojsonToArcGIS <- function(json) {
    # parse an ArcGIS Geometry to GeoJSON

    terraformer$call(
        "Terraformer.geojsonToArcGIS",
        V8::JS(json)
    )
}

#' @export
arcgisToGeoJSON <- function(json) {
    # convert a GeoJSON object into an ArcGIS geometry
    # test using the new repo https://github.com/terraformer-js/terraformer/blob/main/packages/arcgis/README.md

    terraformer$call(
        "Terraformer.arcgisToGeoJSON",
        V8::JS(json)
    )
}