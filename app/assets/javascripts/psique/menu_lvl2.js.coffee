$('#caret-trigger').click (event) ->
  icon = event.target
  icon.classList.toggle('fa-caret-down')
  icon.classList.toggle('fa-caret-up')
  document.querySelector('.menu-lvl2').classList.toggle('menu--display')
