$('[data-accordion]').on 'click', (event) ->
  this.classList.toggle('fa-caret-down')
  this.classList.toggle('fa-caret-up')
  menu = this.parentNode.parentNode
  submenu = menu.querySelector('ul')
  $(submenu).slideToggle(450)
