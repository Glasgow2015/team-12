/**
 * Created by Patrick on 08/11/2015.
 */

$(document).ready(function() {

    var loc = window.location.href;
    var userID = loc.split("?")[1];
    userID = userID.split("=")[1];

    $.get("http://fbwu.rob4001.co.uk/api/inspection/" + userID,
        function (data) {
            $("#info_table").html(generateInfo(data));
        }
    );

});

function generateInfo(inspection) {
    if ($.isEmptyObject(data)) {
        return "There are no inspections available with this ID.";
    }

    var html = "<table id=\"info\" class=\"table\">"
        + "<tr class=\"info_row\">"
            + "<td>Hive</td>"
            + "<td>" + inspection.IDHive + "td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Date</td>"
            + "<td>" + inspection.DateInspection + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Weather conditions</td>"
            + "<td>" + inspection.WeatherCond + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Colony Strength</td>"
            + "<td>" + inspection.ColStrength + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Hive Temper</td>"
            + "<td>" + inspection.HiveTemper + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Queen Cell In Brood</td>"
            + "<td>" + inspection.QuenCellInBrood + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Combs Condition</td>"
            + "<td>" + inspection.CombsCond + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Deas Pest</td>"
            + "<td>" + inspection.DeasPest + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Hive Condition</td>"
            + "<td>" + inspection.HiveCond + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Bee Tools Condition</td>"
            + "<td>" + inspection.BeeToolsCond + "</td>"
        + "</tr>"
        + "</table>";

    return html;
}