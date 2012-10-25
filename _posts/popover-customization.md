---
title: Popover Embed Customization
layout: post
category: For Developers
description: Customize your 'popover' embeds with these tips.
footer: 'for_developers'
post_intro: <p>Wistia's popover (lightbox) implementation utilizes Fancybox, a plug-in for jQuery. The Fancybox API gives access to all kinds of custom effects and settings that Wistia users can access. Here are a few of our favorites that we've helped customers implement.</p>
---

## Adding a Border Around Your Video in a Popover

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

## Blackout Effect Behind the Popover

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

## Adding a Title or Captions to your Popover

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

## Have Your Wistia Popover Appear on Page Load

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

