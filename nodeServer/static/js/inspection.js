/**
 * Created by Patrick on 08/11/2015.
 */

$(document).ready(function() {

    if (location.hash) {
        String.locale = location.hash.substr(1);
    }

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
        return "<p>" + l("There are no inspections available with this ID") + ".</p>";
    }

    var html = "<h2>" + l("Inspection") + " (" + l("Hive") + " #" + inspection.IDHive + ")</h2>"
        + "<table id=\"info\" class=\"table table-striped\">"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Hive") + "</td>"
            + "<td>" + inspection.IDHive + "<td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Date") + "</td>"
            + "<td>" + inspection.DateInspection + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Weather conditions") + "</td>"
            + "<td>" + inspection.WeatherCond + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Hive state") + "</td>"
            + "<td>" + inspection.HiveState + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Colony Strength") + "</td>"
            + "<td>" + inspection.ColStrength + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Hive temper") + "</td>"
            + "<td>" + inspection.HiveTemper + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Queen cells in brood combs") + "</td>"
            + "<td>" + inspection.QueenCellInBrood + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Condition of combs") + "</td>"
            + "<td>"
                + "<ul>"
                    + "<li>" + l("Honey Stores") + ": " + l(inspection.HoneyStores) + "</li>"
                    + "<li>" + l("Pollen Stores") + ": " + l(inspection.PollyStores) + "</li>"
                + "</ul>"
            + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Diseases and Pests") + "</td>"
            + "<td>"
                + "<ul>"
                    + "<li>" + l("Small Hive Beetle") + ": " + inspection.SmallBee + "</li>"
                    + "<li>" + l("Varrao Mites") + ": " + inspection.Varrao + "</li>"
                    + "<li>" + l("Safari Ants") + ": " + inspection.Ant + "</li>"
                    + "<li>" + l("Chalk Brood") + ": " + inspection.Brood + "</li>"
                + "</ul>"
            + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Hive condition") + "</td>"
            + "<td>" + inspection.HiveCond + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Protective clothing & beekeeping tools condition") + "</td>"
            + "<td>" + inspection.BeeToolsCondDict + "</td>"
        + "</tr>"
        + "</table>";

    return html;
}

function l(string) {
    return string.toLocaleString();
};