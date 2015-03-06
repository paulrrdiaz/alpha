window.log = () ->
	enviroment = () ->
		return /(local\.|dev\.|localhost)/gi.test(document.domain)

	if (typeof (console) != "undefined" && enviroment())
		if (typeof (console.log.apply) != "undefined")
			console.log.apply(console, arguments)            
		else
			console.log(Array.prototype.slice.call(arguments))
	return