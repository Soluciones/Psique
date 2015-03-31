do ($ = jQuery, window, document) ->

	# OFF-CANVAS DEFAULTS
	# ===================

	defaults =
		menu: 'offcanvas-menu'
		page: 'offcanvas-page'

	# OFF-CANVAS PUBLIC CLASS DEFINITION
	# ==================================

	class OffCanvas
		constructor: (@element) ->
			@$body    = $ 'body'
			@$element = $ @element
			@$menu		= $ @$element.data(defaults.menu)
			@$page		= $ @$element.data(defaults.page)
			@init()

		init: ->
			@resize(@$page)

			@$menu.addClass(defaults.menu).appendTo(@$body)
			@$page.addClass(defaults.page)
			@$body.addClass('offcanvas')

			@$element.on click: (event) =>
				event.stopPropagation()
				@open()
			@$page.on click: => @close()

		open: ->
			@$body.toggleClass('is-open')

		close: ->
			@$body.removeClass('is-open')

		resize: ($item) ->
			$(window).on 'load resize': =>
				$item.css('min-height', window.innerHeight)

	# OFF-CANVAS AUTOLOAD
	# ===================

	if $("[data-#{defaults.menu}]").length > 0
		new OffCanvas("[data-#{defaults.menu}]")
