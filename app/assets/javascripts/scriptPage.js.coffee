ready = ->

  $(".to-pizza-linker").on 'click', ->
    window.location = "/pizzas/#{$(this).data('pizza-id')}"

  $('.file').change (event) ->
    preview = $(this).next('.image-preview').children('img')
    input = $(event.currentTarget)
    file = input[0].files[0]
    reader = new FileReader

    reader.onload = (e) ->
      image_base64 = e.target.result
      preview.attr 'src', image_base64
      return

    reader.readAsDataURL file
    return

  $('.new-image-uploader input[type="file"]').on 'change', ->
    $(this).siblings('input[type="hidden"]').prop('disabled', false)

  $('.destroy-image').on 'click', ->
    button = $(this)
    $.ajax
      url: window.location.href.slice(0, window.location.href.indexOf('/edit')) + '/pizza_pics/' + button.data('pic-id')
      type: 'delete'
      complete: ->
        button.parent().parent().nextAll('.pizza-image').find('input.pic-num').each (index, el) ->
          $(el).val($(el).val() - 1)
        $('.pic_num').val($('.pic_num').val() - 1)
        button.parent().parent().next('input[type="hidden"]').remove()
        button.parent().parent().remove()

  $('#image-row').sortable
     containment: "parent"
     stop: (event, ui) ->
      $('#image-row>.pizza-image').each (i, el) ->
        $(el).find('.pic-num').val(i + 1)

$(document).ready(ready)
$(document).on('page:load', ready)