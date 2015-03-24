#= require psique/menu
$ ->
  $('.has-dropdown .menu-item').on click: ->
    $(this).parent().siblings().removeClass('is-active')
    $(this).parent().toggleClass('is-active')
