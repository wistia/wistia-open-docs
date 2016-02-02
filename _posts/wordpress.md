---
title: WordPress & Wistia
layout: post
category: Integrations
description: WordPress is one of the most popular website builders out there, and Wistia videos sometimes need a little TLC in WordPress environments. Have no fear! We've got you covered.
post_intro: <p>WordPress is an awesome platform for creating powerful websites. Here's a quick guide to making Wistia and WordPress go together like PB&J.</p>
footer: 'for_intermediates'
---

## Getting Started

Like Wistia's favorite treat (donuts 🍩), WordPress comes in many flavors.
Because of this, how you embed your video varies based on what type of WordPress
environment you're using. Is it WordPress.com or WordPress.org? Are you using
special plugins? What about your theme?

There are so many ways to customize WordPress, that one size does not fit all.
It can be a pretty variable experience, but this page is here to help.

## Embedding on Wordpress.com

Let's start with
[WordPress.com](https://en.support.wordpress.com/videos/wistia/). Adding video
to your posts is super easy, since Wistia is a default oEmbed provider for
WordPress. So let's dive into grabbing that oEmbed URL and sharing your
fantastic video.

## Using an oEmbed URL

An oEmbed URL is a simple link that tells WordPress how to embed content from
third-party sources (like that cool video hosting platform for businesses you're
so fond of).

To create an oEmbed URL for a video in your Wistia account, select "Use oEmbed
URL" under _Options_ on the _[Embed & Share]({{ '/embedding' | post_url }})_
screen. Take a look-see:

{% wistia_embed hashed_id: 1vmfqwiif7 %}

That'll give you an oEmbed URL like this example:

`http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&videoFoam=true&videoWidth=640`.

If you copy and paste that URL into a WordPress post, WordPress will convert the
oEmbed URL into an embedded video. It's <script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script><span class="wistia_embed wistia_async_4ebsteci2g popover=true popoverContent=link" style="display:inline"><a href="#">like magic</a></span>.

{% wistia_embed hashed_id: jauk8nyobe %}

{{ "WordPress.com will sometimes inject the Wistia video thumbnail into your post when you're in editing mode. You can always switch from <strong>Visual</strong> editing to <strong>HTML</strong> for easier viewing." | tip }}

If you're curious about the technical details behind oEmbed's sneaky magic,
check out [oEmbed.com](http://oembed.com).

## Popover oEmbeds

Wistia doesn't currently offer an opportunity to select the "oEmbed" options from
the [Popover Embed]({{ '/embedding#popover_embeds' | post_url }}) tab. But that
doesn't mean it isn't possible. Time to join our secret club!

Creating a popover oEmbed is as easy as adding the `popover=true` string to your
oEmbed.

So this Standard oEmbed:

`http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&videoWidth=640`,

would become:

`http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&popover=true&videoWidth=640`.

It's as easy as that!

If you want to specify the size of the popover thumbnail (when playing, a popover
video will always be responsive in its lightbox), change the `videoWidth`
string.

`http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&popover=true&videoWidth=200`


## Embedding on WordPress.org

If you're embedding on your WordPress.org site, you'll want to use the
[Standard]({{ '/embedding#inline_embeds' |post_url }}) (or popover) Wistia embed.
Just paste your Standard embed code into your post, and you're good to go!

{% wistia_embed hashed_id: mvankkqtxb %}

## Fallback Options

Since WordPress is highly customizable, these options don't always work in every
situation. We recommend using the
[Standard]({{ '/embedding#inline_embeds' | post_url }}),
[Fallback]({{ '/embedding#fallback_iframe_embed' | post_url }}), or regular
[popover]({{ '/embedding#popover_embeds' | post_url }}) embed code types first,
but if those don't work, you'll need to call for backup. That's where the Wistia
WordPress plugin comes in handy.

## The Wistia WordPress Plugin

If you're having trouble using Standard embeds with your WordPress theme, the
[Wistia WordPress plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/)
adds support for [Wistia oEmbed URLs](#using_an_oembed_url). For more
information about how that works, see this guide from the WordPress
documentation: [Embeds in WordPress](http://codex.wordpress.org/Embeds).

With the Wistia WordPress plugin, you'll be able to quickly add oEmbed URLs to
your WordPress.org site.

{% wistia_embed hashed_id: 3r0naiqkgs %}

[Install the Wistia WordPress plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/).

## The Anti-Mangler

The Wistia WordPress plugin _also_ includes the Anti-Mangler, which (as the name
implies) protects Wistia embed codes on your website from getting mangled by
WordPress. It's disabled by default, and should only be enabled if you really
don't want to use [the oEmbed approach](#using_an_oembed_url), which is the
approach we strongly recommend. The Anti-Mangler is a decent fallback option
though, so if you'd like to enable it, head to Settings in your WordPress admin
panel, and choose Wistia WordPress. Or on the Plugins page, there's a Settings
link right under the plugin name.

{{ "The Anti-Mangler used to be enabled by default, but is optional (and no longer recommended) as of version 0.8 of the Wistia WordPress plugin." | note }}

## Tips for Using WordPress

### oEmbed URL not converting into an embedded video?

When inserting an oEmbed URL, make sure you are in HTML editing mode, and leave
a line open above and below the URL. If you switch from HTML to Visual mode it
can add formatting tags around your oEmbed URL, which may cause it to break. Be
careful of that!

### Video appearing smaller than it should be?

If you have larger resolution videos and they are appearing smaller or squished,
access the WordPress admin control panel (Settings -> Media -> Maximum Video
Embed Size) and set the max to the largest size of your video ('no limit'
setting doesn't work, it must be actual size). Some WordPress themes will also
set a maximum width for content embedded with oEmbed. If you want to change that,
check out [How to Set oEmbed Max Width in WordPress 3.5 with $content_width](http://www.wpbeginner.com/wp-themes/how-to-set-oembed-max-width-in-wordpress-3-5-with-content_width/).

### Video not centered?

If you want to **center** your video inside a `div` or column on your website,
and you are using an oEmbed URL to embed your video, please use a second div with the
style `display: inline-block;`, as seen here:

{% codeblock center-wordpress.html %}
<div style="text-align: center;">
  <div style="display: inline-block;">

    http://fantastic.wistia.com/medias/60cf0ufhoo?embedType=async&videoWidth=640

  </div>
</div>
{% endcodeblock %}

### Code not converting to video

If you've tried adding a Standard Wistia embed (or Fallback or popover), and
it's not converting to a video, try installing the
[Wistia WordPress plugin](#the_wistia_wordpress_plugin), and switching to an
oEmbed URL.

Still no success? [Give us a shout](http://wistia.com/support/contact). We'll be
happy to help.

To expedite your support, let us know what theme you're using (if any), any other
plugins you've installed, and where you're pasting the embed code (as a post,
into a module in your theme?). This will help us get to the bottom of the issue
faster for you!
