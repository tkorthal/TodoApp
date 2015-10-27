# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.add_item_button').on 'click', (e) ->
    e.preventDefault()
    closest = $('section.new-item-form').first()
    console.log(closest)
    $(closest).toggle()
    if ($(this).html()== 'remove')
      $(this).html('add')
    else
      $(this).html('remove')