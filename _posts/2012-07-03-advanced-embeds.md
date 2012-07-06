---
title: Advanced Wistia Embed Customization
layout: post
category: For Developers
---

We think [Wistia Super Embeds]({{ site.url }}/{{ page.lang }}/embed_screen.html) are pretty awesome.  They make it easy for web video to look it's best.  But sometimes our customers might be looking to do even more customization.  This doc page will help answer some of the questions that come up with Wistia embed options.

## Custom CTA Examples

`<html>`
`<div style="position:relative;width:640px;height:360px;overflow:hidden;">`
`<div class="wistia-post-roll" style="position:absolute;left:-640px;width:640px;height:360px;">`
`<a href="http://wistia.com/trials/new">``<img id="myImg" src="http://embed.wistia.com/deliveries/47ec39cf47db9698913ce761fb0a2d21f646d316/post.jpg">``</a>`

`<div style="position:relative;line-height:360px;">`
`</div>``</div>``<div>`

`<object width="640" height="360" id="wistia_589848" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.2.swf"/>``<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>``<param name="wmode" value="opaque"/>``<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/ddd9c80b68c0dba5a19acec8e0f6b751b2ecffb3.bin&stillUrl=http://embed.wistia.com/deliveries/22622107f12b4d92ca77e5b234216f5ed9ffd14d.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_589848&mediaDuration=57.77&endVideoCallback=wistiaPostRoll"/>``<embed src="http://embed.wistia.com/flash/embed_player_v1.2.swf" width="640" height="360" name="wistia_589848" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/ddd9c80b68c0dba5a19acec8e0f6b751b2ecffb3.bin&stillUrl=http://embed.wistia.com/deliveries/22622107f12b4d92ca77e5b234216f5ed9ffd14d.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_589848&mediaDuration=57.77&endVideoCallback=wistiaPostRoll">``</embed>``</object>``<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>``<script>`if(!navigator.mimeTypes['application/x-shockwave-flash'] || navigator.userAgent.match(/Android/i)!==null)Wistia.VideoEmbed('wistia_589848',640,360,{videoUrl:'http://embed.wistia.com/deliveries/ddd9c80b68c0dba5a19acec8e0f6b751b2ecffb3.bin',stillUrl:'http://embed.wistia.com/deliveries/22622107f12b4d92ca77e5b234216f5ed9ffd14d.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_589848',mediaDuration:57.77})`</script>``</div>``</div>``<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js">``</script>`

`<script type="text/javascript">`
//<!CDATA[
jQuery.noConflict();(function($) {

window.wistiaPostRoll = function() { $(".wistia-post-roll").animate({ left: 0 }, 1000, "swing"); };$("[id^=wistia_59]").filter("[id$=html5]").bind("ended", wistiaPostRoll);}(jQuery));
//]]>
`</script>`



`</html>`
\\
\\
----
\\

## Custom Popovers


Wistia's popover implementation utilizes Fancybox, a plug-in for jQuery. The Fancybox API gives access to all kinds of custom effects and settings that Wistia users can access. Here are a few of our favorites that we've helped customers implement: 

### Adding a Border Around Your Video in a Popover

If you're shooting video with light-colored backgrounds, a border can add definition to the video. `<html>``<a id="a141167104_videoPopup" href="//app.wistia.com/embed/medias/4e21ff57d7.html?width=640&height=290&autoplay=false&playbutton=true&controls_visible=false&end_video_behavior=default">`See an example of this effect`</a>``<script type="text/javascript" src="//static.wistia.com/popover/popover.js">``</script>``<script type="text/javascript">`Wistia.requireFancyBoxAssets(function() {Wistia.fancyBoxJQuery("#a141167104_videoPopup").fancybox({type: "iframe",width: 640,height: 290,});});`</script>``</html>`.

Add this style to your CSS, or inline in between tags.

	
	 #fancybox-content {
	    border: 5px solid black !important;
	  }
	  
	  #fancybox-outer {
	    padding-right: 0px;
	    padding-top: 10px;
	    padding-bottom: 10px;
	    padding-left: 10px;
	  }



### “Blackout” Effect Behind the Popover

Sometimes, you want to completely hide the content behind the video popover. Or, you'd like to change the color that shows up to better match your overall site color scheme. Here is how to change the Overlay Color and Opacity for your Popover (`<html>`<a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true"
class='wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=60,]'>click here to experience the effect`</a>``<script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js">``</script>`
`</html>`).

To do this, you'll need to add attributes to the Inline styling for the Fancybox implementation. 

Here is the normal Popover code:

	
	<a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true"
	class="wistia-popover[width=640,height=360,playerColor=#636155]">`<img src="http://embed.wistia.com/deliveries/d88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg?image_play_button=true&image_crop_resized=150x84" />``</a>`
	`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js">``</script>` 



