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
    if ($.isEmptyObject(inspection)) {
        return "<p>There are no inspections available with this ID.</p>";
    }

    var html = "<h2>Inspection (Hive #" + inspection.IDHive + ")</h2>"
        + "<table id=\"info\" class=\"table table-striped\">"
        + "<tr class=\"info_row\">"
            + "<td>Hive</td>"
            + "<td>" + inspection.IDHive + "<td>"
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
            + "<td>Hive State</td>"
            + "<td>" + inspection.HiveState + "</td>"
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
            + "<td>Queen cells in brood combs</td>"
            + "<td>" + inspection.QueenCellInBrood + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Condition of combs</td>"
            + "<td>"
                + "<ul>"
                    + "<li>Honey Stores: " + inspection.HoneyStores + "</li>"
                    + "<li>Pollen Stores: " + inspection.PollyStores + "</li>"
                + "</ul>"
            + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Dieseases and Pests</td>"
            + "<td>"
                + "<ul>"
                    + "<li>Small Hive Beetle: " + inspection.SmallBee + "</li>"
                    + "<li>Varrao Mites: " + inspection.Varrao + "</li>"
                    + "<li>Safari Ants: " + inspection.Ant + "</li>"
                    + "<li>Chalk Brood: " + inspection.Brood + "</li>"
                + "</ul>"
            + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Hive Condition</td>"
            + "<td>" + inspection.HiveCond + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Protective clothing & beekeeping tools condition</td>"
            + "<td>" + inspection.BeeToolsCondDict + "</td>"
        + "</tr>"
        + "</table>";

    return html;
}