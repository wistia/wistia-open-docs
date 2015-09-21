---
title: WordPress &amp; Wistia
layout: post
category: Integrations
description: WordPress is one of the most popular blog/website platforms out there, and Wistia videos work quite well in the WordPress environment.
post_intro: <p>WordPress is a wonderful platform that you can use to create powerful websites, but it can sometimes strip out important parts of Wistia embed codes. Fortunately, there's an easy fix for that!</p> <p>To use Wistia and WordPress together in harmony, check out the <a href="#the_wistia_wordpress_plugin">Wistia WordPress plugin</a>. </p>
---

{{ "WordPress.com sites now work easily with Wistia! We're a default oEmbed provider, so it's as simple as pasting the media URL of your video. Check out their documentation <a href='https://en.support.wordpress.com/videos/wistia/'>here</a>. Wahoo!" | note }}

## The Wistia WordPress Plugin

The [Wistia WordPress plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/) adds support for [Wistia oEmbed URLs](#using_an_oembed_url) to WordPress, which make embedding videos in your posts super easy. For more information about how that works, see this guide from the WordPress documentation: [Embeds in WordPress](http://codex.wordpress.org/Embeds).

[Install the Wistia WordPress plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/).

## Using an oEmbed URL

An oEmbed URL is a simple link that tells WordPress how to embed content from third-party sources (like that cool video hosting platform for businesses you're so fond of).

To create an oEmbed URL for a video in your Wistia account, select the "Use oEmbed" option under _Advanced Options_ on the [_Embed & Share_]({{ '/embedding' | post_url }}) screen. Take a look-see:

{% wistia_embed hashed_id: 930hwszdyh %}

That'll give you an oEmbed URL like this example:

`http://dave.wistia.com/medias/azmurdmroz?embedType=api&videoWidth=640`.

If you copy and paste that URL into a WordPress post and you have the Wistia WordPress plugin installed, WordPress will convert the oEmbed URL into an embedded video.

If you're curious about the technical details behind oEmbed's sneaky magic, check out [oEmbed.com](http://oembed.com).


## Tips for Using WordPress

### oEmbed URL not converting into an embedded video?
When inserting an oEmbed URL, make sure you are in HTML editing mode, and leave a line open above and below the URL. If you switch from HTML to Visual mode it can add formatting tags around your oEmbed URL, which may cause it to break. Be careful of that!

### Video appearing smaller than it should be?
If you have larger resolution videos and they are appearing smaller or squished, access the WordPress admin control panel (Settings -> Media -> Maximum Video Embed Size) and set the max to the largest size of your video ('no limit' setting doesn't work, must be actual size). Some WordPress themes will also set a maximum width for content embedded with oEmbed. If you want to change that, check out [How to Set oEmbed Max Width in WordPress 3.5 with $content_width](http://www.wpbeginner.com/wp-themes/how-to-set-oembed-max-width-in-wordpress-3-5-with-content_width/).

### Video not centered?
If you want to **center** your video inside a `div` or column on your website,
and you are using an oEmbed URL to embed your video, please use a second div with the
style `display: inline-block;`, as seen here:

{% codeblock center-wordpress.html %}
<div style="text-align: center;">
  <div style="display: inline-block;">

    http://dave.wistia.com/medias/mgdmzrzrm4?embedType=api&videoWidth=640

  </div>
</div>
{% endcodeblock %}

For more info on centering your video, refer to our tips in the [embedding documentation]({{ '/embedding#styling_your_embed' | post_url }}).


## Using Wistia Video SEO Embeds with WordPress

The simplest way to help search engines find and index the Wistia videos on your WordPress.org site is to [use the SEO embed code type](http://wistia.com/doc/video-seo#using_the_video_seo_embed_type) and the awesome [Yoast plugin](http://yoast.com/wordpress/video-seo/). Joost, the one-man wrecking crew behind Yoast, has put together a really valuable and easy-to-use workflow that also includes Wistia support (awesome!). When you're using Yoast, you do not need to create a video sitemap in Wistia – Yoast does that for you.


<script src="//fast.wistia.com/labs/play-when-visible/plugin.js"></script>
<script>
  window.wistiaEmbedShepherdReady = function(){
    wistiaEmbeds.onFind(function(video) {
    if (video.hashedId() !== 'unia2qw6p9') {
      video.addPlugin('playWhenVisible', {
        src: '//fast.wistia.com/labs/play-when-visible/plugin.js',
        outsideIframe: true
      });
    }
  });
  }
</script>
<script>
  wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
    iframe.wistiaApi.bind("end", function() {
      wistiaJQuery.fancybox.close();
    });
  });
</script>

## The Anti-Mangler

The Wistia WordPress plugin _also_ includes the Anti-Mangler, which (as the name implies) protects Wistia embed codes on your website from getting mangled by WordPress. It's disabled by default, and should only be enabled if you really don't want to use [the oEmbed approach](#using_an_oembed_url), which is the approach we strongly recommend. The Anti-Mangler is a decent fallback option though, so if you'd like to enable it, head to Settings in your WordPress admin panel, and choose Wistia WordPress. Or on the Plugins page, there's a Settings link right under the plugin name.

{{ "The Anti-Mangler used to be enabled by default, but is optional (and no longer recommended) as of version 0.8 of the Wistia WordPress plugin." | note }}
