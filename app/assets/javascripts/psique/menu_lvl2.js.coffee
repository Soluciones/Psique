$('.menu-lvl2--current .icon').on 'click', (event) ->
  this.classList.toggle('fa-caret-down')
  this.classList.toggle('fa-caret-up')
  document.querySelector('.menu-lvl2').classList.toggle('menu--display')
