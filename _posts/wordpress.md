---
title: WordPress &amp; Wistia
layout: post
category: Integrations
description: WordPress is one of the most popular blog/website platforms out there, and Wistia videos work quite well in the WordPress environment.
temper: true
---

## Wistia WordPress Plugin

{% post_image hashed_id: 'bdad3d0b4f6e6581194fbcbd25dd9626501c7c80', width: 200, class: 'integration_logo float_left' %}

Using the [Wistia WordPress Plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/), you can add your embed codes and they will be protected. It won't take up any space in your WordPress admin dashboard, but instead works quietly in the background (as it should).

{{ "Wistia embed codes can only be used with WordPress.org installs. <a href='http://en.support.wordpress.com/com-vs-org'>Read up on the difference between WordPress.com hosted blogs and WordPress installs</a>." | note }}

## Using the oEmbed Embed Code

The [Wistia WordPress Plugin](https://wordpress.org/plugins/wistia-wordpress-oembed-plugin/)
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

{{ "The oEmbed embedding method does not work with CNAMEd accounts." | note }}

## Tips for Using WordPress

* When inserting the embed codes, make sure you are in HTML editing mode, and leave a line open above and below the embed code. If you switch from HTML to Visual mode, it can add formatting tags around your oEmbed which may cause it to break. Be careful of that!
* If you have larger resolution videos and they are appearing smaller or squished, access the WordPress admin control panel (Settings -> Media -> Maximum Video Embed Size) and set the max to the largest size of your video ('no limit' setting doesn't work, must be actual size).


If you want to **center** your video inside a `div` or column on your website,
and you are using the oEmbed embed code type, please use a second div with the
style `display: inline-block;`, as seen here:

{% codeblock center-wordpress.html %}
<div style="text-align: center;">
  <div style="display: inline-block;">

    http://dave.wistia.com/medias/mgdmzrzrm4?embedType=api&videoWidth=640

  </div>
</div>
{% endcodeblock %}

For more options, refer to our tips in the [embedding documentation]({{ '/embedding#styling_your_embed' | post_url }}).


## Using Wistia Video SEO with WordPress

The best way to use Video SEO, Wistia embeds, and WordPress together is by installing
the awesome [Yoast plugin](http://yoast.com/wordpress/video-seo/). Joost, the one-man wrecking crew behind Yoast, has put together a really valuable and easy-to-use
workflow that also includes Wistia support (awesome!!).
