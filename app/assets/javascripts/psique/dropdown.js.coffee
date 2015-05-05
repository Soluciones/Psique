do ($ = jQuery, window, document) ->

  # DROPDOWN DEFAULTS
  # ===================

  defaults =
    target: 'dropdown'

  # DROPDOWN PUBLIC CLASS DEFINITION
  # ==================================

  class Dropdown
    constructor: (@element) ->
      @$element = $ @element
      @$menu    = $ @$element.data(defaults.target)

      @init()

    init: ->
      @$element.on click: (event) =>
        event.preventDefault()
        @toggle()

    toggle: ->
      @$menu.toggleClass('is-open')

  # DROPDOWN AUTOLOAD
  # ===================

  if $("[data-#{defaults.target}]").length > 0
    new Dropdown("[data-#{defaults.target}]")
