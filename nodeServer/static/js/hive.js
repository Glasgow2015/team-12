/**
 * Created by Patrick on 07/11/2015.
 */

$(document).ready(function(){

    if (location.hash) {
        String.locale = location.hash.substr(1);
    }

    var loc = window.location.href;
    var hiveID = loc.split("#")[0];
    hiveID = hiveID.split("?")[1];
    hiveID = hiveID.split("=")[1];

    $.get("http://fbwu.rob4001.co.uk/api/hive/" + hiveID,
        function(data) {
            $("#info_table").html(generateInfo(data));
        }
    );

   $.get("http://fbwu.rob4001.co.uk/api/inspection",
       function (data) {
           $("#inspections").html(generateInspections(data, hiveID));
        }
   );

    $.get("http://fbwu.rob4001.co.uk/api/harvest",
        function (data) {
            $("#harvests").html(generateHarvests(data, hiveID));
        }
    );


});

function generateHarvests(harvests, hiveID) {
    if (harvests === undefined) {
        return "<p>" + l("No harvests available for this hive") + ".</p>"
    }

    var data = [];
    harvests.forEach(function(harvest) {
        if (harvest.IDHive == hiveID) {
            data.push(harvest);
        }
    });

    if (data.length == 0) {
        return "<p>" + l("No harvests available for this hive") + ".</p>"
    }

    var html = '<h3 id="title">' + l("Harvests") + '</h3>'
        + '<table id="harvests" class="table table-striped">'
        + '<tr class="data_row">'
            + '<th>' + l("Date") + '</th>'
            + '<th>' + l("Quantity") + '</th>'
            + '<th>' + l("Protective clothing (beekeeper)") + '</th>'
            + '<th>' + l("Protective clothing (assistants)") + '</th>'
            + '<th>' + l("Smoker available") + '</th>'
            + '<th>' + l("Number of buckets available") + '</th>'
        + '</tr>';

    data.forEach(function(harvest) {
        html += "<tr class=\"data_row\">"
                + "<td><a href='../harvest.html?id=" + harvest.IDHarvest + "'>" + parseTime(harvest.DateHarvest) + "</a></td>"
                + "<td>" + harvest.Quantity + "</td>"
                + "<td>" + harvest.BeeKeeperClothes + "</td>"
                + "<td>" + harvest.AllAssistantTools + "</td>"
                + "<td>" + harvest.Smoker + "</td>"
                + "<td>" + harvest.BucketNumber + "</td>"
            + "</tr>";
    });

    html += "</table>";
    return html;
};

function generateInspections(inspections, hiveID) {
    if (inspections === undefined) {
        return "<p>" + l("No inspections available for this hive") + ".</p>";
    }

    var data = [];
    inspections.forEach(function(inspection) {
        if (inspection.IDHive == hiveID) {
            data.push(inspection);
        }
    });

    if (data.length === 0) {
        return "<p>" + l("No inspections available for this hive") + ".</p>";
    }

    var html = "<h3 id=\"table_title\">" + l("Inspections") + "</h3>"
        + "<table id=\"inspections\" class=\"table table-striped\">"
        + "<tr class=\"data_row\">"
        + "<th>" + l("Date") + "</th>"
        + "<th>" + l("Weather Condition") + "</th>"
        + "<th>" + l("State") + "</th>"
        + "</tr>";

    data.forEach(function(inspection) {
        html += "<tr class=\"data_row\">"
            + "<td><a href='../inspection.html?id=" + inspection.IDInspection + "'>" + parseTime(inspection.DateInspection) + "</a></td>"
            + "<td>" + inspection.WeatherCond + "</td>"
            + "<td>" + inspection.HiveState + "</td>"
            + "</tr>";
    });

    html += "</table>";
    return html;
};

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "<p>" + l("This apiary does not exist") + ".</p>"
    }

    var html = "<h2>" + l("Hive") + "</h2>"
        + "<div id=\"info_table\">"
        + "<img src=\"" + data.PictureName + "\" alt=\"Image of hive\" class=\"center-block\"/>"
        + "<table id=\"info\" class=\"table table-striped\">"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Number") + "</td>"
            + "<td>" + data.HiveNumber + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("GPS location") + "</td>"
            + "<td>" + parseGPS(data.GPS) + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Date of installation") + "</td>"
            + "<td>" + parseTime(data.DateCreated) + "</td>"
        + "</tr>"
        + "<tr>"
            + "<td>" + l("Hive type") + "</td>"
            + "<td>" + data.HiveType + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Sun exposure") + "</td>"
            + "<td>" + data.SunExp + "</td>"
        + "</tr>"
        + "</table>"
        + "</div>";

    return html;
};

function parseGPS(GPS) {
    var parts = GPS.split("|");
    return l("Lat") + ": " + parts[0].trim() + ", " + l("Long") + ": " + parts[1].trim();
};

function l(string) {
    return string.toLocaleString();
};

function parseTime(time) {
    return time.split("T")[0];
}