esri_json <- '{
 "objectIdFieldName": "objectid",
 "globalIdFieldName": "globalid",
 "geometryType": "esriGeometryPoint",
 "spatialReference": {
  "wkid": 102100,
  "latestWkid": 3857
 },
 "fields": [
  {
   "name": "objectid",
   "alias": "OBJECTID",
   "type": "esriFieldTypeOID"
  },
  {
   "name": "requestid",
   "alias": "Service Request ID",
   "type": "esriFieldTypeString",
   "length": 25
  },
  {
   "name": "requesttype",
   "alias": "Problem",
   "type": "esriFieldTypeString",
   "length": 100
  },
  {
   "name": "comments",
   "alias": "Comments",
   "type": "esriFieldTypeString",
   "length": 255
  },
  {
   "name": "name",
   "alias": "Name",
   "type": "esriFieldTypeString",
   "length": 150
  },
  {
   "name": "phone",
   "alias": "Phone Number",
   "type": "esriFieldTypeString",
   "length": 12
  },
  {
   "name": "email",
   "alias": "Email Address",
   "type": "esriFieldTypeString",
   "length": 100
  },
  {
   "name": "requestdate",
   "alias": "Date Submitted",
   "type": "esriFieldTypeDate",
   "length": 36
  },
  {
   "name": "status",
   "alias": "Status",
   "type": "esriFieldTypeString",
   "length": 50
  },
  {
   "name": "globalid",
   "alias": "GlobalID",
   "type": "esriFieldTypeGlobalID",
   "length": 38
  },
  {
   "name": "building",
   "alias": "Building Name",
   "type": "esriFieldTypeString",
   "length": 25
  },
  {
   "name": "floor",
   "alias": "Floor Number",
   "type": "esriFieldTypeString",
   "length": 5
  }
 ],
 "features": [
  {
   "geometry": {
    "x": -9809161.170230601,
    "y": 5123045.5266209831
   },
   "attributes": {
    "objectid": 246362,
    "requestid": "69",
    "requesttype": "Sidewalk Damage",
    "comments": "Pothole",
    "name": "Foo Bar",
    "phone": "999-9999",
    "email": "foo@foobar.com",
    "requestdate": 1412921609000,
    "status": "Closed",
    "globalid": "{1776024F-0CA5-404E-A133-D442FB6FC0FE}",
    "building": "",
    "floor": ""
   }
  },
  {
   "geometry": {
    "x": -9074857.9234435894,
    "y": 4982391.2604217697
   },
   "attributes": {
    "objectid": 246382,
    "requestid": null,
    "requesttype": "Pothole",
    "comments": "Jhh",
    "name": "Foo Bar",
    "phone": null,
    "email": null,
    "requestdate": null,
    "status": "Unassigned",
    "globalid": "{B424A195-1EC8-4467-AE7E-24BE0EF74383}",
    "building": null,
    "floor": null
   }
  }
 ]
}'

geojson <- '{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {
        "test_xxx": 1
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -83.11955653131008,
          42.31288411888635
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "test_xxx": 2
      },
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
            [
              -83.11957061290741,
              42.31287618512901
            ],
            [
              -83.11953373253345,
              42.31287618512901
            ],
            [
              -83.11953373253345,
              42.31292329179863
            ],
            [
              -83.11957061290741,
              42.31292329179863
            ],
            [
              -83.11957061290741,
              42.31287618512901
            ]
          ]
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "test_xxx": 3
      },
      "geometry": {
        "type": "LineString",
        "coordinates": [
          [
            -83.11959307640791,
            42.31291783734394
          ],
          [
            -83.1195280328393,
            42.312878664428275
          ],
          [
            -83.11949014663696,
            42.31289874674884
          ]
        ]
      }
    }
  ]
}'


test_that("parser returns valid geojson", {
  expect_warning(
    gj <- arcgis_to_geojson(esri_json),
    "Object converted in non-standard crs"
  )

  expect_true(is.list(gj))
})

test_that("converter returns valid json", {
  arc_json <- geojson_to_arcgis(geojson)

  expect_true(is.list(arc_json))
})