# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(document).on 'click', 'a.remote_post', ->
    anchor = @
    $.ajax({
      url: anchor.href
      type: 'post'
      dataType: 'html'
      success: (data, status) ->
        $(anchor).html(data)
        if $(anchor).data('mode') == 'add'
          $(anchor).attr({
            'href': anchor.href.replace('/add', '/remove')
          })
          $.data(anchor, 'mode', 'remove')
        else
          $(anchor).attr({
            'href': anchor.href.replace('/remove', '/add')
          })
          $.data(anchor, 'mode', 'add')

        return false
    })
    return false

  $(document).on 'click', 'button#search_clear', ->
    $('input[name^=\'types\']').removeAttr('checked')

