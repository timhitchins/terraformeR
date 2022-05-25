# terraformeR

### Wrappers for parsing and creating ESRI JSON

<!-- badges: start -->
<!-- badges: end -->

This experimental package includes wrapper functions for `Terraformer.ArcGIS.convert()` and `Terraformer.ArcGIS.arcgisToGeoJSON()` methods from the [@terraformer/arcgis](https://www.npmjs.com/package/@terraformer/arcgis) npm package maintained by ESRI.

## Installation

You can install the development version of terraformer like so:

```r
devtools::install_github(
    repo = "timhitchins/terraformeR"
)
```

## Example

This is a basic example which shows you how to solve a common problem:

```r
library(terraformeR)
## basic example code
```

Dependencies for this package were installed using [browserify](https://browserify.org/):

```js
npm install @terraformer/arcgis
echo "global.Terraformer = require('@terraformer/arcgis');" > in.js
browserify in.js -o terraformer-arcgis--bundle.js
```
