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
        seasonStep();
    }

    $("#nextBtn").click(function() {
        next();
    });

    $("#prevBtn").click(function() {
        prev();
    });

    $("#completeBtn").click(function() {
      if (validateBoat()) {
          document.getElementById("boatValidation").innerHTML = "";
      } else {
          document.getElementById("boatValidation").innerHTML = "Vennligst fyll inn feltene";
      }
    });

    // In case of more steps, this method should be
    // a generic "next", not just call boatStep().
    function next() {
      boatStep();
    }

    function prev() {
      seasonStep();
    }

    function seasonStep() {
        progressBarNext();
        seasonTab.style.display = "block";
        boatTab.style.display = "none";

        nextBtn.style.display = "block";
        prevBtn.style.display = "none";
        completeBtn.style.display = "none";
    }

    function boatStep() {
        seasonTab.style.display = "none";
        boatTab.style.display = "block";

        prevBtn.style.display = "block";
        nextBtn.style.display = "none";J
        completeBtn.style.display = "block";
        progressBarPrev();
    }

    // Client-side validation
    function validateBoat(){
        return validateRegisteredBoat() || validateNewBoat();
    }

    function validateNewBoat() {
       return $("#boat_name").val() !== ""
       // Could add check to see if width is
       // within a certain range and an actual number
           && $("#boat_width").val() !== "";

    }

    function validateRegisteredBoat() {
        return $("#boatDrop option:selected").text() !== "--Velg båt--"
    }

    // All your progressbar needs (is love?)
    function progressBarNext() {
      if (document.getElementById("progressbar")) {
          liContainer = document.getElementById("progressbar");
          listItems = liContainer.getElementsByClassName("listItem");
          listItems[0].className += " active";
          listItems[1].className = listItems[1].className.replace(" active", "");
      }
    }

    function progressBarPrev() {
      if (document.getElementById("progressbar")) {
          liContainer = document.getElementById("progressbar");
          listItems = liContainer.getElementsByClassName("listItem");
          listItems[1].className += " active";
          listItems[2].className = listItems[2].className.replace(" active", "");
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
        return document.getElementById("lastPage");
    }

    // Show available berths in a given season
    var availableBerths = document.getElementById("availableBerths");

    index = document.getElementById("berth_order_season_id").value
    availableBerths.innerHTML = $('#seasons').data('seasons')[index]["available_berths"];

    $("#berth_order_season_id").on("change", function() {
      index = document.getElementById("berth_order_season_id").value;
      availableBerths.innerHTML = $('#seasons').data('seasons')[index]["available_berths"];
    });

});
