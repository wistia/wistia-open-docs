---
title: Advanced Wistia Embed Customization
layout: post
category: For Developers
for_developers: true
type: post
post_intro: <p>We think <a href="//localhost:4000/embed_screen.html">Wistia Super Embeds</a> are pretty awesome.  They make it easy for web video to look it's best.  But sometimes our customers might be looking to do even more customization.  This doc page will help answer some of the questions that come up with Wistia embed options.</p>
---


## Custom Popovers


Wistia's popover implementation utilizes Fancybox, a plug-in for jQuery. The Fancybox API gives access to all kinds of custom effects and settings that Wistia users can access. Here are a few of our favorites that we've helped customers implement: 

### Adding a Border Around Your Video in a Popover

If you're shooting video with light-colored backgrounds, a border can add definition to the video. <a id="a141167104_videoPopup" href="//app.wistia.com/embed/medias/4e21ff57d7.html?width=640&height=290&autoplay=false&playbutton=true&controls_visible=false&end_video_behavior=default">See an example of this effect</a><script type="text/javascript" src="//static.wistia.com/popover/popover.js"></script><script type="text/javascript">Wistia.requireFancyBoxAssets(function() {Wistia.fancyBoxJQuery("#a141167104_videoPopup").fancybox({type: "iframe",width: 640,height: 290,});});</script>.

Add this style to your CSS, or inline in between tags.

<div class="github">	
  <script src="https://gist.github.com/3068168.js?file=gistfile1.css"></script>
</div>

---

### Blackout Effect Behind the Popover

Sometimes, you want to completely hide the content behind the video popover. Or, you'd like to change the color that shows up to better match your overall site color scheme. Here is how to change the Overlay Color and Opacity for your Popover (<a href="http://fast.wistia.com/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true"
class='wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=60,]'>click here to experience the effect</a><script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"></script>).

To do this, you'll need to add attributes to the Inline styling for the Fancybox implementation. 

Here is the normal Popover code:

<div class="github">
<script src="https://gist.github.com/3068173.js?file=gistfile1.html"></script>
</div> 


Inside the “class” area, we're going to use 'helpers' to add this additional functionality:

<pre><code class='language-javascript'>
	helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=20
</code></pre>

We also added padding, to provide that 'picture frame' effect around the video.


The final embed code looks like this:

<div class="github">
  <script src="https://gist.github.com/3068173.js?file=gistfile1.html"></script>	
</div>

---

### Adding a Title or Captions to your Popover

Just like the color and opacity above, adding a title/caption to your popover involves the use of helpers.


Let's start with the same embed code as above:

<div class="github">
  <script src="https://gist.github.com/3068173.js?file=gistfile1.html"></script>	
</div>	

Now, let's add the following to the 'class' area:
<pre><code class="language-javascript">	
	title=<center><strong>SuperEmbeds Rock!</strong></center>,helpers.title.type=inside,
</code></pre>

We just added the title content (with the 'title=' entry) and set the title to display inside the popover frame (with the 'helpers.title.type=inside' entry).  Other options for the title type include 'float', 'outside', and 'over'.  Play around to see which you like best.


To see what this looks like, check this <a href="http://fast.wistia.com/embed/iframe/19bd8cf131?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" class='wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,title=<center><strong>SuperEmbeds Rock!</strong></center>,helpers.title.type=inside,padding=60,]'>Popover with Title example</a><script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"></script>.

--- 

### Have Your Wistia Popover Appear on Page Load

You'd like to send viewers a URL that they can open, and the popover will automatically display.

<div class="github">	
  <script src="https://gist.github.com/3068211.js?file=gistfile1.js"></script>
</div>

If you have more than one popover on the page, you'll want to add an ID onto the link, so you can launch specific popovers.

---

## Add Custom Pre-Roll to Your Videos

In this example, we create a div for the videos to exist in, and then add the videos (pre-roll video first) inside the div. After the pre-roll video finishes playing, it will be replaced using javascript with the second video (the main content).

Our player API provides the ability to 'bind' actions when the video finishes - so when the first video is done, it executes a 'function', which in this case is the action of replacing the current video with the main content.

Each video in the system has a 'hashed id', which in this example is <span class="code">d90b54e175</span> and <span class="code">bc9095e31e</span>.  Copy this from your embed code and input it in this template.

To get the thumbnail for the second video (ie the main content) to show up before playing, you'll want to add the 'stillUrl' parameter to the first video (as shown in the example).  To get the URL for the thumbnail for the main content, the best workaround is to copy the img src URL from a popover embed code for the video, or an email marketing merge tag.

<div class="github">
  <script src="https://gist.github.com/2925931.js?file=gistfile1.html"></script>
</div>

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

If you'd like to enable this behavior, copy and paste this JavaScript snippet with your embed code.
When a visitor lands on your page with the video and they have "wemail=" in the URL (this is the mechanism by which Wistia passes emails to our analytics from emails), the video will automatically start playing. For everyone else who doesn't arrive via email, the video won't autoplay. 

<div class="github">
<script src="https://gist.github.com/3019601.js?file=selective_autoplay.js"></script>
</div>

---

## Creating HTML5-only Embed Codes

Every single Wistia embed code type automatically supports HTML5 when it detects a device that requires it (ie. iPhones, iPads).  There is no extra work needed - standard HTML embed codes will work on your iOS device out-of-the-box.

### Forcing HTML5

In some cases, it makes sense to force the video to only display in HTML5 - skipping the device detection step altogether.  With Wistia iframe embeds, forcing your videos to display in HTML5 is easy.

### The Platform Preference Parameter

Using iframe embed codes, forcing them to default in HTML5 is as easy as adding a parameter:

<span class="code">&amp;platformPreference=html5</span>

So a full HTML5 player embed code would look like this:

**Code:**
<div class="code"><pre>&lt;iframe width="960" height="450" src="http://app.wistia.com/embed/medias/e71f9baf4d?platformPreference=html5" frameborder="0"&gt;&lt;/iframe&gt;</pre></div>

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

<div class="code"><pre>
<a href="#" onclick="wistiaEmbed.time(60);return false;">Your link text here</a>
</pre></div>

This is all that is necessary to create chaptering link for your embedded video.  If you wish to create multiple chaptering links for the same video, simply copy the link you created and replace the link text and seek time with the appropriate values.

---

### Chapter a Video in your Wistia Account

First, create a Description Sidebar Element on the page where the video is displayed.  To do this, hover over the green Media Actions menu and choose "Add Sidebar Element".  You will see a dialog box appear that will offer you two choice.  Click "Add" for the Description Sidebar Element.  You new Description Sidebar Element will appear on the right hand side.

<div class="post_image float_right"><img src="/images/source-mode.png" alt="source-mode" width="200px" /></div>

Next, it is important to get the Description element into the mode where we can enter the chapter information.  To do this, click the "Edit" button below the element.  This will switch it into Edit mode.  Next, click the "Advanced" button in the lower left-hand corner of the element.  Finally, click the "Source" button shown in the image to allow the necessary source code needed to create chapters in the video. 

<div class="clear"></div>

The structure of the code to create Chapter links is as follows:

<div class="code"><pre>
<a href="#media" onclick="parent.theMediaEmbed.seek(90);return(false);">1:30 New Section</a>
</pre></div>

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

<pre><code class="language-javascript">

<div id="wistia_47254d52b7" style="height:360px;width:640px;"></div>
mutedEmbed = Wistia.embed("47254d52b7").volume(0);

</code></pre>

---

