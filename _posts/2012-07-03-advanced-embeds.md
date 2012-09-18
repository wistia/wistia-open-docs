---
title: Advanced Wistia Embed Customization
layout: post
category: For Developers
description: Learn how to create awesome add ons and effects to your embed codes with these tutorials!
footer: 'for_developers'
post_intro: <p>We think <a href="http://localhost:4000/embed_screen.html">Wistia Super Embeds</a> are pretty awesome.</p><p>They make it easy for web video to look it's best. But sometimes our customers might be looking to do even more customization. This doc page will help answer some of the questions that come up with Wistia embed options.</p>
---


## Custom Popovers


Wistia's popover implementation utilizes Fancybox, a plug-in for jQuery. The Fancybox API gives access to all kinds of custom effects and settings that Wistia users can access. Here are a few of our favorites that we've helped customers implement: 

### Adding a Border Around Your Video in a Popover

If you're shooting video with light-colored backgrounds, a border can add definition to the video. <a id="a141167104_videoPopup" href="//app.wistia.com/embed/medias/4e21ff57d7.html?width=640&height=290&autoplay=false&playbutton=true&controls_visible=false&end_video_behavior=default">See an example of this effect</a><script type="text/javascript" src="//static.wistia.com/popover/popover.js"></script><script type="text/javascript">Wistia.requireFancyBoxAssets(function() {Wistia.fancyBoxJQuery("#a141167104_videoPopup").fancybox({type: "iframe",width: 640,height: 290,});});</script>.

Add this style to your CSS, or inline in between tags.

<pre><code class='language-css'>
#fancybox-content {
  border: 5px solid black !important;
}

#fancybox-outer {
  padding-right: 0px;
  padding-top: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
}
</code></pre>

---

### Blackout Effect Behind the Popover

Sometimes, you want to completely hide the content behind the video popover. Or, you'd like to change the color that shows up to better match your overall site color scheme. Here is how to change the Overlay Color and Opacity for your Popover (<a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true"
class='wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=60,]'>click here to experience the effect</a><script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"></script>).

To do this, you'll need to add attributes to the Inline styling for the Fancybox implementation. 

Here is the normal Popover code:

<pre><code class="language-markup">
&lt;a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" 
class="wistia-popover[width=640,height=360,playerColor=#636155]"&gt;&lt;img src="http://embed.wistia.com/deliveries/d88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg?image_play_button=true&image_crop_resized=150x84" /&gt;&lt;/a&gt;
&lt;script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"&gt;&lt;/script&gt;
</code></pre>

Inside the “class” area, we're going to use 'helpers' to add this additional functionality:

<pre><code class='language-javascript'>
	helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=20
</code></pre>

We also added padding, to provide that 'picture frame' effect around the video.


The final embed code looks like this:

<pre><code class='language-markup'>
&lt;a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" 
class="wistia-popover[width=640,height=360,playerColor=#636155]"&gt;&lt;img src="http://embed.wistia.com/deliveries/d88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg?image_play_button=true&image_crop_resized=150x84" /&gt;&lt;/a&gt;
&lt;script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"&gt;&lt;/script&gt;
</code></pre>

---

### Adding a Title or Captions to your Popover

Just like the color and opacity above, adding a title/caption to your popover involves the use of helpers.


Let's start with the same embed code as above:

<pre><code class='language-markup'>
&lt;a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" 
class="wistia-popover[width=640,height=360,playerColor=#636155]"&gt;&lt;img src="http://embed.wistia.com/deliveries/d88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg?image_play_button=true&image_crop_resized=150x84" /&gt;&lt;/a&gt;
&lt;script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"&gt;&lt;/script&gt;
</code></pre>

Now, let's add the following to the 'class' area:

<pre><code class="language-javascript">	
	title=<center><strong>SuperEmbeds Rock!</strong></center>,helpers.title.type=inside,
</code></pre>

We just added the title content (with the 'title=' entry) and set the title to display inside the popover frame (with the 'helpers.title.type=inside' entry).  Other options for the title type include 'float', 'outside', and 'over'.  Play around to see which you like best.


To see what this looks like, check this <a href="http://fast.wistia.com/embed/iframe/19bd8cf131?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" class='wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,title=<center><strong>SuperEmbeds Rock!</strong></center>,helpers.title.type=inside,padding=60,]'>Popover with Title example</a><script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"></script>.

--- 

### Have Your Wistia Popover Appear on Page Load

You'd like to send viewers a URL that they can open, and the popover will automatically display.

<pre><code class='language-javascript'>
$(document).ready( function() {
  var url = window.location.href.toString();
  if ( url.indexOf('launch-the-popover') != -1 )
  {
    wistiaJQuery('a[class^=wistia-popover]').first().click();
  }
});
</code></pre>

