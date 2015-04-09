$('[data-accordion]').on 'click', (event) ->
  event.preventDefault()
  menu = event.target.parentNode.parentNode
  submenu = menu.querySelector('ul')
  $(submenu).slideToggle(450)
