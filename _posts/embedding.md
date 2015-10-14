---
title: Embedding Video on Your Website
layout: post
category: embed and share
description: Want to add video to your website (embedding) but don't know where to start? Here's a quick guide to get you off the ground!
post_intro: <p>Putting video on your website is the best way to get your message across. The act of putting a video on your website is called <strong>embedding</strong>, and in this guide we'll show you how to get it done right.</p>
footer: 'for_intermediates'
---

## Pre-Embedding

Once you've [uploaded]({{ '/upload-video' | post_url }}) and [customized]({{ '/customizing-your-video' | post_url }}) your video, you're ready to go ahead and embed. Huzzah!

Fun fact: even _after_ you embed a video on your website, you can make changes to it in [Customize]({{ '/customizing-your-video' | post_url }}). Those changes will automatically apply anywhere your video is embedded. If you want to use _different_ customizations across multiple embeds of the same video, you can [make multiple copies of the video]({{ '/media#moving_and_copying_media' | post_url }}) or use advanced [embed options]({{ '/embed-options' | post_url }}) in your embed codes.

## Generate an Embed Code

An **embed code** is a snippet of code that you can use to add content (like a video!) to a web page.

To generate an embed code for your video, start by selecting the *Embed & Share* option under the <span class='action_menu'>Video Actions</span> menu from your video's page in Wistia. That will open the Embed & Share screen, where you can choose your embed code type and make it _just right_ for your page.

There are two main types of Wistia embed codes: [Inline embeds](#inline_embeds) and [Popover embeds](#popover_embeds). Read on to learn more about both!

## Inline Embeds

{% post_image hashed_id: '8b09b21713e40f738d70a43d66bac82acef32d51', width: 711, class: 'float_left' %}

Inline embeds will place the video directly on the page, _inline_ with the rest of your content. Here's an example "standard" inline embed:

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_responsive_padding" style="padding:56.25% 0 0 0;position:relative;"><div class="wistia_responsive_wrapper" style="height:100%;left:0;position:absolute;top:0;width:100%;">
<div class="wistia_embed wistia_async_78evdl8ycp" style="height:100%;width:100%">&nbsp;</div>
</div></div>

Nice.

This is what a standard inline embed code looks like:

{% codeblock standard_embed.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_wogyyxgk0n" style="height:349px;width:620px">&nbsp;</div>
{% endcodeblock %}


Feel free to grab that embed code to try it out, or [go to your Wistia account](https://my.wistia.com) and get an inline embed code for you own video!

{{ 'Wistia embeds are extremely configurable, and lots of fun to work with (if we may say so ourselves). If you want to get fancy with our JavaScript API, [this link is for you](http://wistia.com/doc/player-api).' | tip }}


### Fallback (iframe) Embed

While the Standard inline embed code will work great in most cases, some websites can give it a little trouble. Luckily, there's a fallback option:

{% post_image hashed_id: 'edf435f5c6927c7995943836170af3654b45ace5', width: 641, class: 'float_left' %}

The fallback embed is like a [Subaru Impreza](http://en.wikipedia.org/wiki/Subaru_Impreza): simple, reliable, and if you ask the Wistian writing this documentation, a pretty nice way to get from point A to point B.

If you can't include JavaScript on your website, or something is making your Standard embed look a little... weird, give the Fallback option a try.

{{ "The Fallback (iframe) embed should only be used if the Standard inline embed won't work on your website for some strange reason. Please [tell us](http://wistia.com/support/contact) if that happens!" | note }}

## Popover Embeds

{% post_image hashed_id: 'f8dea5aa0d84cafac432a23ee982f66cff819d0e', width: 711, class: 'float_left' %}

Popover embed codes make your videos _pop over_ the rest of your content <div class="wistia_embed wistia_async_ftt9sor9hw popover=true popoverContent=link" style="display:inline"><a href="#">like this</a></div> instead of playing inline.

You can launch a popover video with either a text link or thumbnail image link. When clicked, that link will open a lightbox
with your video inside.

<div class="wistia_embed wistia_async_ftt9sor9hw popover=true popoverAnimateThumbnail=true" style="display:inline-block;height:169px;width:300px">&nbsp;</div>

{{ "Popover embeds cannot be used for video SEO purposes. Google generally will not index them, because they don't really put a video **on** the page – they put one in front of it!" | note }}

Here's an example popover embed code:

{% codeblock popover_example.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_ftt9sor9hw popover=true popoverAnimateThumbnail=true" style="display:inline-block;height:169px;width:300px">&nbsp;</div>
{% endcodeblock %}

{{ 'If you would like to modify the behavior of your popover embed beyond what the options in the Embed & Share screen provide, check out the [Popover Customization](http://wistia.com/doc/popover-customization) page.' | tip }}


## Embed Responsively

All inline embed codes are responsive by default, meaning that your video will automatically resize itself to the width of its container. If you need to set the video to specific dimensions though, just switch to the Fixed Size option and choose a width or height. The dimension you _don't_ adjust will automatically change to maintain the aspect ratio of your video.

{% wistia_embed hashed_id: eas86njrhu %}

## Video SEO

Video SEO is a set of tools and processes to help search engines identify and index your videos. Wistia's Standard embed codes are automatically SEO-friendly, and they'll help people find your videos on _your_ website – not [someone else's](http://youtube.com).

Check out the [Video SEO help page]({{ '/video-seo' | post_url }}) for more detail 🔍, and tips on getting Video SEO done right.


## Link in Email Campaign & Social Sharing

These options are covered in-depth in the [email marketing]({{ '/email-marketing' | post_url }}) and [social
sharing]({{ '/social-sharing' | post_url }}) help pages respectively.


## Protecting Your Embeds

Want to make sure your videos can only be played on _your_ website (and of course, within your Wistia account)? Check out [Domain Restrictions]({{ '/domain-restrictions' | post_url }}) for that. For more information on keeping your videos secure, see the [Security]({{ '/security' | post_url }}) guide.


## Embedded Video Stats

Now that your video is embedded on your webpage, you can use Wistia's
analytics to see how your viewers are interacting with the content.

[Read up on Wistia's analytics functionality]({{ '/embedded-video-analytics' | post_url }}).

## Troubleshooting Embed Issues
Embedding can be tough! If you're stuck, check out the [Embed Troubleshooting]({{ '/embed-troubleshooting' | post_url }}) documentation.

If something seems fishy on Wistia's side of things, you can always check out our <a href="http://status.wistia.com/">Status Page</a> for more information about what might be going on. Still no luck? [Contact us](http://wistia.com/support/contact). We'd be more than happy to help you out!



<script>
window._wq = window._wq || [];
_wq.push({ "eas86njrhu": function(video) {
  video.addPlugin('playWhenVisible', {
    src: '//fast.wistia.com/labs/play-when-visible/plugin.js'
  });
  $(video.container).css({"border":"1px solid #cbd0d6"});

}});
</script>
