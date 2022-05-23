
# library(V8)

# terraformer <- v8()
# terraformer$source("https://unpkg.com/terraformer@1.0.8/terraformer.js")

# terraformer$assign("vehicles", cars[1:3, ])
# terraformer$get("vehicles")
# cat(terraformer$eval("JSON.stringify(vehicles, null, 2);"))


#' @export
test <- function() {



    # terraformer$call("Terraformer.ArcGIS.parse", V8::JS("{x: -122.6764, y: 45.5165, spatialReference: {wkid: 4326}}"))
}

#' @export
#' // parse an ArcGIS Geometry to GeoJSON
parseArcGISGeometry <- function(json) {
    json <- jsonlite::toJSON(
        list(
            x = -122.6764,
            y = 45.5165,
            "spatialReference" = list(wkid = 4326)
        ),
        auto_unbox = TRUE
    )

    terraformer$call(
        "Terraformer.ArcGIS.parse",
        V8::JS(json)
    )
}