$(document).ready(function(){

    var loc = window.location.href;
    var userID = loc.split("?")[1];
    userID = userID.split("=")[1];

    $.get("http://fbwu.rob4001.co.uk/api/user/" + userID,
        function(data) {
            $("#info_table").html(generateInfo(data));
        }
    );

    $.get("http://fbwu.rob4001.co.uk/api/apiary",
        function (data) {
            $("#data_table").html(generateData(data, userID));
        }
    );

});

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "There are no users available with this ID.";
    }

    var html = "<table id=\"info\" class=\"table\">"
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

    var html;
    html = "<div id=\"table_title\">Apiaries</div>" +
        "<table id=\"data\" class=\"table\">\n    " +
        "<tr id=\"table_title_row\" class=\"data_row\">\n        " +
            "<th>Name</th>\n        " +
            "<th>Location</th>\n        " +
            "<th>No of hives</th>\n        " +
            "<th>No of sponsors</th>\n    " +
        "</tr>";

    data.forEach(function(apiary) {
        html += "<tr class=\"data_row\">"
                + "<td><a href=\"apiary.html?id=" + apiary.IDApiary + "\">" + apiary.NameApiary + "</a></td>"
                + "<td>" + apiary.GPS + "</td>"
                + "<td>" + apiary.Hives + "</td>"
                + "<td>" + apiary.Sponsors + "</td>"
            + "</tr>"
    });

    html += "</table>";
    return html;
}