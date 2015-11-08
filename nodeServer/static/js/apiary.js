/**
 * Created by Patrick on 07/11/2015.
 */

$(document).ready(function(){

    var loc = window.location.href;
    var apiaryID = loc.split("?")[1];
    apiaryID = apiaryID.split("=")[1];

    $.get("http://fbwu.rob4001.co.uk/api/apiary/" + apiaryID,
        function(data) {
            $("#info_table").html(generateInfo(data));
        }
    );

    $.get("http://fbwu.rob4001.co.uk/api/hive",
        function (data) {
            $("#data_table").html(generateData(data, apiaryID));
        }
    );

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

    if (data.length === 0) {
        return "No hives in this apiary."
    }

    var html = "<table id=\"data\" class=\"table\">"
        + "<tr id=\"table_title_row\" class=\"data_row\">"
            + "<th>Number</th>"
            + "<th>Location</th>"
            + "<th>Date of installation</th>"
            + "<th>Type</th>"
            + "<th>Sun Exposure</th>"
        + "</tr>";

    data.forEach(function(hive) {
        html += "<tr class=\"data_row\">"
                + "<td><a href=\"hive.html?id=" + hive.IDHive + "\">" + hive.HiveNumber + "</a></td>"
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

    var html = "<table id=\"info\" class=\"table\">"
            + "<tr class=\"info_row\">"
                + "<td>Name</td>"
                + "<td>" + data.NameApiary + "</td>"
            + "</tr>"
            + "<tr class=\"info_row\">"
                + "<td>GPS Location</td>"
                + "<td>" + data.GPS + "</td>"
            + "</tr>"
            + "<tr class=\"info_row\">"
                + "<td>Year of commencing apiary</td>"
                + "<td>" + data.DateCreated + "</td>"
            + "</tr>"
            + "<tr class=\"info_row\">"
                + "<td>Harvesting months</td>"
                + "<td>" + data.HarvestingMonths + "</td>"
            + "</tr>"
            + "<tr>"
                + "<td>Environment</td>"
                + "<td>" + data.Environment + "</td>"
            + "</tr>"
            + "<tr class=\"info_row\">"
                + "<td>Accessibility</td>"
                + "<td>" + data.Accessibility + "</td>"
            + "</tr>"
        + "</table>";

    return html;
};