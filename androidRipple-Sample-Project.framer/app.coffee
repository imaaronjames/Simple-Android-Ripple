## Created by Aaron James - April 14th, 2016
Android = require "androidRipple"

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
	clip: true ## buttons must include clip
btn.center()

# Add ripple to layer
btn.on(Events.Click, Android.Ripple)
