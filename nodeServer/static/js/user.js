$(document).ready(function(){

    var loc = window.location.href;
    var userID = loc.split("?")[1];
    userID = userID.split("=")[1];
    var info = {};

    $.get("/api/user/" + userID,
        function(data) {
            info = data;
        }, JSON)
        .fail(function() {
            alert("Error reading from api/user/" + userID);
        }
    );

    $("#info_table").html(generateInfo(info));

    var apiaries = {};

    $.get("api/apiary", function (data) {
        apiaries = data;
    });

    $("#data_table").html(generateData(apiaries, userID));

});

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "There are no users available with this ID.";
    }

    var html = "<table id=\"info\">" +
        + "<tr class=\"info_row\">"
            + "<td>E-mail</td>"
            + "<td>" + data.Email + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Phone</td>"
            + "<td>" + data.Phone + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>[Sponsor/Manager] since</td>"
            + "<td>0000</td>"
        + "</tr>"
        + "</table>";

    return html;
};

function generateData(apiaries, userID) {

    if (apiaries.length === undefined) {
        return "No apiaries found."
    }

    var data = [];
    apiaries.forEach(function(apiary) {
        if (apiary.IDUser === userID) {
            data.push(apiary);
        }
    });

    if (data.length === 0) {
        return "No apiaries found."
    }

    var html = "<table id=\"data\">"
        + "<tr id=\"table_title_row\" class=\"data_row\">"
            + "<th>Name</th>"
            + "<th>Location</th>"
            + "<th>No of hives</th>"
            + "<th>No of sponsors</th>"
        + "</tr>";

    data.forEach(function(apiary) {
        html += "<tr class=\"data_row\">"
                + "<td><a href=\"apiary.html?id=" + apiary.IDApiary + "\">" + apiary.NameApiary + "</a></td>"
                + "<td>" + apiary.GPS + "</td>"
                + "<td>" + apiary.Hives + "</td>"
                + "<td>" + apiary.Sponsors + "</td>"
            + "</tr>"
    });
}