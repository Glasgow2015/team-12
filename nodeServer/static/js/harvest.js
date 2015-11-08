/**
 * Created by Patrick on 07/11/2015.
 */

$(document).ready(function(){

    var loc = window.location.href;
    var harvestID = loc.split("?")[1];
    harvestID = harvestID.split("=")[1];

    $.get("http://fbwu.rob4001.co.uk/api/harvest/" + harvestID,
        function(data) {
            $("#info_table").html(generateInfo(data));
        }
    );

});

function generateInfo(data) {
    if ($.isEmptyObject(data)) {
        return "<p>This apiary does not exist.</p>"
    }

    var html = "<table id=\"info\" class=\"table table-striped\">"
        + "<tr class=\"info_row\">"
            + "<td>Date</td>"
            + "<td>" + data.DateHarvest + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Quantity, number of ripe combs harvested</td>"
            + "<td>" + data.Quantity + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Protective clothing available for beekeepers</td>"
            + "<td>" + data.BeeKeeperClothes + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Protective clothing available for all assistants</td>"
            + "<td>" + data.AllAssistantTools + "</td>"
        + "</tr>"
        + "<tr>"
            + "<td>Smoker available</td>"
            + "<td>" + data.Smoker + "</td>"
        + "</tr>"
        + "<tr class=\"info_row\">"
            + "<td>Numjber of clean, airtight buckets available for harvest</td>"
            + "<td>" + data.BucketNumber + "</td>"
        + "</tr>"
        + "</table>";

    return html;
};