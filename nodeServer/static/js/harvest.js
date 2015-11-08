/**
 * Created by Patrick on 07/11/2015.
 */

$(document).ready(function(){

    if (location.hash) {
        String.locale = location.hash.substr(1);
    }

    var loc = window.location.href;
    var harvestID = loc.split("#")[0];
    harvestID = harvestID.split("?")[1];
    harvestID = harvestID.split("=")[1];

    $.get("http://fbwu.rob4001.co.uk/api/harvest/" + harvestID,
        function(data) {
            $("#info_table").html(generateInfo(data));
        }
    );

});

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "<p>" + l("This apiary does not exist") + ".</p>"
    }

    var html = "<h2>" + l("Harvest") + " (" + l("Hive") + " #" + data.IDHive + ")</h2>"
        + "<table id=\"info\" class=\"table table-striped\">"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Date") + "</td>"
            + "<td>" + data.DateHarvest + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Quantity, number of ripe combs harvested") + "</td>"
            + "<td>" + data.Quantity + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Protective clothing available for beekeepers") + "</td>"
            + "<td>" + data.BeeKeeperClothes + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Protective clothing available for all assistants") + "</td>"
            + "<td>" + data.AllAssistantTools + "</td>"
        + "</tr>"
        + "<tr>"
            + "<td>" + l("Smoker available") + "</td>"
            + "<td>" + data.Smoker + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>" + l("Number of clean, airtight buckets available for harvest") + "</td>"
            + "<td>" + data.BucketNumber + "</td>"
        + "</tr>"
        + "</table>";

    return html;
};

function l(string) {
    return string.toLocaleString();
};