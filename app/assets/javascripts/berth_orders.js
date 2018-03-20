// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// div-toggle = select-klassen
$(document).on('change', '.div-toggle', function() {
  var target = $(this).data('target');
  var show = $("option:selected", this).data('show');
  $(target).children().addClass('hide');
});

$(document).ready(function() {
  $('.div-toggle').trigger('change');
});
