// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
function addItemListeners(listId){
  $('#list'+listId +' i.add_item_button').on('click', function(e) {
    e.preventDefault();
    var closest = $(this).siblings('section.new-item-form').first();
    $(closest).toggle();
    if ($(this).html() === 'remove') {
      $(this).html('add');
    } else {
      $(this).html('remove');
      $(closest).find('textarea').focus();
    }
  });
}


function addToggleCompleted(itemId, context){
  $('#item' +itemId + ' input[type=checkbox]').on('click', function(e){
    var checked = context.is(":checked")
    $.ajax({
        method: "PATCH",
        url: ('/items/' +  itemId),
        data: { completed: checked }
      })
        .done(function( msg ){
          itemRow = $('#item'+itemId);
          if (checked){
            itemRow.addClass('completed');
          } else {
            itemRow.removeClass('completed');
          }
    });
  });
}

function updateBGColor(listId, newColor){
  $.ajax({
        method: "PATCH",
        url: ('/lists/' +  listId),
        data: { 

          color: newColor }
      })
        .done(function( msg ){
          $("#list"+listId).css("background-color", newColor);
    });
}