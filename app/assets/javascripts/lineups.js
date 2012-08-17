$(document).ready(function () {    
       $("#lineup_boat_id").bind("change", function () {
        if ($(this).val() == "1") {
            $(".example").slideDown();
            $("#pro2").slideUp();
        }
        else if($(this).val() =="2") {
            $("").slideDown();
            $(".example").slideUp();
        }
    });
});