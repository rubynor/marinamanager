// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// A calculator for converting feet to meters
$(document).on('turbolinks:load', function() {
  var input = document.getElementById("calcInput");
  var feetInMeters = 3.2802399;

  $('#calcInput').on('keyup', function() {
    $('#calcSolution').val(($(this).val() / feetInMeters).toFixed(2));
  })
});

// Hides the "Order Berth" button, once clicked.
$(document).on('turbolinks:load', function() {
  if (document.querySelector('#orderBerthButton')) {
    var button = document.querySelector('#orderBerthButton');
    hideButton(button);
  }

// Hides the "Order Services" button, once clicked.
  if (document.querySelector('#orderServicesButton')) {
    button = document.querySelector('#orderServicesButton');
    hideButton(button);
  }
});

// Hides an element
function hideButton(button) {
  button.addEventListener('click', function () {
    button.style.visibility = 'hidden';
  }, false);
}
