# Wistia Video Player API Examples

## Example: Adding Chapter Links to a Video

### A Quick API Breakdown

#### Embedded video

With Wistia's video player API, it is possible to create chapter links which, when clicked, will advance (or rewind) the video player to a particular time in the video.  This is very useful for long form content to allow viewers to jump to particular points in the video where particular things happen.  Additionally, it is extremely easy to implement in HTML.   

First, we assume that the video has already been embedded on your website.  Next, view the source code for the embedded video either on your page or by generating a new embed code within Wistia.  Your embed code will look similar to the following:
\\
`<style center>`{{:embed-code-id-highlighted.png|}}`</style>`
\\
Notice the **''id''** parameter near the beginning of the embed code that is highlighted in red.  Copy this ID (wistia_82401 in this instance) as it will need to be referenced in your chapter link.

Next, copy the link below and place it in your HTML where you wish the chapter link to appear.  Replace the "wistia_82401" with your video's ID and replace the "Your link text here" with the text you wish to appear as your link text.  
\\
`<a href="#" onClick="window.document['wistia_82401'].videoSeek(60);return false;">`Your link text here`</a>` `  
\\
Finally, you will see that the onClick handler for the link (the part that actually tells the video to seek to a specific location is of the form:
\\
`window.document['wistia_82401'].videoSeek(60);return false;`
\\
Here **''videoSeek(60)''** tells the video player to go to the 60 second point in the video.  For your chapter link, replace the 60 with the time in the video (in seconds) you wish to seek to.

This is all that is necessary to create chaptering link for your embedded video.  If you wish to create multiple chaptering links for the same video, simply copy the link you created and replace the link text and seek time with the appropriate values.


#### Video in the Wistia application

First, create a Description Sidebar Element on the page where the video is displayed.  To do this, hover over the green Media Actions menu and choose "Add Sidebar Element".  You will see a dialog box appear that will offer you two choice.  Click "Add" for the Description Sidebar Element.  You new Description Sidebar Element will appear on the right hand side.

`<style float-right>`{{:source-mode.png?200|}}
`</style>`
\\
\\
\\
\\
Next, it is important to get the Description element into the mode where we can enter the chapter information.  To do this, click the "Edit" button below the element.  This will switch it into Edit mode.  Next, click the "Advanced" button in the lower left-hand corner of the element.  Finally, click the "Source" button shown in the image to allow the necessary source code needed to create chapters in the video. 
\\
\\
\\
\\
The structure of the code to create Chapter links is as follows:

`<code>``<p>`
    `<span style="font-size:18px;">`
    `<a href="#media" onclick="parent.theMediaEmbed.seek(90);return(false);">`1:30 New Section`</a>`
    `</span>`
`</p>`
`</code>`

To modify this code for your video, simply replace the number in the ".seek(90)" with the location that you wish the chapter marking to seek to in seconds.  Next, edit the text "1:30 New Section" between the '>' and the '<' to be the text that you wish to display for that chapter.

Once you have made these edits, copy the code and paste it into the Description editor that is already in Source mode.  Simply click the "Save" button and your working Chapter link should appear.

## Check out the finished product!

`<html>``<body>`
`<object width="640" height="360" id="wistia_91175" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/>``<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>``<param name="wmode" value="opaque"/>``<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/392a82a625fba89deec7cbc7e15cce55e9598c81.bin&stillUrl=http://embed.wistia.com/deliveries/34b67ab5b0ba1fa952ba293e13842a1f7a1317d4.bin&unbufferedSeek=true&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_91175&mediaDuration=149.1"/>``<embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="360" name="wistia_91175" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/392a82a625fba89deec7cbc7e15cce55e9598c81.bin&stillUrl=http://embed.wistia.com/deliveries/34b67ab5b0ba1fa952ba293e13842a1f7a1317d4.bin&unbufferedSeek=true&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_91175&mediaDuration=149.1">``</embed>``</object>`
`<!-- HERE ARE THE LINKS! !-->`
`<br>`
`<a href="#" onClick="window.document['wistia_91175'].videoSeek(7);return false;" style="font-family:arial;">`0:07 - Trailer Starts`</a>`
`<br>`
`<a href="#" onClick="window.document['wistia_91175'].videoSeek(22);return false;" style="font-family:arial">`0:22 - Corn!`</a>`
`<br>`
`<a href="#" onClick="window.document['wistia_91175'].videoSeek(81);return false;" style="font-family:arial">`1:21 - Golfing`</a>`
`<br>`
`<a href="#" onClick="window.document['wistia_91175'].videoSeek(98);return false;" style="font-family:arial">`1:38 - Anheuser Busch`</a>`
`<!-- END THE LINKS !-->`
`</body>`
`</html>`

## Example: Mid-roll Pop-Up Link on Top of Video Player