If you have more than one popover on the page, you'll want to add an ID onto the link, so you can launch specific popovers.

---

## Add Custom Pre-Roll to Your Videos

In this example, we create a div for the videos to exist in, and then add the videos (pre-roll video first) inside the div. After the pre-roll video finishes playing, it will be replaced using javascript with the second video (the main content).

Our player API provides the ability to 'bind' actions when the video finishes - so when the first video is done, it executes a 'function', which in this case is the action of replacing the current video with the main content.

Each video in the system has a 'hashed id', which in this example is <span class="code">d90b54e175</span> and <span class="code">bc9095e31e</span>.  Copy this from your embed code and input it in this template.

To get the thumbnail for the second video (ie the main content) to show up before playing, you'll want to add the 'stillUrl' parameter to the first video (as shown in the example).  To get the URL for the thumbnail for the main content, the best workaround is to copy the img src URL from a popover embed code for the video, or an email marketing merge tag.

<pre><code class='language-markup'>
&lt;div id="video_container" class="wistia_embed" style="width:640px;height:272px;" data-video-width="640" data-video-height="272"&gt; &lt;/div&gt;
&lt;script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js"&gt;&lt;/script&gt;
&lt;script&gt;/*&lt;![CDATA[*/
</code>
<code class='language-javascript'>
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
</code>
<code class='language-markup'>
/*]]&gt;*/&lt;/script&gt;
</code></pre>

### And now the finished product!

<div id="video_container" class="wistia_embed video_embed" style="width:640px;height:272px;" data-video-width="640" data-video-height="272"> </div>

<script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js"></script>

<script>/*<![CDATA[*/

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

/*]]>*/</script>

---

## Selective Autoplay (Autoplay for viewers from specific sources)

If you are putting video thumbnails in your email messages, we recommend making the videos autoplay whenever a viewer reaches the page by clicking the email link. This “selective autoplay” can be accomplished by writing a very short script that looks for a token included in the email links.

If you'd like to enable this behavior, copy and paste this JavaScript snippet with your embed code. **Note:** you must use the 'API' embed type for this to work.

When a visitor lands on your page with the video and they have "wemail=" in the URL (this is the mechanism by which Wistia passes emails to our analytics from emails), the video will automatically start playing. For everyone else who doesn't arrive via email, the video won't autoplay. 

<pre><code class='language-markup'>
&lt;script&gt;
</code>
<code class='language-javascript'>
// Put this somewhere after your embed.
// Update 'wemail' to your string
if (/wemail=/.test(location.href)) {
  wistiaEmbed.play();
}
</code>
<code class='language-markup'>
&lt;/script&gt;
</code></pre>

---

## Creating HTML5-only Embed Codes

Every single Wistia embed code type automatically supports HTML5 when it detects a device that requires it (ie. iPhones, iPads).  There is no extra work needed - standard HTML embed codes will work on your iOS device out-of-the-box.

In some (rare) cases, it makes sense to force the video to only display in HTML5 - skipping the device detection step altogether.  With Wistia iframe embeds, forcing your videos to display in HTML5 is easy.

### The Platform Preference Parameter

Using iframe embed codes, forcing them to default in HTML5 is as easy as adding a parameter:

<span class="code">&amp;platformPreference=html5</span>

So a full HTML5 player embed code would look like this:

**Code:**
<pre><code class='language-markup'>&lt;iframe width="960" height="450" src="http://app.wistia.com/embed/medias/e71f9baf4d?platformPreference=html5" frameborder="0"&gt;&lt;/iframe&gt;</code></pre>

**HTML5 Player Example**

<iframe width="640" height="300" src="http://app.wistia.com/embed/medias/e71f9baf4d?platformPreference=html5" frameborder="0"></iframe>

### HTML5-only Player API
Looking to add some functionality to your Wistia videos in HTML5?  They are controllable through our standard javascript [player API](/player-api.html).

---

## Adding Chapter Links to a Video

<!-- First Example: Chaptering !-->

<div id="wistia_cc977499dd" class="wistia_embed" style="width:450px;height:253px;float:left;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("cc977499dd", {
  version: "v1",
  videoWidth: 640,
  videoHeight: 360,
  controlsVisibleOnLoad: true,
  playerColor: "aae3d8"
});
</script>

<!-- HERE ARE THE LINKS! !-->

<div id="thelinks" style="float:left;margin-left:20px;position:relative;top:60px;">
<br>
<a href="#" id="first" style="font-family:arial;">0:07 - Trailer Starts</a>
<br>
<a href="#" id="second" style="font-family:arial">0:22 - Corn!</a>
<br>
<a href="#" id="third" style="font-family:arial">1:21 - Golfing</a>
<br>
<a href="#" id="fourth" style="font-family:arial">1:38 - Anheuser Busch</a>
</div>

