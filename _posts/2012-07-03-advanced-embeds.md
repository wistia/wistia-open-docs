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


