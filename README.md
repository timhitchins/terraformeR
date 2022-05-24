# terraformeR

### Wrappers for dealing with ESRI JSON

This experimental package includes wrapper functions for `Terraformer.ArcGIS.convert()` and `Terraformer.ArcGIS.arcgisToGeoJSON()` methods from the [@terraformer/arcgis](https://www.npmjs.com/package/@terraformer/arcgis) npm package maintained by ESRI.

`Terraformer.ArcGIS.convert()`

Dependencies for this package were installed using [browserify](https://browserify.org/):

```
npm install @terraformer/arcgis
echo "global.Terraformer = require('@terraformer/arcgis');" > in.js
browserify in.js -o terraformer-arcgis--bundle.js
```
