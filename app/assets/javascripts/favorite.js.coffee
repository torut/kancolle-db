# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

//= require equalize.min
//= require jquery.ui.sortable

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
  $('.favorites').sortable({
    placeholder: 'ship well well-small span2 placeholder',
    cursor: 'move'
  }).disableSelection()
  $('#complete_sort').popover({
    trigger: 'manual',
    placement: 'top',
    delay: {show: 0, hide: 500}
  })
  $(document).on 'sortupdate', '.favorites', (ev, ui)->
    order = $(@).sortable('serialize')
    $.ajax({
      url: '/favorite/sort',
      type: 'post',
      dataType: 'json',
      data: order,
      success: (data, status) ->
        $('#complete_sort').popover('show')
        setTimeout(
          show_sort_alert,
          1000
        )
    })
  show_sort_alert =->
     $('#complete_sort').popover('hide')
  return
