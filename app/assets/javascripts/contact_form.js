// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('turbolinks:load', function() {
  $('form').on('change', '.remove_record', function(event) {
    return $(this).closest('tr').hide();
  });
  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    regexp = void 0;
    time = void 0;
    time = (new Date).getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });
});

this.deleteCheckboxToggled = function(tickbox) {
  if (tickbox.checked) {
    return $(tickbox).parent().find('.datepicker').addClass('bg-danger text-white');
  } else {
    return $(tickbox).parent().find('.datepicker').removeClass('bg-danger text-white');
  }
};
