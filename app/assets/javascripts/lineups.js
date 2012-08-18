$(document).ready(function () {    
       $("#lineup_boat_id").bind("change", function () {
        if ($(this).val() == "1x") {
            $(".example").text("You have selected a " + $(this).val());
        }
        else if($(this).val() =="2-") {
            $(".example").text("You have selected a " + $(this).val());
        }
        else if($(this).val() =="2x") {
            $(".example").text("You have selected a " + $(this).val());
        }
        else if($(this).val() =="4+") {
            $(".example").text("You have selected a " + $(this).val());
        }
        else if($(this).val() =="4x") {
            $(".example").text("You have selected a " + $(this).val());
        }
        else if($(this).val() =="8+") {
            $(".example").text("You have selected a " + $(this).val());
        }
    });
});