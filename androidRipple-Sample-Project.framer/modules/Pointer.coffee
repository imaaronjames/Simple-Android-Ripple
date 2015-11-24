##############################################################################
# Created by Jordan Robert Dobson on 14 August 2015
# 
# Use to normalize screen & offset x,y values from click or touch events.
#
# To Get Started...
#
# 1. Place this file in Framer Studio modules directory
#
# 2. In your project include:
#     {Pointer} = require "Pointer"
#
# 3. For screen coordinates: 
#     btn.on Events.Click, (event, layer) -> print Pointer.screen(event, layer)
# 
# 4. For layer offset coordinates: 
#     btn.on Events.Click, (event, layer) -> print Pointer.offset(event, layer)
#
##############################################################################

class exports.Pointer

	##############################################################################
	# Public Methods #############################################################

	@screen = (event, layer) ->
		screenArgumentError() unless event? and layer?
		e = offsetCoords event
		if e.x and e.y
			# Mouse Event
			screenCoords = layer.screenFrame
			e.x += screenCoords.x
			e.y += screenCoords.y
		else
			# Touch Event
			e = clientCoords event
		return e
			
	@offset = (event, layer) ->
		offsetArgumentError() unless event? and layer?
		e = offsetCoords event
		unless e.x? and e.y?
			# Touch Event
			e = clientCoords event
			targetScreenCoords = layer.screenFrame
			e.x -= targetScreenCoords.x
			e.y -= targetScreenCoords.y
		return e
	
	##############################################################################
	# Private Helper Methods #####################################################
	
	offsetCoords = (ev)  -> e = Events.touchEvent ev; return coords e.offsetX, e.offsetY
	clientCoords = (ev)  -> e = Events.touchEvent ev; return coords e.clientX, e.clientY
	coords       = (x,y) -> return x:x, y:y
	
	##############################################################################
	# Error Handler Methods ######################################################
	
	screenArgumentError = ->
		error null
		console.error """
			Pointer.screen() Error: You must pass event & layer arguments. \n
			Example: layer.on Events.TouchStart,(event,layer) -> Pointer.screen(event, layer)"""
			
	offsetArgumentError = ->
		error null
		console.error """
			Pointer.offset() Error: You must pass event & layer arguments. \n
			Example: layer.on Events.TouchStart,(event,layer) -> Pointer.offset(event, layer)"""