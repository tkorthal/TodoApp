# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#add_item_button').on 'click', (e) ->
    e.preventDefault()
    $('#new-item-form').toggle()
    if ($('#add_item_button').html()== 'remove')
      $('#add_item_button').html('add')
    else
      $('#add_item_button').html('remove')