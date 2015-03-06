define(['jquery', 'superScrollorama', 'tweenMax'], ($) ->
	
	st =
		index : '.index'

	dom = {}
	catchDom = ->
		dom.index = $(st.index)
		return
	suscribeEvents = ->
		return
	functions = 
		animating: ->
			log 'empty...'
			return

	functions.animating()

	return
)