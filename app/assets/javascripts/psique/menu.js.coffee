do ($ = jQuery, window, document) ->

	pluginName = 'menuMobile'
	defaults =
    menu: 'target'
    page: 'page'

	class Plugin
		constructor: (@element, options) ->
      @settings = $.extend {}, defaults, options
      @_defaults = defaults
      @_name = pluginName
      @init()

		init: ->
      menu = $(@element).data(@settings.menu)
      page = $(@element).data(@settings.page)

      @setup(menu, page)
      $(@element).on click: => @toggle(menu, page)
      $(page).on click: => @close()

    setup: (menu, page) ->
      $(menu).addClass('mobile-menu')
      $(page).addClass('mobile-page')
             .wrap('<div class="mobile-wrapper"/>')

		toggle: (menu, page) ->
      $('body').toggleClass('is-active')

		close: ->
      $('body').removeClass('is-active')

	$.fn[pluginName] = (options) ->
		@each ->
			unless $.data @, "plugin_#{pluginName}"
				$.data @, "plugin_#{pluginName}", new Plugin @, options
