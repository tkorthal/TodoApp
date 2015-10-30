# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.add_item_button').on 'click', (e) ->
    e.preventDefault()
    closest = $(this).siblings('section.new-item-form').first()
    $(closest).toggle()
    if ($(this).html()== 'remove')
      $(this).html('add')
    else
      $(this).html('remove')
      $(closest).find('textarea').focus();