---
title: WordPress &amp; Wistia
layout: post
category: Integrations
description: WordPress is one of the most popular blog/website platforms out there, and Wistia videos work quite well in the WordPress environment. 
---

## Wistia WordPress Plugin

{% post_image hashed_id: 'bdad3d0b4f6e6581194fbcbd25dd9626501c7c80', width: 200, class: 'integration_logo float_left' %}

Using the [Wistia WordPress Plug-in](http://wordpress.org/extend/plugins/wistia-wordpress-oembed-plugin), you can add your embed codes and they will be protected. It won't take up any space in your WordPress admin dashboard, but instead works quietly in the background (as it should).

{{ "Wistia embed codes can only be used with WordPress.org installs. <a href='http://en.support.wordpress.com/com-vs-org'>Read up on the difference between WordPress.com hosted blogs and WordPress installs</a>." | note }}

## Using the oEmbed Embed Code

The [Wistia WordPress Plug-in](http://wordpress.org/extend/plugins/wistia-wordpress-oembed-plugin)
allows for using oEmbed embed codes, which are really simple links that don't
break in WordPress (yay!).

To access them, first [customize your video]({{ '/customizing-your-video' | post_url }}),
then open the *Embed & Share* window from the <span class="action_menu">Video
Actions</span> menu. Select the **Inline Embed** option.

{% post_image hashed_id: '45141c78d70b64b9b2bd3ca682c51c6e69fd73fb', class: 'center' %}

Under the **Advanced Options** area, select the *oEmbed* checkbox. The embed
code will update to an oEmbed URL, which you can add to your WordPress post.

WordPress themes often set a maximum width for oEmbed embed codes. If you want
to change that, check out
[How to Set oEmbed Max Width in WordPress 3.5 with $content_width](http://www.wpbeginner.com/wp-themes/how-to-set-oembed-max-width-in-wordpress-3-5-with-content_width/).

## Tips for Using WordPress

*  When inserting the embed codes, make sure you are in HTML editing mode, and leave a line open above and below the embed code. If you switch from HTML to Visual mode, it will can add formatting tags around your oEmbed, which will cause it to break. Be careful of that!
*  If you have larger resolution videos, and they are appearing smaller or squished, access the WordPress admin control panel (Settings -> Media -> Maximum Video Embed Size) and set the max to the largest size of your video ('no limit' setting doesn't work, must be actual size).

## Styling Your Embed in WordPress

To center your video in WordPress, you will first use an outer div with the style "text-align: center".  Then, add the inline-block styling to the video div (see the code below, the "style" attributes in both divs can be copied to your own page).

{% codeblock center-wordpress.html %} 
<div id="the_video" style="text-align: center;">

  <div id="wistia_5af2188e71" style="width:640px;height:360px;display: inline-block; *display: inline; margin: 0 auto; vertical-align: top;  zoom: 1;" data-video-width="640" data-video-height="360">
    <object id="wistia_5af2188e71_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:100%;position:relative;width:100%;">
    <param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-02-08"></param><param name="allowfullscreen" value="true"></param>
    <param name="allowscriptaccess" value="always"></param><param name="wmode" value="opaque"></param>
    <param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/008ea72d13517143c0e738b91aca90aa9a17ab98.bin&&hdUrl=http://embed.wistia.com/deliveries/39aacc9a8f142e920273ed35d62dbc6fefd04acd.bin&stillUrl=http://embed.wistia.com/deliveries/44f16ff951e71f077d458933fd68ec02a35bd23d.bin"></param>
    <embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-02-08" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/008ea72d13517143c0e738b91aca90aa9a17ab98.bin&hdUrl=http://embed.wistia.com/deliveries/39aacc9a8f142e920273ed35d62dbc6fefd04acd.bin&stillUrl=http://embed.wistia.com/deliveries/44f16ff951e71f077d458933fd68ec02a35bd23d.bin" style="display:block;height:100%;position:relative;width:100%;"></embed></object></div>
    <script charset="ISO-8859-1" src="http://fast.wistia.net/static/E-v1.js"></script>
    <script>/*<![CDATA[*/
      wistiaEmbed = Wistia.embed("5af2188e71", {
      videoWidth: "640",
      videoHeight: "360",
      controlsVisibleOnLoad: true
    });/*]]*/</script>

</div>
{% endcodeblock %}

## Using Wistia Video SEO with WordPress

The best way to use Video SEO, Wistia embeds, and WordPress together is by installing
the awesome [Yoast plugin](http://yoast.com/wordpress/video-seo/). Joost, the one
man wrecking crew behind Yoast, has put together a really valuable and easy-to-use
workflow that also includes Wistia support (awesome!!).
