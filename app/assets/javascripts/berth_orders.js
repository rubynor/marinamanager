$(document).on('turbolinks:load', function() {


    // Oppdeling av form
    $(function(){
        boatStep();

        boatTab = document.getElementById("boatTab");
        seasonTab = document.getElementById("seasonTab");
        nextBtn = document.getElementById("nextBtn");
        prevBtn = document.getElementById("prevBtn");
        completeBtn = document.getElementById("completeBtn");


        $("#nextBtn").click(function() {
            console.log("Validate boat: " + validateBoat());

            if (validateBoat()) {
                next();
            } else {
                document.getElementById("boatValidation").innerHTML = "Vennligst fyll inn feltene";
            }
        });

        $("#prevBtn").click(function() {
            prev();
        });

        function next() {
            seasonStep();
        }

        function prev() {
            boatStep();
        }

        function boatStep() {
            boatTab.style.display = "block";
            nextBtn.style.display = "block";

            seasonTab.style.display = "none";
            prevBtn.style.display = "none";
            completeBtn.style.display = "none";
        }

        function seasonStep() {
            seasonTab.style.display = "block";
            prevBtn.style.display = "block";
            completeBtn.style.display = "block";

            nextBtn.style.display = "none";
            boatTab.style.display = "none";
        }

        function validateBoat(){
            console.log("Registered: " + validateRegisteredBoat());
            console.log("New: " + validateNewBoat());
            if (validateRegisteredBoat() || validateNewBoat() ) {
                return true;
            } else
                return false;
        }

        function validateNewBoat() {
           return $("#boat_name").val() !== ""
               && $("#boat_width").val() !== "";

        }

        function validateRegisteredBoat() {
            return $("#boatDrop option:selected").text() !== "--Velg båt--"
        }
    });
});