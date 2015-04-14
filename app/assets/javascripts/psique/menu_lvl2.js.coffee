$('.fa-caret-down').on 'click', (event) ->
  icon = event.target
  icon.classList.toggle('fa-caret-down')
  icon.classList.toggle('fa-caret-up')
  $('.menu-options-lvl2').slideToggle(450)