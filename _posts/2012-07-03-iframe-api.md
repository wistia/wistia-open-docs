---
title: iframe Video Player API
layout: post
category: For Developers
---

Accessing the [Video Player API]({{ site.url }}/{{ page.lang }}/player-api.html) when using iframe embeds is easy!

There is a script that can be used to access the player API from 
outside the iframe. It has the same interface as the normal player API, 
but with the caveat that it won't work in IE7 and below (it won't break
anything, it just doesn't work). If you aren't too concerned with outdated 
browsers, this is the recommended way to access the player API.

**Note:** The iframe player API is still experimental. We've tested it thoroughly and it works, but it hasn't been fully battle tested yet. If you run into any issues, please shoot us an email at [support@wistia.com]({{ site.url }}/{{ page.lang }}/mailto/support@wistia.com.html) and we'll get right on it!

## How to use it

Put the following just before the `</body>` tag:

`<code html>``<script src="//fast.wistia.com/static/iframe-api-v1.js">``</script>`
`</code>`

Now you can access the API by getting the ''wistiaApi'' property from the iframe element.
You can assign an ID to each wistia iframe so you can get an easy handle to it.
Take a look:

	:::javascript
	wistiaEmbed = document.getElementById("my_iframe").wistiaApi;
	wistiaEmbed.bind("end", function() {
	  alert("The video ended!");
	});
	wistiaEmbed.time(30).play();


Take a look at the [Video Player API]({{ site.url }}/{{ page.lang }}/player-api.html) for the full documentation on what's possible.

