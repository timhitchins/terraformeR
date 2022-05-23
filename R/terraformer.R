#' @export
parseArcGISGeometry <- function(json) {
    # parse an ArcGIS Geometry to GeoJSON

    terraformer$call(
        "Terraformer.ArcGIS.parse",
        V8::JS(json)
    )
}