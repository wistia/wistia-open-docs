# HTML5 Video Embeds

## Anatomy of the Embed Code

The structure of a Wistia video embed looks roughly like this:

	:::html
	`<object id="wistia_123">``<embed>`...`</embed>``</object>`
	`<script>``</script>`


The first line is the Flash video embed. The second line (with the JavaScript) is the HTML5 embed.

The default behavior for a Wistia embed is to display the Flash video. If you're loading the embed code from a device that does not support Flash, the `<object>` element is replaced dynamically with an HTML5 `<video>` element.

## HTML5 as default, Flash as fallback

Sometimes we want to use HTML5 video as the default and fallback to Flash in the case the browser doesn't support HTML5 video. Things are further complicated by the fact that not all browsers that support HTML5 video support all popular video codecs. For instance, the h.264 video codec is supported by Chrome and Safari but not Firefox at the moment. Wistia's video is primarily encoded using the h.264 codec.

To make sure everything works correctly, we need to verify the user's browser supports not only HTML5 video, but the h.264 codec. To do this we'll use the following JavaScript snippet:

	:::JavaScript
	try{if(document.createElement("video").canPlayType('video/mp4; codecs="avc1.42E01E, mp4a.40.2"') != '')Wistia.VideoEmbed(...)}catch(e){}


This code checks if the browser can play h.264 video using HTML5, and if it can, it calls the Wistia.VideoEmbed function, which inserts the player into the page.

So if this is your original embed code:

	:::html
	`<object id="wistia_111485" width="640" height="360" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/>`
	  `<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>`
	  `<param name="wmode" value="opaque"/>`
	  `<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27"/>`
	  `<embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="360" name="wistia_111485" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27">``</embed>`
	`</object>`
	`<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>`
	`<script>`
	if(!navigator.mimeTypes['application/x-shockwave-flash'])
	Wistia.VideoEmbed('wistia_111485',640,360,{videoUrl:'http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin',stillUrl:'http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_111485',mediaDuration:51.27})
	`</script>`


To adjust this code to use HTML5 as the default and fallback on Flash, you'll need to change the JavaScript code near the end of the embed to incorporate the snippet above. The final code looks like this:

	:::html
	`<object id="wistia_111485" width="640" height="360" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/>`
	  `<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>`
	  `<param name="wmode" value="opaque"/>`
	  `<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27"/>`
	  `<embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="360" name="wistia_111485" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27">``</embed>`
	`</object>`
	`<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>`
	`<script>`
	try{if(document.createElement("video").canPlayType('video/mp4; codecs="avc1.42E01E, mp4a.40.2"') != '')
	Wistia.VideoEmbed('wistia_111485',640,360,{videoUrl:'http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin',stillUrl:'http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_111485',mediaDuration:51.27})
	}catch(e){}
	`</script>`




## HTML5 only embeds

Altering an embed code so it will only display HTML5 video is easy. All you need to do is delete the snippet of JavaScript near the end of the embed code that looks like this:

	:::JavaScript
	if(!navigator.mimeTypes['application/x-shockwave-flash'])


So if this is your original embed code:

	:::html
	`<object id="wistia_111485" width="640" height="360" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/>`
	  `<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>`
	  `<param name="wmode" value="opaque"/>`
	  `<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27"/>`
	  `<embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="360" name="wistia_111485" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27">``</embed>`
	`</object>`
	`<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>`
	`<script>`
	if(!navigator.mimeTypes['application/x-shockwave-flash'])
	Wistia.VideoEmbed('wistia_111485',640,360,{videoUrl:'http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin',stillUrl:'http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_111485',mediaDuration:51.27})
	`</script>`


Removing that snippet, yields an embed code that looks like this:

	:::html
	`<object id="wistia_111485" width="640" height="360" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/>`
	  `<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>`
	  `<param name="wmode" value="opaque"/>`
	  `<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27"/>`
	  `<embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="360" name="wistia_111485" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27">``</embed>`
	`</object>`
	`<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>`
	`<script>`
	Wistia.VideoEmbed('wistia_111485',640,360,{videoUrl:'http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin',stillUrl:'http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_111485',mediaDuration:51.27})
	`</script>`


If you're planning only to display HTML5 video, feel free to replace the `<object>` element and all its contents with a `<div>` element instead. You'll need to give the `<div>` element the same ID that the `<object>` element had though, so the JavaScript can locate it. Continuing with the same example above:

	:::html
	`<div id="wistia_111485" width="640" height="360">`The HTML5 video is loading ...`</div>`
	`<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>`
	`<script>`
	Wistia.VideoEmbed('wistia_111485',640,360,{videoUrl:'http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin',stillUrl:'http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_111485',mediaDuration:51.27})
	`</script>`

