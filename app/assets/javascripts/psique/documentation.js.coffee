# ------------------------------
# Smooth Scrolling for Styleguide
# ------------------------------
$(document).ready ->
  $('.guide-navigation a').click ->
    offset = $($.attr(this, 'href')).offset()
    if offset then $('html, body').animate { scrollTop: offset.top }, 500
    false
  return
