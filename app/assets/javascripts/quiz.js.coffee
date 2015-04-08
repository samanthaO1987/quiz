ready = ->
  $('#user_name').focus()

  $('.answer').click ->
    $('.next-btn').show()

$(document).ready(ready)
$(document).on('page:load', ready)
