#' @export
arcgis_parse <- function(json) {
    # parse an ArcGIS Geometry to GeoJSON

    terraformer$call(
        "Terraformer.ArcGIS.parse",
        V8::JS(json)
    )
}

#' @export
arcgis_convert <- function(json) {
    # convert a GeoJSON object into an ArcGIS geometry

    terraformer$call(
        "Terraformer.ArcGIS.convert",
        V8::JS(json)
    )
}

#' @export
arcgis_parse2 <- function(json) {
    # convert a GeoJSON object into an ArcGIS geometry
    # test using the new repo https://github.com/terraformer-js/terraformer/blob/main/packages/arcgis/README.md

    terraformer$call(
        "Terraformer2.arcgisToGeoJSON",
        V8::JS(json)
    )
}