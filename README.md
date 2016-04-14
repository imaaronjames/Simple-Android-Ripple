# Simple-Android-Ripple
A Framer Studio module for adding touch ripple animations to any layer

## Installation

1. First, download the [Pointer Module](http://framerco.de/post/130291848269/module-pointer-helper-class-this-module-helps-you) by [Jordan Dobson](https://twitter.com/jordandobson). *This module is required.*
2. Download the androidRipple.coffee file.
2. Create a new Framer project and add both androidRipple.coffee and Pointer.coffee to your /modules folder.
3. Add `Android = require 'androidRipple'` at the top of your document.

[Sample Project can be found here](http://share.framerjs.com/aqzkcamx0iqw/)

More info about modules for Framer Studio: [FramerJS Docs - Modules](http://framerjs.com/docs/#modules)

![TextLayer](https://raw.githubusercontent.com/imaaronjames/Simple-Android-Ripple/master/androidRipple-Sample-Project.framer/images/sample-code.png)

## How to use this module
You only need one line of code to make Simple Android Ripples work. It looks a little something like this:

&nbsp;&nbsp;&nbsp;&nbsp;`layerName.on(Events.Click, Android.Ripple)`

Replace layerName with the name of the layer you wish to add a touch ripple to when clicked.

### Simple yet powerful customization
This module can accept any Event to fire the ripple. Click is the most commonly used event, but you can also use any of [these here](http://framerjs.com/docs/#events.events).

___
That's it! the ripple layers will automatically animate in and out for you. When the layers animate out, they will be destroyed for you. Simple.
