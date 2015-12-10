---
title: Captions
layout: post
category: Customize
description: Closed captioning makes content that’s easier for viewers to digest and read (even in different languages), and has awesome SEO benefits.
post_intro: <p>Captions make it easy for viewers to digest the content of your videos. They're a critical part of content accessibility, but they are also helpful for longer form and educational content in any language.</p>
footer: 'for_beginners'
---

Whether you're trying to make sure people can get the message of your video
(even without the sound), looking to expand your viewer base with multilingual
captions, or just looking for a little more love in the video SEO department,
**Wistia Captions** can help!

Let's jump in to creating and using your captions!

## Video Overview

{% wistia_embed hashed_id: dez9wbqxn8 %}

## Select Your Video

First, navigate to the media page for the video you'd like captions for (the
page where you can play the video in your Wistia account).

Under the <span class='action_menu'>Video Actions</span> menu, select the
*Customize* option.

{% post_image hashed_id: '18aaa114cfb74eeccf002eaf18ec07f40b530ccf', class: 'center' %}

From the Customize Panel, select the *Captions* settings area.

{% post_image hashed_id: '3b64c15892efcbfb070529fa15704f0d81e683b1', class: 'float_right', width: 300 %}

* If you'd like to have us create the transcript for your video, select the
  *Order Captions* option. The transcription should be ready within one business day.
* If you already have an [SRT file](http://en.wikipedia.org/wiki/SubRip) ready
  to upload, select the *Upload SRT* option.

## Use Your Captions

{% post_image hashed_id: 'dde5fb7fb4af6297e92e6bcdfe9c911417563b88', class: 'center' %}

Once your captions are ready, you will be notified by email, and the *CC*
button will appear to all viewers who view the video within your account. The
captions will now be injected into the metadata of your video when using the
[Standard Embed]({{ '/embedding#inline_embeds' | post_url }}). To learn more
about Video SEO check out our [help page]({{ '/video-seo' | post_url }}).

To customize your video with transcription or captions, select *Customize*
from the <span class='action_menu'>Video Actions</span> menu. Open the
*Captions* customization area.

{% post_image hashed_id: 'b2765a9518f593c22d4c1c9f0087914a5d07d4e0', class: 'center' %}

Inside the Captions customization area, you can choose to *Edit* your SRT file,
*Download* your SRT file, and *Delete* your SRT file.

{{ "Captions currently do not work inline on Facebook." | note }}

## Multilingual Captions

You can upload as many SRT files as you'd like to your video. Spanish, English,
French, Croatian--the more the merrier!

Wistia allows for multilingual captions, and you're only limited by your
imagination (and maybe fiction--those Klingon captions won't work 👽).

Right now Wistia only allows you to *order* captions in English, but if you have
an SRT file in another language upload away!

{{ "If you're using a right-to-left read language, you'll need to accommodate for the flip that takes place in many internet environments. Wistia flips right-to-left captions by default, so building captions to account for this is the easiest fix." | tip }}

## Captions on by Default

If you'd like your captions to be turned on permanently, now's your chance!
Just choose **captions on by default** from the Captions menu in Customize.

{% post_image hashed_id: 'd55365dbb5778e9d1bdc9c36a48c86f33519b7ce', class: 'float_right', width: 300 %}

If you're working with multilingual captions, we'll supply the captions
that match the language of your viewer's browser. If those captions aren't
available, we'll serve the first SRT file uploaded (the first in the list).


## Captions...on an iPhone!

{% post_image hashed_id: '057f5f47977bb6752dbec8bcebe06d8637ea0147', class: 'center' %}

Wistia captions can also be used on your iPhone - I know, I didn't believe it
either until Max showed me.

If you have a captions-enabled video, the captions button will appear on the
player controls bar when being played on an iPhone.

{% post_image hashed_id: '41a7567d0566af40633bb59a5d655ff37027f909', class: 'center' %}

If you select the button, the captions options screen will show up. Select the
language of your captions and then hit *Done*.

{% post_image hashed_id: '0500edb5b63d4d7150c1888c748e4c1502a755e5', class: 'center' %}

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
