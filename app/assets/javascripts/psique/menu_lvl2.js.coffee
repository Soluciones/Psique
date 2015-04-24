document.querySelector('.menu-lvl2--current .icon').addEventListener 'touchstart', (event) ->
  this.classList.toggle('fa-caret-down')
  this.classList.toggle('fa-caret-up')
  document.querySelector('.menu-lvl2').classList.toggle('menu--display')
