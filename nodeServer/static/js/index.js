/**
 * Created by Patrick on 07/11/2015.
 */

$(document).ready(function(){

    $("#sponsor")
        .mouseenter(function() {
            $("#manager").hide();
        })
        .mouseleave(function() {
           $("#manager").show();
        }
    );

    $("#manager")
        .mouseenter(function() {
            $("#sponsor").hide();
        })
        .mouseleave(function() {
            $("#sponsor").show();
        }
    );
});