`<html>``<body>`
`<!-- THIS IS ALL CSS STYLE RELATED TO THE POP-UP LINK  !-->`
`<style type="text/css">`#wistia-container {  width: 640px;  height: 332px;  position: relative;}#flyout-text {  width: 640px;  height: 60px;  position: relative;}#the-video {  width: 640px;  height: 272px;  position: relative;}#flyout-text a#try-it {  position: absolute;  top: 80px;  background: #444444;  color: white;  width: 630px;  height: 60px;  display: block;  -moz-border-radius: 10px 10px 0 0 ;  -webkit-border-top-right-radius: 10px;  -webkit-border-top-left-radius: 10px;  border-radius: 10px 10px 0 0;  padding-left: 10px;  padding-top: 10px;  font-size: 18px;  font-family: arial;  overflow: hidden;}#the-video a#try-it:hover {  cursor: pointer;}`</style>`

`<!-- END STYLE, START HTML !-->`

`<div id="wistia-container">``<div id="flyout-text">``<a id="try-it" href="http://wistia.com">`This is my link to display`</a>``</div>`

`<!-- HERE IS THE REGULAR VIDEO EMBED, WRAPPED IN A DIV !-->`

`<div id="the-video">``<object width="640" height="272" id="wistia_181279" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/>``<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>``<param name="wmode" value="window"/>``<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/14cb1fed9fb9d2c235be9e00e7998ad3a9e1a278.bin&stillUrl=http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_181279&mediaDuration=74.4"/>``<embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="272" name="wistia_181279" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="window" flashvars="videoUrl=http://embed.wistia.com/deliveries/14cb1fed9fb9d2c235be9e00e7998ad3a9e1a278.bin&stillUrl=http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_181279&mediaDuration=74.4">``</embed>``</object>`

`<!-- END EMBED CODE, START JAVASCRIPT !-->`

`<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>``<script>`if(!navigator.mimeTypes['application/x-shockwave-flash'])Wistia.VideoEmbed('wistia_181279',640,272,{videoUrl:'http://embed.wistia.com/deliveries/14cb1fed9fb9d2c235be9e00e7998ad3a9e1a278.bin',stillUrl:'http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_181279',mediaDuration:74.4})`</script>``</div>``</div>`

`<!-- SCRIPT FOR POP-UP LINK !-->`

`<script>`function onInitJQuery() {  var tryIt = jQuery('#try-it');  var tryItVisible = false;  setInterval(function(){    try {      var v = document['wistia_181279'];      var t = v.getCurrentTime();    } catch(e) {      return;    }    if (t > 18 && t `< 28 && !tryItVisible) {      tryIt.animate({top:10}, 400, 'swing');      tryItVisible = true;    }    if ((t < 18 || t >` 28) && tryItVisible) {      tryIt.animate({top:'80px'}, 400, 'swing');      tryItVisible = false;    }  }, 500);}`</script>``<script>`var jQueryScriptOutputted = false;function initJQuery() {  if (typeof(jQuery) == 'undefined') {    if (! jQueryScriptOutputted) {      jQueryScriptOutputted = true;      document.write("`<scr" + "ipt src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js\">``</scr" + "ipt>`");    }    setTimeout(initJQuery, 50);  } else {    onInitJQuery();  }}initJQuery();`</script>`

`</body>`
`</html>`
\\

## Example: Hiding the Player Controls

`<html>`
`<body>`

`<!-- NEED A DIV TO WORK AS A BUTTON OVERLAY !-->`

	<div id="overlay" onclick="playPause();return false;" style="z-index:999;position:absolute;display:block;width:640px;height:360px;"><a href="#" onclick="playPause();return false;" style="border:none;"><img src="http://embed.wistia.com/deliveries/f513bf92028610bb690f34bb026230921c2c2056/transparent.gif" style="width:640px;height:360px;display:block;border:none;" onclick="playPause();" /></a></div>
	<div class="video" style="display:block;width:640px;height:360px;">
		<object width="640" height="360" id="wistia_111485" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/><param name="allowfullscreen" value="true"/><param name="allowscriptaccess" value="always"/><param name="wmode" value="opaque"/><param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27&chromeless=true"/><embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="360" name="wistia_111485" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/ffee339b2ac6720a11b111f09e2f2d96a652e029.bin&stillUrl=http://embed.wistia.com/deliveries/474c450ccfced3e11d5ec3eacbb031de0f77c94a.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111485&mediaDuration=51.27&chromeless=true"></embed></object>
`</div>`

`<br>`

`<!-- THIS IS THE PLAY BUTTON LINK !-->`

`<a href="" id="playButton" onclick="playPause();return false;" style="font-family:arial;display:inline;font-size:1.5em;">`Play video`</a>`
`<a href="" id="pauseButton" onclick="playPause();return false;" style="font-family:arial;display:none;font-size:1.5em;">`Pause video`</a>`
`<script>`

	function playPause() {
		var state = window.document['wistia_111485'].getCurrentState();

		if (state != 1) {
		  window.document['wistia_111485'].videoPlay();
		  document.getElementById('pauseButton').style.display = 'block';
		  document.getElementById('playButton').style.display = 'none';
	  	} else {
	          window.document['wistia_111485'].videoPause();
		  document.getElementById('playButton').style.display = 'block';
		  document.getElementById('pauseButton').style.display = 'none';
		}
	}
