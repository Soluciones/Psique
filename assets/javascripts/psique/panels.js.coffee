$ ->
  $(".tab[role='tab']").click ->
    tab      = $(this)
    tabpanel = $("##{ tab.attr('aria-controls') }")

    $([tab[0], tabpanel[0]]).addClass('active')
    $([tab[0], tabpanel[0]]).siblings().removeClass( 'active' )
