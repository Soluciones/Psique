$('.menu-item[data-submenu] .fa').on 'touchstart', (event) ->
  event.preventDefault()
  $menuItem = $(this).closest('.menu-item')
  $menuItem.toggleClass('is-active')