`</script>`

`</body>`
`</html>`
\\
## Example: Start Wistia Player at Volume 0

`<html>`
`<body>`

`<!-- YOUR EMBED CODE -->`

`<object width="640" height="360" id="wistia_236794" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/>``<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>``<param name="wmode" value="opaque"/>``<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/b5019373b81eb4ebbe3b828e799be7bbedb6a386.bin&stillUrl=http://embed.wistia.com/deliveries/398ab383cb3179ad59965d10d5827613e84b85f9.bin&unbufferedSeek=true&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_4247&mediaID=wistia-production_236794&mediaDuration=100.29"/>``<embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="360" name="wistia_236794" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/b5019373b81eb4ebbe3b828e799be7bbedb6a386.bin&stillUrl=http://embed.wistia.com/deliveries/398ab383cb3179ad59965d10d5827613e84b85f9.bin&unbufferedSeek=true&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_4247&mediaID=wistia-production_236794&mediaDuration=100.29">``</embed>``</object>``<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>``<script>`if(!navigator.mimeTypes['application/x-shockwave-flash'])Wistia.VideoEmbed('wistia_236794',640,360,{videoUrl:'http://embed.wistia.com/deliveries/c6006f6169e2a351196563ccd8888868f21333d6.bin',stillUrl:'http://embed.wistia.com/deliveries/398ab383cb3179ad59965d10d5827613e84b85f9.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_4247',mediaId:'wistia-production_236794',mediaDuration:100.29})`</script>`

`<!-- END YOUR EMBED CODE -->`

`<!-- SCRIPT TO ADJUST VOLUME -->`

    `<script>`	    
	    var setupInterval;
	    seekNow();

	    function seekNow() {

		    setupInterval = setInterval("interfaceReady()", 100);
	    }

	    function interfaceReady() {
		    try {
			    window.document['wistia_236794'].setVolume(0);
			    clearInterval(setupInterval);
		    }
		    catch(e) {
		    }
	    }
    `</script>`

`<!-- END SCRIPT TO ADJUST VOLUME -->`

`</body>`
`</html>`

## Example: Overlay Image With Interactive CTA at Play End

`<html>`
    `<body>`
    `<div style="width:640px;height:360px;">`
      `<!-- REPLACE THE LINK IN img-src WITH THE LINK TO YOUR IMAGE TO DISPLAY AT THE END-->`
      `<a href="http://wistia.com/trials/new">``<img id="myImg" src="http://embed.wistia.com/deliveries/47ec39cf47db9698913ce761fb0a2d21f646d316/post.jpg" style="position:absolute;display:none;">``</a>`
	    
      `<!-- INSERT EMBED CODE HERE !-->`
`<object width="640" height="360" id="wistia_111454" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000">``<param name="movie" value="http://embed.wistia.com/flash/embed_player_v1.1.swf"/>``<param name="allowfullscreen" value="true"/>``<param name="allowscriptaccess" value="always"/>``<param name="wmode" value="opaque"/>``<param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/ddd9c80b68c0dba5a19acec8e0f6b751b2ecffb3.bin&stillUrl=http://embed.wistia.com/deliveries/22622107f12b4d92ca77e5b234216f5ed9ffd14d.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111454&mediaDuration=57.77&endVideoCallback=myFunction"/>``<embed src="http://embed.wistia.com/flash/embed_player_v1.1.swf" width="640" height="360" name="wistia_111454" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/ddd9c80b68c0dba5a19acec8e0f6b751b2ecffb3.bin&stillUrl=http://embed.wistia.com/deliveries/22622107f12b4d92ca77e5b234216f5ed9ffd14d.bin&unbufferedSeek=false&controlsVisibleOnLoad=false&autoPlay=false&endVideoBehavior=default&playButtonVisible=true&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_111454&mediaDuration=57.77&endVideoCallback=myFunction">``</embed>``</object>``<script src="http://embed.wistia.com/embeds/v.js" charset="ISO-8859-1">``</script>``<script>`if(!navigator.mimeTypes['application/x-shockwave-flash'])Wistia.VideoEmbed('wistia_111454',640,360,{videoUrl:'http://embed.wistia.com/deliveries/ddd9c80b68c0dba5a19acec8e0f6b751b2ecffb3.bin',stillUrl:'http://embed.wistia.com/deliveries/22622107f12b4d92ca77e5b234216f5ed9ffd14d.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_111454',mediaDuration:57.77})`</script>`
      `<!-- END-INSERT EMBED CODE HERE !-->`


    `</div>`

    `<!-- Javascript function to un-hide still image after the video completes!-->`
    `<script type="text/javascript">`
      function myFunction() {
	var x = document.getElementById("myImg");
	x.style.display = "inline";
      } 
    `</script>`

    `</body>`
`</html>`


