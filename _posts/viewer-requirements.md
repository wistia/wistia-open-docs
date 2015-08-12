---
title: Wistia Video Viewing Requirements
layout: post
category: Getting Set Up
description:
  Wistia videos work pretty much everywhere on the web, but if you want to
  double check this is the right place to look!
post_intro:
  <p>As you begin to add Wistia-hosted video to your marketing materials, you
  might wonder, "What does someone need to watch Wistia videos?"  No worries,
  we've got you covered.</p>
---

## Our Player

{% wistia_embed hashed_id: 4x9odvsk2t, videoWidth: 599, videoHeight: 337 %}

This is our Wistia player. If you can watch this video - success! Your computer
and browser are all set to view Wistia-hosted content.

{% post_image hashed_id: '320d5c6bf8df4053a63d70869f3f7d7f6b8f78ad', class: 'center' %}

## Operating Systems Supported

No worries on which operating system your viewers are using - Wistia is
friendly with almost every OS on every planet we are aware of, including
Mac OS, Windows, and Linux.

## Browsers Supported

Wistia will work on any browser that supports Adobe Flash and/or HTML5 (in the form of MP4 video with and h.264).
The requirement for viewing Flash content is Flash Player 9 or greater, and a browser that supports Flash.
To check which version of Flash you are running, head to their
[download page](http://www.adobe.com/support/flash/downloads.html).
To ensure the best play-back, we typically recommend remaining up to date with
your Flash version whenever possible.

For media other than video, No PDF reader is required, as we convert documents
to a Flash format as well.

We also work with all of the major browsers and versions of Internet Explorer
(as far back as IE7), Firefox, Safari, and Chrome.

{{ "In browsers where HTML5 video in the form of MP4 files encoded with h.264 are not supported, a Flash plugin will be required to play Wistia videos. We will prompt viewers to install a Flash plugin if they do not already have one installed." | note }}

<div class='browser_images'>
  <img src='https://raw.github.com/alrra/browser-logos/master/internet-explorer/internet-explorer_128x128.png' width="80px" />
  <img src='https://raw.github.com/paulirish/browser-logos/master/safari/safari_128x128.png' width="80px" />
  <img src='https://raw.github.com/paulirish/browser-logos/master/firefox/firefox_128x128.png' width="80px" />
  <img src='https://raw.github.com/paulirish/browser-logos/master/chrome/chrome_128x128.png' width="80px" />
</div>

## Mobile OS Support

At this point, there are basically two main methods to view video on the mobile 
web: `Flash` and `HTML5`. Newer Android phones (4.1 and up) and iOS devices,
such as iPhones and iPads, support HTML5.

Older Android devices have a *native playback* mode and support for flash.
Our embed codes are designed to seamlessly flip between HTML5 and Flash,
based on the type of device and OS detected.

We have found the most consistent support on all **iOS** devices, and
**Android** devices running version 2.2 or later.

Blackberry at this point supports neither HTML5 or Flash. As a result, there
is not a consistently available way to deliver video via the web to Blackberry
devices.

## Internet Connection Speed

The minimum viable connection speed to stream Wistia video reliably is about 768 kilobits per second (equal to .768 megabits per second). We recommend a connection speed of at least 5 megabits per second for an optimal experience with HD capability.

For more information on how to prepare your video for the best performance and details on how Wistia optimizes the playback experience for each viewer, be sure to review the [Optimal Export Settings]({{ '/export-settings' | post_url }}) guide. It's quite helpful!