$(document).on('turbolinks:load', function() {

    // Oppdeling av form
    boatTab = document.getElementById("boatTab");
    seasonTab = document.getElementById("seasonTab");
    nextBtn = document.getElementById("nextBtn");
    prevBtn = document.getElementById("prevBtn");
    completeBtn = document.getElementById("completeBtn");

    if (lastPage()) {
        progressBarComplete();
    } else {
        boatStep();
    }

    $("#nextBtn").click(function() {
        if (validateBoat()) {
            next();
        } else {
            document.getElementById("boatValidation").innerHTML = "Vennligst fyll inn feltene";
        }
    });

    $("#prevBtn").click(function() {
        prev();
    });

    $("#completeBtn").click(function() {
    });

    function next() {
        // bør heller være kode for å gå til et generelt "neste" steg
        // ikke til seasonStep() konkret.
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
        progressBarPrev();
    }

    function seasonStep() {
        progressBarNext();

        seasonTab.style.display = "block";
        prevBtn.style.display = "block";
        completeBtn.style.display = "block";

        nextBtn.style.display = "none";
        boatTab.style.display = "none";
    }

    function validateBoat(){
        return validateRegisteredBoat() || validateNewBoat();
    }

    function validateNewBoat() {
       return $("#boat_name").val() !== ""
           && $("#boat_width").val() !== "";

    }

    function validateRegisteredBoat() {
        return $("#boatDrop option:selected").text() !== "--Velg båt--"
    }

    function progressBarNext() {
        if (document.getElementById("progressbar")) {
            liContainer = document.getElementById("progressbar");
            listItems = liContainer.getElementsByClassName("listItem");
            listItems[1].className += " active";
            listItems[2].className = listItems[2].className.replace(" active", "");
        }
    }

    function progressBarPrev() {
        if (document.getElementById("progressbar")) {
            liContainer = document.getElementById("progressbar");
            listItems = liContainer.getElementsByClassName("listItem");
            listItems[0].className += " active";
            listItems[1].className = listItems[1].className.replace(" active", "");
        }
    }

    function progressBarComplete() {
        if (document.getElementById("progressbar")) {
            liContainer = document.getElementById("progressbar");
            listItems = liContainer.getElementsByClassName("listItem");
            listItems[0].className += " active";
            listItems[1].className += " active";
            listItems[2].className += " active";
        }
    }

    function lastPage() {
        console.log(document.getElementById("lastPage"));
        return document.getElementById("lastPage");
    }


});
