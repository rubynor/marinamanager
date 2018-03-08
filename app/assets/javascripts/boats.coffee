# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $('form').on 'click', '.remove_record', (event) ->
    $(this).prev('input[type=hidden]').val '1'
    $(this).closest('tr').hide()
    event.preventDefault()
  $('form').on 'click', '.add_fields', (event) ->
    regexp = undefined
    time = undefined
    time = (new Date).getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $('.fields').append $(this).data('fields').replace(regexp, time)
    event.preventDefault()
  return