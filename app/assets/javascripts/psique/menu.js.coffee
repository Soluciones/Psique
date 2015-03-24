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
			$divs = @setup()
			$(@element).on click: => @toggle()
			$divs.page.on click: => @close()
			$(window).on resize: => @resize($divs.page)

		setup: ->
			$parts =
				menu: $ $(@element).data(@settings.menu)
				page: $ $(@element).data(@settings.page)

			$parts.menu.appendTo('body')
			$parts.menu.addClass('mobile-menu')
			$parts.page.addClass('mobile-page')

			@resize($parts.page)
			$parts

		toggle: ->
			$('body').toggleClass('is-active')

		close: ->
			$('body').removeClass('is-active')

		resize: ($item) ->
			$item.css('min-height', window.innerHeight)

	$.fn[pluginName] = (options) ->
		@each ->
			unless $.data @, "plugin_#{pluginName}"
				$.data @, "plugin_#{pluginName}", new Plugin @, options
