terraformeR <- NULL

.onLoad <- function(libname, pkgname) {
    terraformeR <<- V8::v8()
    dep <- system.file("terraformer-arcgis-bundle.js", package = "terraformeR")
    terraformeR$source(dep)
}