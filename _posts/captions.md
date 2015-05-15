---
title: Captions
layout: post
category: Embedding
description:
  Closed captioning makes content that’s easier for viewers
  to digest and read (even in different languages), and has
  awesome SEO benefits.
post_intro:
  <p>Captions make it easy for viewers to digest the content of your
   videos. They're a critical part of content accessibility, but they
   are also helpful for longer form and educational content in any language.</p>
---

Whether you're trying to make sure people can get the message of your video (even without 
the sound), looking to expand your viewer base with multilingual captions,
 or just looking for a little more love in the video SEO department, 
**Wistia Captions** can help!

Let's jump in to creating and using your captions!

## Video Overview

{% wistia_embed hashed_id: pqmkpbr89t %}

## Select Your Video

First, navigate to the media page for the video you'd like captions for (the
page where you can play the video in your Wistia account).

Under the <span class='action_menu'>Video Actions</span> menu, select the
*Customize* option.

{% post_image hashed_id: '18aaa114cfb74eeccf002eaf18ec07f40b530ccf', class: 'center' %}

From the Customize Panel, select the *Captions* settings area.

{% post_image hashed_id: '3b64c15892efcbfb070529fa15704f0d81e683b1', class: 'float_right', width: 300 %}

* If you'd like to have us create the transcript for your video, select the 
  *Order Captions* option. The transcription should be ready within five business days.
* If you already have an [SRT file](http://en.wikipedia.org/wiki/SubRip) ready
  to upload, select the *Upload SRT* option.

## Use Your Captions

{% post_image hashed_id: 'dde5fb7fb4af6297e92e6bcdfe9c911417563b88', class: 'center' %}

Once your captions are ready, you will be notified by email, and the *CC*
button will appear to all viewers who view the video within your account. The
captions will now be included with your embed codes, if you are using the SEO 
embed code type.

{{ "Only captions ordered through Wistia will appear in your SEO embed code." | note }}

To customize your video with transcription or captions, select *Customize*
from the <span class='action_menu'>Video Actions</span> menu. Open the
*Captions* customization area.

{% post_image hashed_id: 'b2765a9518f593c22d4c1c9f0087914a5d07d4e0', class: 'center' %}

Inside the Captions customization area, you can choose to *Edit* your SRT file, 
*Download* your SRT file, and *Delete* your SRT file.

{{ "Captions currently do not work inline on Facebook." | note }}

## Captions...on an iPhone!

{% post_image hashed_id: '78f0bb5247659ba1b4ba067b62ddb1124c312994', class: 'center' %}

Wistia captions can also be used on your iPhone - I know, I didn't believe it
either until Max showed me.

If you have a captions-enabled video, the captions button will appear on the
player controls bar when being played on an iPhone.

{% post_image hashed_id: '5e53d8e082ddd821f60d67561aa412c4b554c7e6', class: 'center' %}

If you select the button, the captions options screen will show up. Select the
language of your captions and then hit *Done*.

{% post_image hashed_id: '69cc3861c18634b79ae9c1d1de9bc2d3532dfdc8', class: 'center' %}

Your captions will now appear as an overlay on the video. Super easy, just like
it should be!

## Editing Your Transcription

If you spot an error in the automated captions we produce for you, or just
need to update your SRT file, you can do that easily by selecting the *Edit* option 
in the Captions area of the *Customize Panel*.

{% post_image hashed_id: '41726c8fe540ef97a25ca8042d7358e25ed1cc70', class: 'center' %}

{{ "Make sure to keep the timing in line! If you update the content of your video, the timing may have changed. Make sure to note that in your SRT file!" | note }}

<script>
wistiaEmbed = Wistia.embed("pqmkpbr89t", {
  plugin: {
    "captions-v1": {
      onByDefault: false
    }
  }
});
</script>
