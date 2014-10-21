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

Instead of "popping over" the rest of the page in a lightbox, does your video take up the full browser window? This can happen when the popover script, `<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script>`, has either been removed from the page, or is unable to function properly due to a conflict with other code. Check the page source to make sure that script is present. 

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