<!-- END THE LINKS !-->

<script type="text/javascript">
    document.getElementById("first").onclick = function () { wistiaEmbed.time(7); return false;}
    document.getElementById("second").onclick = function () { wistiaEmbed.time(22); return false;}
    document.getElementById("third").onclick = function () { wistiaEmbed.time(81); return false;}
    document.getElementById("fourth").onclick = function () { wistiaEmbed.time(98); return false;}
</script>

<div class="clear"></div>

### How it's Done

First, try embedding your video onto your page, to make sure it works properly without the chaptering links.

Next, review the source code for your embedded video on your page. You'll notice some javascript similar to the following:

<pre><code class="language-javascript">
  wistiaEmbed = Wistia.embed("bfc34aa023", { ... options ... });
</code></pre>

The <span class="code">wistiaEmbed</span> variable can be used to control the video.  If you plan to have multiple videos on your page, change the 'wistiaEmbed' variable to something more specific, like the name of your video (ie. 'mattDamon').

The template link below can be used to help build the chapter links.  Replace the "wistiaEmbed" with your video's variable name, change the '60' to your desired time (in seconds), and replace the "Your link text here" with the text you wish to appear as your link text.

<pre><code class='language-markup'>
  &lt;a href="#" onclick="wistiaEmbed.time(60);return false;"&gt;Your link text here&lt;/a&gt;
</code></pre>

This is all that is necessary to create chaptering link for your embedded video.  If you wish to create multiple chaptering links for the same video, simply copy the link you created and replace the link text and seek time with the appropriate values.

---

### Chapter a Video in your Wistia Account

First, create a Description Sidebar Element on the page where the video is displayed.  To do this, hover over the green Media Actions menu and choose "Add Sidebar Element".  You will see a dialog box appear that will offer you two choice.  Click "Add" for the Description Sidebar Element.  You new Description Sidebar Element will appear on the right hand side.

<div class="post_image float_right"><img src="/images/source-mode.png" alt="source-mode" width="200px" /></div>

Next, it is important to get the Description element into the mode where we can enter the chapter information.  To do this, click the "Edit" button below the element.  This will switch it into Edit mode.  Next, click the "Advanced" button in the lower left-hand corner of the element.  Finally, click the "Source" button shown in the image to allow the necessary source code needed to create chapters in the video. 

<div class="clear"></div>

The structure of the code to create Chapter links is as follows:

<pre><code class='language-markup'>
  &lt;a href="#media" onclick="parent.theMediaEmbed.seek(90);return(false);"&gt;1:30 New Section&lt;/a&gt;
</code></pre>

To modify this code for your video, simply replace the number in the <span class="code">.seek(90)</span> with the location that you wish the chapter marking to seek to in seconds.  Next, edit the text "1:30 New Section" between the <span class="code">&lt;</span> and the <span class="code">&gt;</span> to be the text that you wish to display for that chapter.

Once you have made these edits, copy the code and paste it into the Description editor that is already in Source mode.  Simply click the "Save" button and your working Chapter link should appear.

---

##  Mute Video on Load

To mute a video on load, you can simply set the volume to 0 on your video object. This can be done immediately on embed.

<div class="video_embed">
  <!-- YOUR EMBED CODE -->
  <div id="wistia_47254d52b7" style="height:360px;width:640px;"></div>
  <script src='http://static.wistia.com/static/E-v1.js'></script>
  <script type="text/javascript">mutedEmbed = Wistia.embed("47254d52b7").volume(0);</script>
  <!-- END YOUR EMBED CODE -->
</div>

Here's what the embed code looks like, note the <span class="code">.volume(0)</span> added to the end.

<pre><code class="language-markup">
&lt;div id="wistia_47254d52b7" style="height:360px;width:640px;"&gt;&lt;/div&gt;
&lt;script type="text/javascript"&gt;
</code>
<code class="language-javascript">
  mutedEmbed = Wistia.embed("47254d52b7").volume(0);
</code>
<code class="language-markup">
&lt;/script&gt;
</code></pre>

---

## Set the background of your video to transparent

If you are embedding a Wistia video on a website with a white background, the natural black background of the Wistia player can look a little out of place. Instead, using a <span class='code'>wmode=transparent</span> string parameter, the background of the player loading can be set to transparent.

So a finished iframe embed code would look something like this:

<pre><code class="language-markup">
<iframe src="http://fast.wistia.com/embed/iframe/e4a27b971d?controlsVisibleOnLoad=true&playerColor=4991C4&version=v1&videoHeight=360&videoWidth=640&wmode=transparent" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"></iframe>
</code></pre>


