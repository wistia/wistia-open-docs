---
title: Embedding Video on Your Website
layout: post
category: Embedding
description: Want to add video to your website (embedding) but don't know where to start? Here's a quick guide to get you off the ground!
post_intro: Putting video on your website is the best way to get your message across. The act of putting a video on your website is called **embedding**, and in this guide we'll show you how to get it done right.
---

{% embedly http://home.wistia.com/medias/5c913cd4fb, height: 371, videoHeight: 371 %}

## Upload Your Video

{% post_image hashed_id: '5695b32b1de5048682ee2cbc2fe2aec94f70c771', width: 320, class: 'float_right' %}

Before you can embed your video, you need to upload it to your account. Haven't 
done that yet? Check out our [guide to uploading]({{ '/upload-video' | post_url }})
for more info on uploading.

Once uploading is complete, Wistia transcodes several versions of your video -
perfect for serving on multiple browsers and mobile devices.  After transcoding
wraps up, your video is ready to be embedded onto your site.

---

## Generate the Embed Code

{% post_image hashed_id: '62f01c7e318746526f5bfafeda82ad96807db9a4', width: 320, class: 'float_right' %}


**Embed codes** are snippets of code pasted on your web page that are useful
for serving up content (i.e. video).  To generate the embed code for your video,
start by selecting the *&lt;/&gt; Embed* option under the
<span class='action_menu'>Video Actions</span> menu.

<div class='clear'></div>

{% post_image hashed_id: 'edda8e48e886fbfc42a8a6b6d0264fbbe160afd6', width: 320, class: 'float_right' %}

The Embed option will take you to the [Wistia Embed Screen]({{ '/embed-screen' | post_url }}).
This is where you can make some basic changes to the look and feel of your
video presentation.

<div class='clear'></div>

{% post_image hashed_id: 'fbe53b9002062e623f346aaaf7c850d33b0cd5dc', width: 320, class: 'float_right' %}

See our [complete guide to the embed screen]({{ '/embed-screen' | post_url }})
for more info.  Once you have all the settings set the way you would like them,
copy the embed code from the top box.

---

## Pasting your Embed Code onto Your Page

Once you have copied the embed code, the next step is to paste it into your web
page editor (which could be a CMS, blog, HTML document, etc.) This is where it
gets complicated to talk in specifics, since each website management system is
different, but here are some tips:

  1. If you are using a CMS, make sure the settings will allow for *javascript* and will leave *HTML* alone, where possible.
  2. Choose the *HTML* editor setting where possible - not the *Visual* editor.
  3. Leave a line above and below your embed code, to make sure it doesn't conflict with other elements on the page.

---

## Embedded Video Stats

Now that your video is embedded on your webpage, you can use Wistia's tracking
analytics to see how your viewers are interacting with the content.

[Read up on Wistia viewing stats and analytics]({{ '/embedded-video-analytics' | post_url }}).
