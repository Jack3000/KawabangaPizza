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

$(document).ready(ready)
$(document).on('page:load', ready)