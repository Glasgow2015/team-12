/**
 * Created by Patrick on 07/11/2015.
 */

$(document).ready(function(){

    if (location.hash) {
        String.locale = location.hash.substr(1);
    }

    var loc = window.location.href;
    var apiaryID = loc.split("#")[0];
    apiaryID = apiaryID.split("?")[1];
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
        return "<p>" + l("No hives in this apiary") + ".</p>"
    }

    var data = [];
    hives.forEach(function(hive) {
        if (hive.IDApiary == apiaryID) {
            data.push(hive);
        }
    });

    if (data.length === 0) {
        return "<p>" + l("No hives in this apiary") + ".</p>"
    }

    var html = "<h3 id=\"table_title\">" + l("Hives") + "</h3>"
        + "<table id=\"data\" class=\"table table-striped\">"
        + "<tr id=\"table_title_row\" class=\"data_row\">"
            + "<th>" + l("Number") + "</th>"
            + "<th>" + l("Location") + "</th>"
            + "<th>" + l("Date of installation") + "</th>"
            + "<th>" + l("Type") + "</th>"
            + "<th>" + l("Sun Exposure") + "</th>"
        + "</tr>";

    data.forEach(function(hive) {
        html += "<tr class=\"data_row\">"
                + "<td><a href=\"hive.html?id=" + hive.IDHive + "\">" + hive.HiveNumber + "</a></td>"
                + "<td>" + parseGPS(hive.GPS) + "</td>"
                + "<td>" + hive.DateCreated + "</td>"
                + "<td>" + hive.HiveType + "</td>"
                + "<td>" + l(hive.SunExp) + "</td>"
            + "</tr>";
    });

    html += "</table>";
    return html;
};

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "<p>" + l("This apiary does not exist") + ".</p>"
    }

    var html = "<h2>" + l("Apiary") + "</h2>"
            + "<table id=\"info\" class=\"table table-striped\">"
            + "<tr class=\"info_row\">"
                + "<td>" + l("Name") + "</td>"
                + "<td>" + data.NameApiary + "</td>"
            + "</tr>"
            + "<tr class=\"info_row\">"
                + "<td>" + l("GPS Location") + "</td>"
                + "<td>" + parseGPS(data.GPS) + "</td>"
            + "</tr>"
            + "<tr class=\"info_row\">"
                + "<td>" + l("Year of commencing apiary") + "</td>"
                + "<td>" + data.DateCreated + "</td>"
            + "</tr>"
            + "<tr class=\"info_row\">"
                + "<td>" + l("Harvesting months") + "</td>"
                + "<td>" + data.HARVMON + "</td>"
            + "</tr>"
            + "<tr>"
                + "<td>" + l("Environment") + "</td>"
                + "<td>" + data.ENV + "</td>"
            + "</tr>"
            + "<tr class=\"info_row\">"
                + "<td>" + l("Accessibility") + "</td>"
                + "<td>" + data.ACC + "</td>"
            + "</tr>"
        + "</table>";

    return html;
};

function l(string) {
    return string.toLocaleString();
};

function parseGPS(GPS) {
    var parts = GPS.split("|");
    return "Lat: " + parts[0].trim() + ", Long: " + parts[1].trim();
};