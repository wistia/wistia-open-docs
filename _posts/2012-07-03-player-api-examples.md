---
title: Wistia Video Player API Examples
layout: post
category: Player API
---

## Example: Adding Chapter Links to a Video

`<html>``<body>`
`<div id="thewholeshebang" style="margin: 10px auto 10px;">`
`<!-- First Example: Chaptering !-->`
`<div id="wistia_cc977499dd" style="height:360px;width:640px;float:left;">``</div>`
`<script src='http://static.wistia.com/static/E-v1.js'>``</script>`
`<script type="text/javascript">`
wistiaEmbed = Wistia.embed("cc977499dd");
`</script>`

`<!-- HERE ARE THE LINKS! !-->`
`<div id="thelinks" style="float:left;margin-left:20px;">`
`<br>`
`<a href="#" id="first" style="font-family:arial;">`0:07 - Trailer Starts`</a>`
`<br>`
`<a href="#" id="second" style="font-family:arial">`0:22 - Corn!`</a>`
`<br>`
`<a href="#" id="third" style="font-family:arial">`1:21 - Golfing`</a>`
`<br>`
`<a href="#" id="fourth" style="font-family:arial">`1:38 - Anheuser Busch`</a>`
`</div>``</div>`
`<!-- END THE LINKS !-->`

`<script type="text/javascript">`
    document.getElementById("first").onclick = function () { wistiaEmbed.time(7); return false;}
    document.getElementById("second").onclick = function () { wistiaEmbed.time(22); return false;}
    document.getElementById("third").onclick = function () { wistiaEmbed.time(81); return false;}
    document.getElementById("fourth").onclick = function () { wistiaEmbed.time(98); return false;}
`</script>`

`</html>`
\\
\\
\\


## How it's Done

### Case 1: Chaptering Embedded video
 
First, try embedding your video onto your page, to make sure it works properly without the chaptering links.

Next, review the source code for your embedded video on your page. You'll notice some javascript similar to the following:

	:::javascript
	`<script type="text/javascript">`wistiaEmbed = Wistia.embed("bfc34aa023", { ... options ... });`</script>`


The **''wistiaEmbed''** variable can be used to control the video.  If you plan to have multiple videos on your page, change the **''wistiaEmbed''** variable to something more specific, like the name of your video (ie. ''**mattDamon**'').

The template link below can be used to help build the chapter links.  Replace the "wistiaEmbed" with your video's variable name, change the '60' to your desired time (in seconds), and replace the "Your link text here" with the text you wish to appear as your link text.
\\
`<a href="#" onclick="wistiaEmbed.time(60);return false;">`Your link text here`</a>` `{html}  
\\
\\
This is all that is necessary to create chaptering link for your embedded video.  If you wish to create multiple chaptering links for the same video, simply copy the link you created and replace the link text and seek time with the appropriate values.


### Case 2: Chaptering Video in the Wistia application

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

`<code html>``<p>`
    `<span style="font-size:18px;">`
    `<a href="#media" onclick="parent.theMediaEmbed.seek(90);return(false);">`1:30 New Section`</a>`
    `</span>`
`</p>`
`</code>`

To modify this code for your video, simply replace the number in the ".seek(90)" with the location that you wish the chapter marking to seek to in seconds.  Next, edit the text "1:30 New Section" between the '>' and the '<' to be the text that you wish to display for that chapter.

Once you have made these edits, copy the code and paste it into the Description editor that is already in Source mode.  Simply click the "Save" button and your working Chapter link should appear.



## Example: Start Wistia Player at Volume 0

To mute a video on load, you can simply set the volume to 0 on your video object. This can be done immediately on embed.

`<html>`
`<!-- YOUR EMBED CODE -->`
`<div id="wistia_47254d52b7" style="height:360px;width:640px;">``</div>`
`<script src='http://static.wistia.com/static/E-v1.js'>``</script>`
`<script type="text/javascript">`mutedEmbed = Wistia.embed("47254d52b7").volume(0);`</script>`
`<!-- END YOUR EMBED CODE -->`
`</html>`

	:::html
	`<!-- YOUR EMBED CODE -->`
	`<div id="wistia_47254d52b7" style="height:360px;width:640px;">``</div>`
	`<script type="text/javascript" src="http://static.wistia.com/static/E-v1.js">``</script>`
	`<script type="text/javascript">`mutedEmbed = Wistia.embed("47254d52b7").volume(0);`</script>`
	`<!-- END YOUR EMBED CODE -->`


