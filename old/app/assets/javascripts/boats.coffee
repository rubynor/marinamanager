# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.ClientSideValidations.callbacks.element.fail = (element, message, callback) ->
  callback()
  if element.data('valid') != false
    element.parent().find('.message').hide().show 'slide', {
      direction: 'left'
      easing: 'easeOutBounce'
    }, 500
  return

window.ClientSideValidations.callbacks.element.pass = (element, callback) ->
  # Take note how we're passing the callback to the hide()
  # method so it is run after the animation is complete.
  element.parent().find('.message').hide 'slide', { direction: 'left' }, 500, callback
  return