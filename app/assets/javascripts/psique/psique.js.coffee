#= require psique/menu
$ ->
  $('.has-dropdown a').on click: ->
    $(this).parent().siblings().removeClass('is-active')
    $(this).parent().toggleClass('is-active')
