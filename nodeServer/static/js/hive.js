/**
 * Created by Patrick on 07/11/2015.
 */

$(document).ready(function(){

    var loc = window.location.href;
    var hiveID = loc.split("?")[1];
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
        return "<p>No harvests available for this hive.</p>"
    }

    var data = [];
    harvests.forEach(function(harvest) {
        if (harvest.IDHive === hiveID) {
            data.push(harvest);
        }
    });

    if (data.length === 0) {
        return "<p>No harvests available for this hive.</p>"
    }

    var html = '<h2 id="title">Inspections</h2>'
        + '<table id="harvests" class="table table-striped">'
        + '<tr class="data_row">'
            + '<th>Date</th>'
            + '<th>Quantity</th>'
            + '<th>Bee Keeper Clothes</th>'
            + '<th>All Assistant Tools</th>'
            + '<th>Smoker</th>'
            + '<th>Bucket Number</th>'
        + '</tr>';

    data.forEach(function(harvest) {
        html += "<tr class=\"data_row\">"
                + "<td><a href='inspection.html/id=' " + harvest.DateHarvest + "</a></td>"
                + "<td>" + harvest.WeatherCond + "</td>"
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
        return "<p>No inspections available for this hive.</p>"
    }

    var data = [];
    inspections.forEach(function(inspection) {
        if (inspection.IDHive === hiveID) {
            data.push(inspection);
        }
    });

    if (data.length === 0) {
        return "<p>No inspections available for this hive.</p>"
    }

    var html = "<h2 id=\"table_title\">Inspections</h2>"
        + "<table id=\"inspections\" class=\"table table-striped\">"
        + "<tr class=\"data_row\">"
        + "<th>Date</th>"
        + "<th>Weather Condition</th>"
        + "<th>State</th>"
        + "</tr>";

    data.forEach(function(inspection) {
        html += "<tr class=\"data_row\">"
            + "<td>" + inspection.DateInspection + "</td>"
            + "<td>" + inspection.WeatherCond + "</td>"
            + "<td>" + inspection.State + "</td>"
            + "</tr>";
    });

    html += "</table>";
    return html;
};

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "<p>This apiary does not exist.</p>"
    }

    var html = "<div id=\"info_table\">"
        + "<img src=\"" + data.PictureName + "\" alt=\"Image of hive\" />"
        + "<table id=\"info\" class=\"table table-striped\">"
        + "<tr class=\"info_row\">"
            + "<td>Apiary</td>"
            + "<td><a href=\"apiary.html?id=" + data.IDApiary + "\">[Replace with actual apiary name]</a></td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Number</td>"
            + "<td>" + data.HiveNumber + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>GPS location</td>"
            + "<td>" + data.GPS + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Date of installation</td>"
            + "<td>" + data.DateCreated + "</td>"
        + "</tr>"
        + "<tr>"
            + "<td>Environment</td>"
            + "<td>" + data.Environment + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Accessibility</td>"
            + "<td>" + data.Accessibility + "</td>"
        + "</tr>"
        + "</table>"
        + "</div>";

    return html;
};