$(document).ready(function(){

    if (location.hash) {
        String.locale = location.hash.substr(1);
    }

    var loc = window.location.href;
    var userID = loc.split("#")[0];
    userID = userID.split("?")[1];
    userID = userID.split("=")[1];

    $.get("http://fbwu.rob4001.co.uk/api/user/" + userID,
        function(data) {
            $("#info_table").html(generateInfo(data));
        }
    );

    $.get("http://fbwu.rob4001.co.uk/api/ownedApiary",
        function (data) {
            $("#data_table").html(generateData(data, userID));
        }
    );

});

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "<p>" + l("There are no users available with this ID") + ".</p>";
    }

    var html = "<h2>" + data.UserRole + " - " + data.NameUser + "</h2>"
        + "<table id=\"info\" class=\"table table-striped\">"
        + "<tr class=\"info_row\">"
            + "<td>" + l("E-mail") + "</td>"
            + "<td>" + data.Email + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Phone") + "</td>"
            + "<td>" + data.Phone + "</td>"
        + "</tr>"
        + "</table>";

    return html;
};

function generateData(apiaries, userID) {
    if (apiaries.length === undefined) {
        return "<p>" + l("No apiaries found") + ".</p>"
    }

    var data = [];
    apiaries.forEach(function(apiary) {
        if (apiary.IDUser == userID) {
            data.push(apiary);
        }
    });

    if (data.length === 0) {
        return "<p>" + l("No apiaries found") + ".</p>"
    }

    var html;
    html = "<h3 id=\"table_title\">" + l("Apiaries") + "</h3>" +
        "<table id=\"data\" class=\"table table-striped\">\n    " +
        "<tr id=\"table_title_row\" class=\"data_row\">\n        " +
            "<th>" + l("Name") + "</th>\n        " +
            "<th>" + l("Location") + "</th>\n        " +
            "<th>" + l("Year commencing apiary") + "</th>\n        " +
            "<th>" + l("Harvesting months") + "</th>\n    " +
        "</tr>";

    data.forEach(function(apiary) {
        html += "<tr class=\"data_row\">"
                + "<td><a href=\"apiary.html?id=" + apiary.IDApiary + "\">" + apiary.NameApiary + "</a></td>"
                + "<td>" + parseGPS(apiary.GPS) + "</td>"
                + "<td>" + apiary.DateCreated + "</td>"
                + "<td>" + apiary.HAVMON + "</td>"
            + "</tr>"
    });

    html += "</table>";
    return html;
}

function parseGPS(GPS) {
    var parts = GPS.split("|");
    return l("Lat") + ": " + parts[0].trim() + ", " + l("Long") + ": " + parts[1].trim();
};

function l(string) {
    return string.toLocaleString();
};