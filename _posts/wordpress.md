---
title: WordPress &amp; Wistia
layout: post
category: Integrations
description: WordPress is one of the most popular blog/website platforms out there, and Wistia videos work quite well in the WordPress environment.
post_intro: <p>WordPress is a wonderful platform that you can use to create powerful websites, but it can sometimes strip out important parts of Wistia embed codes. Foruntately, there's an easy fix for that!</p> <p>To use Wistia and WordPress together in harmony, check out the <a href="#the_wistia_wordpress_plugin">Wistia WordPress plugin</a>. </p>
temper: true
---

{{ "Wistia embed codes can only be used with WordPress.org installs. <a href='http://en.support.wordpress.com/com-vs-org'>Read up on the difference between WordPress.com hosted blogs and WordPress.org installs</a>." | note }}


## The Wistia WordPress Plugin

With the [Wistia WordPress Plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/) installed, you can add your embed codes to posts and they will be protected by the mighty _anti-mangler_. It won't take up any space in your WordPress admin dashboard, but instead works quietly in the background as <a href="//fast.wistia.net/embed/iframe/yr4ecy1p28?popover=true" class="wistia-popover[height=360,playerColor=84afde,width=640]">a silent guardian</a><script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script><script src="//fast.wistia.net/static/iframe-api-v1.js"></script>.

The Wistia WordPress plugin also adds support for [Wistia oEmbed URLs](#using_an_oembed_url) to WordPress. For more information about how that works, see this guide from the WordPress documentation: [Embeds in WordPress](http://codex.wordpress.org/Embeds).

{{ "If you'd love to see Wistia included as an oEmbed provider in WordPress by default, please let our friends at WordPress know!" | tip }}


## Using an oEmbed URL

An oEmbed URL is a simple link that tells WordPress how to embed content from third-party sources (like that cool video hosting platform for businesses you're so fond of). 

To create an oEmbed URL for a video in your Wistia account, select the "Use oEmbed" option under _Advanced Options_ on the [_Embed & Share_](../embedding) screen. Take a look-see:

{% wistia_embed hashed_id: 930hwszdyh %}

That'll give you an oEmbed URL like this example: 

`http://dave.wistia.com/medias/azmurdmroz?embedType=api&videoWidth=640`. 

If you copy and paste that URL into a WordPress post, WordPress will recognize it as a special instruction to use a full Wistia embed code there when your post is published.

{{ "If your account uses a [custom domain name](../account-setup#set_a_custom_domain_cname), this will not work. You'll need to [use a wistia.com subdomain](../account-setup#change_the_subdomain_url_of_your_wistia_account) like &quot;myawesomecompany.wistia.com&quot; for your account URL instead." | note }}

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
