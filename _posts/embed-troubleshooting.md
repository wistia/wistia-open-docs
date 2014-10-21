---
title: Embed Troubleshooting
layout: post
category: Embedding
description: Does your embed look a bit funky? Is it inside out, backwards, or upside down? You've come to the right place. 
post_intro:
  <p>Does your embed look a bit funky? Is it inside out, backwards, or upside down? You've come to the right place.</p>
temper: true
---

While Wistia embed codes should work properly out of the box, it can definitely be tricky to make them work _just right_ in certain situations. Here are some common challenges, and how to overcome them. Never give up. Never surrender.

## Our Go-To Troubleshooting Tools & Processes


## Popover embed taking over the full browser window

Instead of "popping over" the rest of the page in a lightbox, does your video take up the full browser window like the one below?

<a href="//fast.wistia.net/embed/iframe/ae5lpf6uc3?popover=true" class="wistia-popover[height=540,playerColor=3ea9f5,width=960]"><img src="https://embed-ssl.wistia.com/deliveries/3277caba75e6b99c184b4546a1b240133bb47158.jpg?image_play_button=true&image_play_button_color=3ea9f5e0&image_crop_resized=300x169" alt="" /></a>

This can happen when the popover script, `fast.wistia.com/assets/external/popover-v1.js"`, has either been removed from the page, or is unable to function properly due to a conflict with other code. Check the page source to make sure that script is present. If it's there but your video still isn't quite _popping_, [send us a link](http://wistia.com/support/contact) and we'll help you figure it out!

## Black bars on the top and bottom or sides of the video

Does your video look sort of like this one?

<div id="wistia_hj6gi4rn4g" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("hj6gi4rn4g");
</script>

Those lines on the left and right sides of your video (or perhaps top and bottom) are the worst! That can happen if the dimensions of your embed code don't match the dimensions of your video. 

While there are many possible causes for this, one common reason is that the Social Bar was either added or removed _after_ the video was embedded. Since the Social Bar takes up some extra space below the video, the embed code's dimensions need to adjust to accomodate for it. Try re-embedding your video to see if that helps!

## Loading...

## Video not displaying on mobile devices

## Video not resizing correctly

## Video not collecting stats

## Video not showing up in search results

First things first: It's important to know that even if you everything right from an "SEO Best Practices" standpoint, sometimes Google may choose to not feature your video in the search results. As a private company, Google has full control over the content and user experience on the websites it operates, and Google does not publicly disclose the details behind how it constructs search reuslts – that's their secret sauce!

Now with that said, there are a _bunch_ of things you can do to help Google find your videos and increase your chances. If you've followed each step in the Video SEO Documentation, you have done everything Wistia recommends for video SEO.

If your videos still are not showing up in the video search results despite your best efforts, check out Google's [Video Best Practices](https://support.google.com/webmasters/answer/156442?hl=en) and [Troubleshooting](https://support.google.com/webmasters/answer/1093493?hl=en) guides for more helpful tips.

