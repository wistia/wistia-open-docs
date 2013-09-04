---
title: Popover Embed Customization
layout: post
category: For Developers
api_warning: true
description: Customize your 'popover' embeds with these tips.
footer: 'for_developers'
post_intro: <p>Wistia's popover (lightbox) implementation utilizes <a href='http://http://fancybox.net/'>Fancybox</a>, a plug-in for jQuery. The Fancybox API gives access to all kinds of custom effects and settings that Wistia users can access. Here are a few of our favorites that we've helped customers implement.</p>
---

## Using a custom thumbnail OR other website image

Sometimes you want to use a custom graphical element (that may be already built
into your site) to launch your popover. No problemo!

First, here is the original embed code, straight from the Wistia embed generator:

{% codeblock thumbnail.html %}
<a href="http://fast.wistia.net/embed/iframe/sb22fqki3j?autoPlay=true&controlsVisibleOnLoad=true&playButton=false&playerColor=F36F36&popover=true&version=v1&videoHeight=360&videoWidth=640" class="wistia-popover[height=360,playerColor=F36F36,width=640]">

<img src="http://embed.wistia.com/deliveries/34d01c07ff2da906b092c8ba1c75b0c345006340.jpg?image_play_button=false&image_play_button_color=F36F36e0&image_crop_resized=150x84" alt="" />

</a>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/popover-v1.js"></script>
{% endcodeblock %}

The `<img>` tag is what we will be altering here. We already have a new custom image
picked out:

{% codeblock thumbnail.html %}
<img src="http://wistia.com/doc/custom-image-for-example-purposes.jpg" />
{% endcodeblock %}

Now, we're going to insert that tag into the popover embed, and we're done!

{% codeblock thumbnail.html %}
<a href="http://fast.wistia.net/embed/iframe/sb22fqki3j?autoPlay=true&controlsVisibleOnLoad=true&playButton=false&playerColor=F36F36&popover=true&version=v1&videoHeight=360&videoWidth=640" class="wistia-popover[height=360,playerColor=F36F36,width=640]">

<img src="http://wistia.com/doc/custom-image-for-example-purposes.jpg" />

</a>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/popover-v1.js"></script>
{% endcodeblock %}


## Adding a Border Around Your Video in a Popover

If you're shooting video with light-colored backgrounds, a border can add definition to the video. <a id="a141167104_videoPopup" href="//app.wistia.com/embed/medias/4e21ff57d7.html?width=640&height=290&autoplay=false&playbutton=true&controls_visible=false&end_video_behavior=default">See an example of this effect</a><script type="text/javascript" src="//static.wistia.com/popover/popover.js"></script><script type="text/javascript">Wistia.requireFancyBoxAssets(function() {Wistia.fancyBoxJQuery("#a141167104_videoPopup").fancybox({type: "iframe",width: 640,height: 290,});});</script>.

Add this style to your CSS, or inline in between tags.

{% codeblock fancybox_css.css %}
#fancybox-content {
  border: 5px solid black !important;
}

#fancybox-outer {
  padding-right: 0px;
  padding-top: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
}
{% endcodeblock %}

---

## Blackout Effect Behind the Popover

Sometimes, you want to completely hide the content behind the video popover. Or, you'd like to change the color that shows up to better match your overall site color scheme. Here is how to change the Overlay Color and Opacity for your Popover (<a href="http://fast.wistia.net/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true"
class='wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=60,]'>click here to experience the effect</a><script charset="ISO-8859-1" src="http://fast.wistia.net/static/popover-v1.js"></script>).

To do this, you'll need to add attributes to the Inline styling for the Fancybox implementation. 

Here is the normal Popover code:

{% codeblock thumbnail.html %}
<a href="http://fast.wistia.net/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" 
class="wistia-popover[width=640,height=360,playerColor=#636155]"><img src="http://embed.wistia.com/deliveries/d88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg?image_play_button=true&image_crop_resized=150x84" /></a>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/popover-v1.js"></script>
{% endcodeblock %}

Inside the “class” area, we're going to use 'helpers' to add this additional functionality:

<code class="full_width">helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,padding=20</code>

We also added padding, to provide that 'picture frame' effect around the video.


The final embed code looks like this:

{% codeblock thumbnail.html %}
<a href="http://fast.wistia.net/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" 
class="wistia-popover[width=640,height=360,playerColor=#636155]"><img src="http://embed.wistia.com/deliveries/d88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg?image_play_button=true&image_crop_resized=150x84" /></a>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/popover-v1.js"></script>
{% endcodeblock %}

---

## Adding a Title or Captions to your Popover

Just like the color and opacity above, adding a title/caption to your popover involves the use of helpers.


Let's start with the same embed code as above:

{% codeblock thumbnail.html %}
<a href="http://fast.wistia.net/embed/iframe/e6bfb5acbd?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" 
class="wistia-popover[width=640,height=360,playerColor=#636155]"><img src="http://embed.wistia.com/deliveries/d88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg?image_play_button=true&image_crop_resized=150x84" /></a>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/popover-v1.js"></script>
{% endcodeblock %}

Now, let's add the following to the 'class' area:

<code class="full_width">title=&lt;center&gt;&lt;strong&gt;SuperEmbeds Rock!&lt;/strong&gt;&lt;/center&gt;,helpers.title.type=inside,</code>

We just added the title content (with the 'title=' entry) and set the title to display inside the popover frame (with the 'helpers.title.type=inside' entry).  Other options for the title type include 'float', 'outside', and 'over'.  Play around to see which you like best.


To see what this looks like, check this <a href="http://fast.wistia.net/embed/iframe/19bd8cf131?videoWidth=640&videoHeight=360&controlsVisibleOnLoad=true&autoPlay=true&popover=true" class='wistia-popover[width=640,height=360,playerColor=#636155,helpers.overlay.css.backgroundColor=#000,helpers.overlay.opacity=1,title=<center><strong>SuperEmbeds Rock!</strong></center>,helpers.title.type=inside,padding=60,]'>Popover with Title example</a><script charset="ISO-8859-1" src="http://fast.wistia.net/static/popover-v1.js"></script>.

--- 

## Have Your Wistia Popover Appear on Page Load

You'd like to send viewers a URL that they can open, and the popover will automatically display.

{% codeblock wistiaJQuery.js %}
wistiaJQuery(document).ready( function() {
  var url = window.location.href.toString();
  if ( url.indexOf('launch-the-popover') != -1 )
  {
    wistiaJQuery('a[class^=wistia-popover]').first().click();
  }
});
{% endcodeblock %}

If you have more than one popover on the page, you'll want to add an ID onto the link, so you can launch specific popovers.

