terraformer <- NULL

.onLoad <- function(libname, pkgname) {
    terraformer <<- V8::v8()
    dep <- system.file("terraformer-arcgis-bundle.js", package = "terraformer")
    terraformer$source(dep)
}