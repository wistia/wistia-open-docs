---
title: WordPress &amp; Wistia
layout: post
category: Integrations
description: WordPress is one of the most popular blog/website platforms out there, and Wistia videos work quite well in the WordPress environment. 
---

## Wistia WordPress Plugin

{% post_image hashed_id: 'bdad3d0b4f6e6581194fbcbd25dd9626501c7c80', width: 200, class: 'integration_logo float_left' %}

Using the [Wistia WordPress Plug-in](http://wordpress.org/extend/plugins/wistia-wordpress-oembed-plugin), you can add your embed codes and they will be protected. It won't take up any space in your WordPress admin dashboard, but instead works quietly in the background (as it should).

<div class="clear"></div>

{{ "Wistia embed codes can only be used with WordPress.org installs. <a href='http://en.support.wordpress.com/com-vs-org'>Read up on the difference between WordPress.com hosted blogs and WordPress installs</a>." | note }}

## Tips for Using WordPress

*  When inserting the embed codes, make sure you are in HTML editing mode, and leave a line open above and below the embed code.
*  If you have larger resolution videos, and they are appearing smaller or squished, access the WordPress admin control panel (Settings -> Media -> Maximum Video Embed Size) and set the max to the largest size of your video ('no limit' setting doesn't work, must be actual size).

## Styling Your Embed in WordPress

To center your video in WordPress, you will first use an outer div with the style "text-align: center".  Then, add the inline-block styling to the video div (see the code below, the "style" attributes in both divs can be copied to your own page).

<pre><code class='language-markup'>
<div id="the_video" style="text-align: center;">

  &lt;div id="wistia_5af2188e71" style="width:640px;height:360px;display: inline-block; *display: inline; margin: 0 auto; vertical-align: top;  zoom: 1;" data-video-width="640" data-video-height="360"&gt;
    &lt;object id="wistia_5af2188e71_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:100%;position:relative;width:100%;"&gt;
    &lt;param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-02-08"&gt;&lt;/param&gt;&lt;param name="allowfullscreen" value="true"&gt;&lt;/param&gt;
    &lt;param name="allowscriptaccess" value="always"&gt;&lt;/param&gt;&lt;param name="wmode" value="opaque"&gt;&lt;/param&gt;
    &lt;param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/008ea72d13517143c0e738b91aca90aa9a17ab98.bin&&hdUrl=http://embed.wistia.com/deliveries/39aacc9a8f142e920273ed35d62dbc6fefd04acd.bin&stillUrl=http://embed.wistia.com/deliveries/44f16ff951e71f077d458933fd68ec02a35bd23d.bin"&gt;&lt;/param&gt;
    &lt;embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-02-08" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/008ea72d13517143c0e738b91aca90aa9a17ab98.bin&hdUrl=http://embed.wistia.com/deliveries/39aacc9a8f142e920273ed35d62dbc6fefd04acd.bin&stillUrl=http://embed.wistia.com/deliveries/44f16ff951e71f077d458933fd68ec02a35bd23d.bin" style="display:block;height:100%;position:relative;width:100%;"&gt;&lt;/embed&gt;&lt;/object&gt;&lt;/div&gt;
    &lt;script charset="ISO-8859-1" src="http://fast.wistia.net/static/E-v1.js"&gt;&lt;/script&gt;
    &lt;script&gt;/*&lt;![CDATA[*/
      wistiaEmbed = Wistia.embed("5af2188e71", {
      videoWidth: "640",
      videoHeight: "360",
      controlsVisibleOnLoad: true
    });/*]]*/&lt;/script&gt;

</div>
</code></pre>


## Using Wistia Video SEO with WordPress

The best way to use Video SEO, Wistia embeds, and WordPress together is by installing
the awesome [Yoast plugin](http://yoast.com/wordpress/video-seo/). Joost, the one
man wrecking crew behind Yoast, has put together a really valuable and easy-to-use
workflow that also includes Wistia support (awesome!!).
