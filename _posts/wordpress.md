---
title: Wordpress &amp; Wistia
layout: post
category: Integrations
description: Wordpress is one of the most popular blog/website platforms out there, and Wistia videos work quite well in the Wordpress environment. 
---

## Wistia Wordpress Plugin

{% post_image hashed_id: 'bdad3d0b4f6e6581194fbcbd25dd9626501c7c80', width: 200, class: 'integration_logo float_left' %}

Using the [Wistia Wordpress Plug-in](http://wordpress.org/extend/plugins/wistia-wordpress-oembed-plugin), you can add your embed codes and they will be protected. It won't take up any space in your Wordpress admin dashboard, but instead works quietly in the background (as it should).

<div class="clear"></div>

{{ "Wistia embed codes can only be used with Wordpress.org installs. <a href='http://en.support.wordpress.com/com-vs-org'>Read up on the difference between Wordpress.com hosted blogs and Wordpress installs</a>." | note }}

## Tips for Using Wordpress

*  When inserting the embed codes, make sure you are in HTML editing mode, and leave a line open above and below the embed code.
*  If you have larger resolution videos, and they are appearing smaller or squished, access the Wordpress admin control panel (Settings -> Media -> Maximum Video Embed Size) and set the max to the largest size of your video ('no limit' setting doesn't work, must be actual size).

## Styling Your Embed in Wordpress

To center your video in Wordpress, you will first use an outer div with the style "text-align: center".  Then, add the inline-block styling to the video div (see the code below, the "style" attributes in both divs can be copied to your own page).

<pre><code class='language-markup'>
<div id="the_video" style="text-align: center;">

  <div id="wistia_5af2188e71" style="width:640px;height:360px;display: inline-block; *display: inline; margin: 0 auto; vertical-align: top;  zoom: 1;" data-video-width="640" data-video-height="360">
    <object id="wistia_5af2188e71_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:100%;position:relative;width:100%;">
    <param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-02-08"></param><param name="allowfullscreen" value="true"></param>
    <param name="allowscriptaccess" value="always"></param><param name="wmode" value="opaque"></param>
    <param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/008ea72d13517143c0e738b91aca90aa9a17ab98.bin&&hdUrl=http://embed.wistia.com/deliveries/39aacc9a8f142e920273ed35d62dbc6fefd04acd.bin&stillUrl=http://embed.wistia.com/deliveries/44f16ff951e71f077d458933fd68ec02a35bd23d.bin"></param>
    <embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-02-08" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/008ea72d13517143c0e738b91aca90aa9a17ab98.bin&hdUrl=http://embed.wistia.com/deliveries/39aacc9a8f142e920273ed35d62dbc6fefd04acd.bin&stillUrl=http://embed.wistia.com/deliveries/44f16ff951e71f077d458933fd68ec02a35bd23d.bin" style="display:block;height:100%;position:relative;width:100%;"></embed></object></div>
    <script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js"></script>
    <script>/*<![CDATA[*/
      wistiaEmbed = Wistia.embed("5af2188e71", {
      videoWidth: "640",
      videoHeight: "360",
      controlsVisibleOnLoad: true
    });/*]]*/</script>

</div>
</code></pre>


## Using Wistia Video SEO with Wordpress

The best way to use Video SEO, Wistia embeds, and Wordpress together is by installing
the awesome [Yoast plugin](http://yoast.com/wordpress/video-seo/). Joost, the one
man wrecking crew behind Yoast, has put together a really valuable and easy-to-use
workflow that also includes Wistia support (awesome!!).
