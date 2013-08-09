# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

//= require equalize.min

$ ->
  $(document).on 'click', 'a.remote_post.fav_remove', ->
    anchor = @
    $.ajax({
      url: anchor.href
      type: 'post'
      dataType: 'html'
      success: (data, status) ->
        $(anchor).html(data)
        $(anchor).parents('.ship').fadeOut().queue(-> this.remove())

        return false
    })
    return false
  $('.favorites').equalize({equalize: 'height', chuldren: 'div.ship'})
