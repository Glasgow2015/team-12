/**
 * Created by Patrick on 08/11/2015.
 */

require(["esri/map",
        "esri/dijit/Popup",
        "esri/tasks/locator",
        "esri/InfoTemplate",
        "esri/graphic",
        "esri/geometry/Multipoint",
        "esri/symbols/SimpleMarkerSymbol",
        "esri/symbols/SimpleLineSymbol",
        "esri/symbols/PictureMarkerSymbol",
        "dojo/_base/Color",
        "dojo/query",
        "dojo/keys",
        "dojo/on",
        "dojo/dom",
        "dojo/domReady!"],
    function(Map) {
        // Get a reference to the ArcGIS Map class
        var map = Map.create("mapDiv",{
            basemap:"dark-gray",
            center:[35.14, -6.10],
            zoom:6
        });
        function addPoint(x, y) {
            var point = new esri.geometry.Point(x, y, new esri.SpatialReference({ wkid: 102113 }));
            var mp = esri.geometry.geographicToWebMercator(point);
            point = new esri.geometry.Point({ "x": mp.x, "y": mp.y, "spatialReference": { "wkid": 102113} });
            var graphic = new esri.Graphic(point);
            map.graphics.add(graphic);
        };
        addPoint(35.14, -6.10);
    }
);



