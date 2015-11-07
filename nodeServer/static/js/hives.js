/**
 * Created by Patrick on 07/11/2015.
 */

$(document).ready(function(){

    var loc = window.location.href;
    var hiveID = loc.split("?")[1];
    hiveID = hiveID.split("=")[1];
    var info = {};

    $.get("/api/hive/" + hiveID,
        function(data) {
            info = data;
        }, JSON)
        .fail(function() {
            alert("Error reading from api/hive/" + hiveID);
        }
    );

    $("#info_table").html(generateInfo(info));

    var inspections = {};

    $.get("api/inspection", function (data) {
        inspections = data;
    });

    $("#data_table").html(generateData(inspections, hiveID));

});

function generateData(hives, apiaryID) {
    if (hives === undefined) {
        return "No hives in this apiary."
    }

    var data = [];
    hives.forEach(function(hive) {
        if (hive.IDApiary === apiaryID) {
            data.push(hive);
        }
    });

    if (hive.length === 0) {
        return "No hives in this apiary."
    }

    var html = "<table id=\"data\">"
        + "<tr id=\"table_title_row\" class=\"data_row\">"
        + "<th>Number</th>"
        + "<th>Location</th>"
        + "<th>Date of installation</th>"
        + "<th>Type</th>"
        + "<th>Sun Exposure</th>"
        + "</tr>";

    data.forEach(function(hive) {
        html += "<tr class=\"data_row\">"
            + "<td><a href=\"hives.html?id=" + hive.IDHive + "\">" + hive.HiveNumber + "</a></td>"
            + "<td>" + hive.GPS + "</td>"
            + "<td>" + hive.DateCreated + "</td>"
            + "<td>" + hive.HiveType + "</td>"
            + "<td>" + hive.SunExp + "</td>"
            + "</tr>";
    });

    html += "</table>";
    return html;
};

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "This apiary does not exist."
    }

    var html = "<div id=\"info_table\">"
        + "<img src=\"" + data.PictureName + "\" alt=\"Image of hive\" />"
        + "<table id=\"info\">"
        + "<tr class=\"info_row\">"
            + "<td>Apiary</td>"
            + "<td><a href=\"apiary.html?id=" + data.ApiaryName + "\">Apiary 1</a></td>"
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