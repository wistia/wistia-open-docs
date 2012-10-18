---
title: Wordpress &amp; Wistia
layout: post
category: Integrations
description: Wordpress is one of the most popular blog/website platforms out there, and Wistia videos work quite well in the Wordpress environment. 
post_intro: <p>Wistia and Wordpress go together like...chocolate and marshmallow (insert your favorite food pairing).</p><p>Wordpress is a great platform, but it's not always so nice to things like iframes and javascript (which are essential for video embed codes). To prevent issues with your Wistia embeds in Wordpress, we built the <a href="http://wordpress.org/extend/plugins/wistia-wordpress-oembed-plugin">Wistia Wordpress Plug-in</a>.</p><p>If you're using Wistia with Wordpress, we strongly recommend you install the plug-in!</p>
---

{% post_image hashed_id: '1a201481ddaac983f2f573bb3955c556b502f9da', class: 'center intro_image' %}

## Tips for Using Wordpress

*  When inserting the embed codes, make sure you are in HTML editing mode, and leave a line open above and below the embed code.

*  If you have larger resolution videos, and they are appearing smaller or squished, access the Wordpress admin control panel (Settings -> Media -> Maximum Video Embed Size) and set the max to the largest size of your video ('no limit' setting doesn't work, must be actual size).

## Styling Your Wordpress Embed

### Centering Your Video

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


## Adding the Wistia XML Sitemap Entry to a Wordpress 'Robots.txt' File

If you are looking to use your Wordpress page with Wistia's Video SEO tool, you will need to update your Robots.txt file.  For more on Video SEO and the Robots.txt file, check out our [Video SEO primer]({{ '/video-seo#setup' | post_url }}).

To update your Robots.txt file in Wordpress, you will need a special plug-in called 'KB Robots.txt'.  [Read more about the plug-in](http://adambrown.info/b/widgets/kb-robots-txt) and download it for your Wordpress site on their [plug-in page](http://wordpress.org/extend/plugins/kb-robotstxt).

{% post_image hashed_id: 'ec5f981b2a57494d9ea5bd09fcb3b26a280c8663', width: 320, class: 'float_right' %}

Once the plug-in is installed, you should have a new *Options* menu, and a *KB Robots.txt* admin page.  This page should give you an editable box to add your Wistia Video SEO 'Robots.txt' line. You will obtain that line from the [Video SEO]({{ '/video-seo' | post_url }}) area of your account.

