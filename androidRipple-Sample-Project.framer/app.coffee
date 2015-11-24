## Created by Aaron James - November 24th, 2015
android = require "androidRipple"

bg = new BackgroundLayer
	backgroundColor: "#eeeeee"

btn = new Layer
	width: 800, height: 200
	backgroundColor: "#fafafa"
	borderRadius: 12
	shadowX: 0
	shadowY: 6
	shadowBlur: 6
	shadowColor: "rgba(0,0,0,0.24)"
btn.center()

# Add ripple to layer
btn.on(Events.Click, android.ripple)
