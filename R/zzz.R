terraformer <- NULL

.onLoad <- function(libname, pkgname) {
    terraformer <<- V8::v8()
    dep_core <- system.file("terraformer-bundle.js", package = "terraformer")
    dep_parser <- system.file("terraformer-parser-bundle.js", package = "terraformer")
    dep_wkt <- system.file("terraformer-wkt-bundle.js", package = "terraformer")


    terraformer$source(dep_core)
    terraformer$source(dep_parser)
    terraformer$source(dep_wkt)
}