Inside the “class” area, we're going to use 'helpers' to add this additional functionality:

	
	helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=20


We also added padding, to provide that 'picture frame' effect around the video.
\\
\\
The final embed code looks like this:

	
	<a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true"
	class="wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=60,]'>click here to experience the effect`</a>``<script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js">``</script>`

\\
\\
### Adding a Title or Captions to your Popover

Just like the color and opacity above, adding a title/caption to your popover involves the use of helpers.
\\
\\
Let's start with the same embed code as above:

	
	<a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true"
	class="wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=60,]'>click here to experience the effect`</a>``<script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js">``</script>`


Now, let's add the following to the 'class' area:

	
	title=`<center>``<strong>`SuperEmbeds Rock!`</strong>``</center>`,helpers.title.type=inside,


We just added the title content (with the 'title=' entry) and set the title to display inside the popover frame (with the 'helpers.title.type=inside' entry).  Other options for the title type include 'float', 'outside', and 'over'.  Play around to see which you like best.
\\
\\
To see what this looks like, check this `<html>``<a href="http://fast.wistia.com/embed/iframe/19bd8cf131?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" class='wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,title=<center>``<strong>`SuperEmbeds Rock!`</strong>``</center>`,helpers.title.type=inside,padding=60,]'>Popover with Title example`</a>``<script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js">``</script>``</html>`.
\\
\\
\\
\\
## Have Your Wistia Popover Appear on Page Load

You'd like to send viewers a URL that they can open, and the popover will automatically display.

	
	$(document).ready( function() {
	var url = window.location.href.toString();
	if ( url.indexOf('launch-the-popover') != -1 )
	{
	  wistiaJQuery('a[class^=wistia-popover]').first().click();
	}
	});


If you have more than one popover on the page, you'll want to add an ID onto the link, so you can launch specific popovers.

## Add Custom Pre-Roll to Your Videos

In this example, we create a div for the videos to exist in, and then add the videos (pre-roll video first) inside the div. After the pre-roll video finishes playing, it will be replaced using javascript with the second video (the main content).

Our player API provides the ability to 'bind' actions when the video finishes - so when the first video is done, it executes a 'function', which in this case is the action of replacing the current video with the main content.

Each video in the system has a 'hashed id', which in this example is `<html>``<span style="color:red;font-weight:bold">`d90b54e175`</span>``</html>` and `<html>``<span style="color:red;font-weight:bold">`bc9095e31e`</span>``</html>`.  Copy this from your embed code and input it in this template.

To get the thumbnail for the second video (ie the main content) to show up before playing, you'll want to add the 'stillUrl' parameter to the first video (as shown in the example).  To get the URL for the thumbnail for the main content, the best workaround is to copy the img src URL from a popover embed code for the video, or an email marketing merge tag.

`<html>`
`<script src="https://gist.github.com/2925931.js?file=gistfile1.html">``</script>`
`</html>`

And now the finished product!

`<html>`
`<div id="video_container" class="wistia_embed" style="width:640px;height:272px;" data-video-width="640" data-video-height="272">` `</div>`

`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js">``</script>`

`<script>`/*<![CDATA[*/

preRollEmbed = Wistia.embed("d90b54e175", {
    version: "v1",
    videoWidth: "640",
    videoHeight: "272",
    chromeless: true,
    container: "video_container",
    stillUrl: 'http://embed-0.wistia.com/deliveries/629013b3611293b5b3a4880570f4811b6c0db036.jpg'
});

preRollEmbed.bind("end", function() {
    preRollEmbed.remove();
    wistiaEmbed = Wistia.embed("bc9095e31e", {
    version: "v1",
    videoWidth: "640",
    videoHeight: "272",
    controlsVisibleOnLoad: true,
    container: "video_container",
    autoPlay: true
    });
});

/*]]>*/`</script>`
`</html>`
\\
\\

## Using Selective Autoplay (Autoplay for viewers from specific sources)

If you are putting video thumbnails in your email messages, we recommend making the videos autoplay whenever a viewer reaches the page by clicking the email link. This “selective autoplay” can be accomplished by writing a very short script that looks for a token included in the email links.

If you'd like to enable this behavior, copy and paste this JavaScript snippet with your embed code.
When a visitor lands on your page with the video and they have "wemail=" in the URL (this is the mechanism by which Wistia passes emails to our analytics from emails), the video will automatically start playing. For everyone else who doesn't arrive via email, the video won't autoplay. 

`<html>`
`<script src="https://gist.github.com/3019601.js?file=selective_autoplay.js">``</script>`
`</html>`
\\
\\
---
\\
\\

