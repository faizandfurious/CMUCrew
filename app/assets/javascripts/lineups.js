$(document).ready(function () {    
       $("#lineup_boat_id").bind("change", function () {
         $(".example").text("You have selected a " + $(this).val());
    });
});