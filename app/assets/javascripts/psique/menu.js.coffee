document.querySelector('.menu-item[data-submenu]').addEventListener 'touchstart', (event) ->
  if (icon = event.target).matches('i')
    event.preventDefault()
    submenu = this.querySelector(this.dataset.submenu)
    icon.classList.toggle('fa-angle-double-down')
    icon.classList.toggle('fa-angle-double-up')
    $(submenu).slideToggle(450)