---
title: WordPress & Wistia
layout: post
category: Integrations
description: WordPress is one of the most popular website builders out there, and Wistia videos sometimes need a little TLC in WordPress environments. Have no fear! We've got you covered.
post_intro: <p>WordPress is an awesome platform for creating powerful websites. Here's a quick guide to making Wistia and WordPress go together like PB&J.</p>
footer: 'for_intermediates'
---

{{ "WordPress.com sites now work easily with Wistia! We're a default oEmbed provider, so it's as simple as pasting the media URL of your video. Check out their documentation <a href='https://en.support.wordpress.com/videos/wistia/'>here</a>. Wahoo!" | note }}

## Getting Started

Depending on the type of environment you're embedding in, you'll want to use a
different type of Wistia embed code.

Let's start with WordPress.com. Adding video to your posts is super easy since
Wistia is a default oEmbed provider. So let's dive into grabbing that oEmbed and
sharing your fantastic video.

## Embedding on Wordpress.com

## Using an oEmbed URL

An oEmbed URL is a simple link that tells WordPress how to embed content from
third-party sources (like that cool video hosting platform for businesses you're
so fond of).

To create an oEmbed URL for a video in your Wistia account, select "Use oEmbed
URL" under _Options_ on the [_Embed & Share_]({{ '/embedding' | post_url }})
screen. Take a look-see:

{% wistia_embed hashed_id: 1vmfqwiif7 %}

That'll give you an oEmbed URL like this example:

`http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&videoFoam=true&videoWidth=640`.

If you copy and paste that URL into a WordPress post, WordPress will convert the
oEmbed URL into an embedded video. It's <script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script><span class="wistia_embed wistia_async_4ebsteci2g popover=true popoverContent=link" style="display:inline"><a href="#">like magic</a></span>.

{% wistia_embed hashed_id: 3r0naiqkgs %}

If you're curious about the technical details behind oEmbed's sneaky magic,
check out [oEmbed.com](http://oembed.com).

## Popover oEmbeds

Wistia doesn't currently offer an option to select the "oEmbed" options from
the [Popover Embed]({{ '/embedding#popover_embed' | post_url }}) tab. But that
doesn't mean it isn't possible. Time to join our secret club!

Creating a popover oEmbed is as easy as adding the `popover=true` string to your
oEmbed.

So this Standard oEmbed:

`http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&videoFoam=true&videoWidth=640`

would become:

`http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&popover=true&videoFoam=true&videoWidth=640`

It's as easy as that!

If you want to specify the size of the popover thumbnail (when playing, popover videos
will always be responsive), remove '`videoFoam=true` and change the `videoWidth` string.

`http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&popover=true&videoWidth=200`

{{ "WordPress.com will sometimes automatically show the Wistia video when you're editing your blog post or page. You can always switch from 'Visual' editing to 'HTML' for easier viewing." | tip }}

## Embedding on WordPress.org

If you're embedding on your WordPress.org site, you'll want to use the
[Standard]({{ '/embedding#inline_embed' |post_url }}) (or Popover) Wistia embed.
Just paste your standard embed code into your post, and you're good to go!

{% wistia_embed hashed_id: mvankkqtxb %}

## Fallback Options

With WordPress one size doesn't always fit all! We recommend beginning with the
oEmbed URL first. If that doesn't work for you, using the [Standard]({{ '/embedding#inline_embed' | post_url }}),
[Fallback]({{ '/embedding#fallback_iframe_embed' | post_url }}), or regular
Popover embed code types (by adding them as HTML elements in your posts) is a
solid alternative.

Still no dice?

Check out our troubleshooting tips below.

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

## The Wistia WordPress Plugin

If you're having trouble using oEmbeds with your WordPress theme, the [Wistia WordPress plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/) adds support for [Wistia oEmbed URLs](#using_an_oembed_url). For more information about how that works, see this guide from the WordPress documentation: [Embeds in WordPress](http://codex.wordpress.org/Embeds).

[Install the Wistia WordPress plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/).

## The Anti-Mangler

The Wistia WordPress plugin _also_ includes the Anti-Mangler, which (as the name implies) protects Wistia embed codes on your website from getting mangled by WordPress. It's disabled by default, and should only be enabled if you really don't want to use [the oEmbed approach](#using_an_oembed_url), which is the approach we strongly recommend. The Anti-Mangler is a decent fallback option though, so if you'd like to enable it, head to Settings in your WordPress admin panel, and choose Wistia WordPress. Or on the Plugins page, there's a Settings link right under the plugin name.

{{ "The Anti-Mangler used to be enabled by default, but is optional (and no longer recommended) as of version 0.8 of the Wistia WordPress plugin." | note }}
