---
title: Embedding Video on Your Website
layout: post
category: Embedding
description: Want to add video to your website (embedding) but don't know where to start? Here's a quick guide to get you off the ground!
post_intro:
  <p>Putting video on your website is the best way to get your message across.
  The act of putting a video on your website is called <strong>embedding</strong>,
  and in this guide we'll show you how to get it done right.</p>
temper: true
---

## Pre-Embedding

Once you've [uploaded]({{ '/upload-video' | post_url }}) and [customized]({{ '/customizing-your-video' | post_url }}) your video, you're ready to go ahead and embed. Hooray! 

Fun Fact: Even _after_ you embed a video on your website, you can make changes to it in [Customize]({{ '/customizing-your-video' | post_url }}). Those changes will automatically apply anywhere your video is embedded. If you want to use _different_ customizations across multiple embeds of the same video, you can [make multiple copies of the video]({{ '/media#moving_and_copying_media' | post_url }}) or use advanced [embed options]({{ '/embed-options' | post_url }}) in your embed codes.

## Generate an Embed Code

An **embed code** is a snippet of code that you can use to add content (like a video!) to a web page. When a person visits your website, their web browser will interpret the embed code as a set of instructions to display your video on the page.

Wistia embed codes come in a few flavors, and they each are great for different purposes. The best type of embed code to get started with is an [iframe embed](#iframe_embed). For more advanced embedding, check out the [API](#api_embed), [SEO](seo_embed), and [popover](popover_embed) embed code types.

To generate an embed code for your video, start by selecting the *Embed & Share* option under the <span class='action_menu'>Video Actions</span> menu. That will open the Embed & Share screen, where you can choose from one of several embed code types and set the dimensions (in pixels) for your video: 

{% wistia_embed hashed_id: j3a6v2cblf %}

The dimensions of your embed code will scale proportionally with the dimensions of your original video, so you only need to set the width – we'll make sure the height matches automatically. If you would like to make your video responsive, check out Video Foam.

## Inline Embed Types

### iframe Embed

The iframe embed code type is like a [Subaru Impreza](http://en.wikipedia.org/wiki/Subaru_Impreza): simple, reliable, and if you ask the Wistian writing this documentation, a pretty nice way to get from point A to point B.

An iframe is an HTML element that lets you display content from one webpage in a special box on another page. Think of it as a cut-out box on a piece of paper. If you cut a rectangle into one page and place another page behind it, it will look like all of the content is right there in the main page:

{% post_image hashed_id: 'e1a58a32d8eeec16df926836f7527e0c3b43a52a', width: 600, class: 'center' %}

Here's an example iframe embed code:

{% codeblock iframe_example.html %}
<iframe src="//fast.wistia.net/embed/iframe/j6xdcseia9" 
allowtransparency="true" frameborder="0" scrolling="no" 
class="wistia_embed" name="wistia_embed" allowfullscreen 
mozallowfullscreen webkitallowfullscreen oallowfullscreen 
msallowfullscreen width="640" height="388"></iframe>
{% endcodeblock %}

The `<iframe> ... </iframe>` part there is what tells a person's web browser, _"Hey! Let's show some content from another web page here!"_ It then pulls in the content from [`fast.wistia.net/embed/iframe/j6xdcseia9`](http://fast.wistia.net/embed/iframe/j6xdcseia9), identified in the `src` (or "source") attribute, and displays it in a box with the dimensions specified by the `width` and `height` attributes.

When you insert an iframe embed code like that into a webpage, the video will display inline like this:

{% wistia_embed hashed_id: j6xdcseia9 %}

If you have a video in your account already, trying generating an iframe embed code for it and then [add it to your website](#pasting_your_embed_code_onto_your_page).

{{ "A quick note on our embeds. We use protocol relative URLs as part of our embed codes. This means they will work on SSL-enabled websites without any additional tinkering. They can look a bit funky without the `http` or `https` you might be expecting, but it can save you headaches when placing your video on your website." | note }}

### API Embed

Want to spice up your embed with [Embed Options & Plugins]({{ '/embed-options' | post_url }}) or build out your own custom functionality with the [Player API]({{ '/player-api' | }})? You and the API embed code type should be friends. 

{{ "There are many useful ways to customize your embed _without_ modifying the embed code. Check out [Customize]({{ '/customizing-your-video' | post_url }}) first!" | note }}

Let's check out an example API embed code, shall we?

{% codeblock api_example.html %}
<div id="wistia_j6xdcseia9" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("j6xdcseia9");
</script>
{% endcodeblock %}

An API embed code works by first creating a blank rectangular box on the page (that's the `<div ...> ... </div>` element at the top), and then executing a little script that puts a video in the box. Neato!


### SEO Embed

The SEO embed code type is what you should use if you want to help search engines identify and index the video content on your website. 

Certain aspects of your video (like the [thumbnail image]({{ '/customizing-your-video#changing_the_thumbnail' | post_url }}) and [captions]({{ '/captions' | post_url }})) will be hard-coded into the text of your SEO embed code so search engines can find that information and use it to improve the search results. For this reason, it's important to follow a specific process when using an SEO embed code. Be sure to review the [Video SEO documentation]({{ '/video-seo' | post_url }}) if you're getting started with video SEO.

### Inline Embed Advanced Options

{% post_image hashed_id: 'ea30ecdbaf3536db58a046ec8b7805ceabcef452', class: 'center' %}

Two Inline Embed advanced options:

* **Use oEmbed:** [oEmbed protocol]({{ '/oembed' | post_url }}) is a way to use
  a URL as an embed code. CMS suites like Wordpress support adding an oEmbed link
  to your site/blog post markup, and generating an embed code (hence it doesn't
  break!). To use Wistia oEmbed with Wordpress, you must have the [Wistia
  Wordpress plugin](http://wordpress.org/plugins/wistia-wordpress-oembed-plugin/) installed.
* **Use Videofoam:** If your site is built to be responsive, your videos should be too! Enabling this setting will make your videos responsive.


## Popover Embed

{% post_image hashed_id: 'c33b48a797eee9e15d9020b9be23d656111bbf21', class: 'center' %}

The **Popover Embed** type is the lightbox video experience. The popover embed code
creates either an image or text link. When clicked it will launch the lightbox
with your video inside.

{{ "Popover embeds cannot be used for SEO purposes, as Google will not index them." | note }}

The **Embed Code** box at the top contains the HTML and javascript snippet you
will place on your website to add the popover video link.

The **Video Size** option controls how large the video will appear inside the
lightbox.

The **Launch with** option toggles between a *thumbnail image* and a *text
link* for launching your popover video.

The **Thumbnail Size** option, when you are using an image as your popover
launch link, controls the dimensions of the thumbnail image that will appear on
your site.


## Pasting your Embed Code onto Your Page

Once you have copied the embed code, the next step is to paste it into your web
page editor (which could be a CMS, blog, HTML document, etc.) This is where it
gets complicated to talk in specifics, since each website management system is
different, but here are some tips:

1. If you are using a CMS suite, make sure the settings will allow for *javascript* and will leave *HTML* alone, where possible.
2. Choose the *HTML* editor setting where possible - not the *Visual* editor.
3. Leave a line above and below your embed code, to make sure it doesn't conflict with other elements on the page.

## Styling Your Embed

### Centering Your Embedded Video

<div style="text-align: center;">
  <iframe src="//fast.wistia.net/embed/iframe/zmgfiw3ckj" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" allowfullscreen mozallowfullscreen webkitallowfullscreen oallowfullscreen msallowfullscreen width="450" height="253"></iframe>
</div>

There are several possible solutions for centering a video inside a `div` or
column in your website. The solution that works best for you will depend on the
*embed code type* you use, and the structure of your website.

For an iframe embed, your embed code normally looks *something* like this:

    <iframe src="//fast.wistia.net/embed/iframe/479268413a" width="960" height="540"></iframe>

One possible solution is to add `display: block` and `margin: 0 auto` style
attributes to the embed code, like this:

    <iframe src="//fast.wistia.net/embed/iframe/479268413a" style="display: block; margin: 0 auto;" width="960" height="540"></iframe>

Another solution for iframes is to set the `parent div` (which wraps around the
video) to `text-align: center`, like this:

{% codeblock center-text-align.html %}
<div style="text-align: center;">
  <iframe src="//fast.wistia.net/embed/iframe/479268413a" width="960" height="540"></iframe>
</div>
{% endcodeblock %}

For an API embed, the original code might look like this:

    <div id="wistia_479268413a" class="wistia_embed" style="width:960px;height:540px;">

Add the `margin: 0 auto` to the existing style settings, like this:

    <div id="wistia_479268413a" class="wistia_embed" style="margin: 0 auto;width:960px;height:540px;">

### Centering oEmbed Codes in Wordpress

For using Wordpress and oEmbed codes, first add an outer div with the style
`text-align: center;`. Then, add a second div with the style `display:
inline-block;`, as seen here:

{% codeblock center-wordpress.html %}
<div style="text-align: center;">
  <div style="display: inline-block;">

    http://dave.wistia.com/medias/mgdmzrzrm4?embedType=api&videoWidth=640

  </div>
</div>
{% endcodeblock %}


## Link in Email Campaign & Social Sharing

These options are covered in-depth in the [email marketing]({{ '/email-marketing' | post_url }}) and [social
sharing]({{ '/social-sharing' | post_url }}) documentation pages respectively.


## Protecting Your Embeds

Want to make sure your videos can only be played on _your_ website (and of course, within your Wistia account)? Check out [Domain Restrcitions]({{ '/domain-restrictions' | post_url }}) for that. For more information on keeping your videos secure, see the [Security]({{ '/security' | post_url }}) guide.


## Embedded Video Stats

Now that your video is embedded on your webpage, you can use Wistia's tracking
analytics to see how your viewers are interacting with the content.

[Read up on Wistia viewing stats and analytics]({{ '/embedded-video-analytics' | post_url }}).

**If something seems fishy, you can always check out our <a href="http://status.wistia.com/">Status Page</a> for more information about what might be going on. Still no luck? Shoot us an email at support@wistia.com. We'd be more than happy to help you out!**

<script src="//fast.wistia.com/assets/external/embed_shepherd-v1.js"></script>
<script src="//fast.wistia.com/labs/play-when-visible/plugin.js"></script>
<script>
  wistiaEmbeds.onFind(function(video) {
    if ((video.hashedId() !== 'g7uyjp24c6') && (video.hashedId() !=='j6xdcseia9')) {
      video.addPlugin('playWhenVisible', {
        src: '//fast.wistia.com/labs/play-when-visible/plugin.js',
        outsideIframe: true
      });
    }
  });
</script>
