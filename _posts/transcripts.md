---
title: Interactive Transcripts and Captions
layout: post
category: Embedding
description:
  Interactive Transcripts and closed captioning makes content easier for
  viewers to digest, and has awesome SEO benefits.
post_intro:
  <p>Transcripts and Captions make it easy for viewers to digest the content of 
  your video. We've found them especially useful for longer form and educational
  content, but for accessibility purposes they are critical as well.</p>
---

It's like the two brothers of accessibility and general awesomeness: **Wistia
Captions** are not just for desktop viewing, they can be viewed on iOS
devices as well. **Wistia Transcripts**, on the other hand, are *interactive*,
so viewers can jump ahead (or rewind) by simply clicking on a specific word in
the transcript. They can also search ahead, to find the point in your video
they are most interested in.

*Both* Transcripts and Captions are included in your SEO embed codes, which
makes them powerful for SEO purposes.

Let's jump in to creating and using your captions and transcripts.

## Video Overview

{% embedly http://home.wistia.com/medias/pqmkpbr89t, width: 660, videoWidth: 660, height: 371, videoHeight: 371 %}

## Select Your Video

{% post_image hashed_id: '6cd1849af804ba034c02a86dbc7dc1e68ff102bb', class: 'center' %}

First, navigate to the media page for the video you'd like to transcribe (the
page where you can play the video itself).

Under the <span class='action_menu'>Video Actions</span> menu, select the
*Captions* option.

{% post_image hashed_id: '8c9d8d35d7d4fe4e5ff536c519ce42cf5c6ca44e', class: 'center' %}

Selecting *Captions* launches a dialogue box for pricing and ordering your transcription.

* If you'd like to have us create the transcript for your video, select the <span
  class="faux_button">PURCHASE TRANSCRIPT</span> option. The transcription should
  be ready within five business days.
* If you already have an [SRT file](http://en.wikipedia.org/wiki/SubRip) ready
  to upload, select the <span class="faux_button">UPLOAD .SRT</span> option.

Either way, you can use the single transcription to create an interactive
transcript OR to add closed captioning to your video.

## Use Your Transcript

{% post_image hashed_id: 'dde5fb7fb4af6297e92e6bcdfe9c911417563b88', class: 'center' %}

Once your transcript is ready, you will be notified by email, and the *CC*
button will appear to all viewers who view the video within your account. The
caption or transcription-enabled video is now ready to be embedded on your site
as well.

To embed your video with transcription or captions, select the &lt;/&gt; Embed
action from under the <span class='action_menu'>Video Actions</span> as you
normally would to embed your video (for more help on this, head over here:
[embedding a video]({{ '/embedding' | post_url }})).

{% post_image hashed_id: 'a46bd4616031aa70d471a6172b954af38f857669', class: 'center' %}

From inside the [SuperEmbed builder]({{ '/embed-screen' | post_url }}), look
for the captions area. Inside, choose if you'd like to use a transcript or
closed captioning, and whether you'd like it displayed by default.

Once that is complete, you can copy out your updated embed code, and paste it
on your site for a video with closed captioning or an interactive transcript!

## Captions...on an iPhone!

{% post_image hashed_id: '78f0bb5247659ba1b4ba067b62ddb1124c312994', class: 'center' %}

Wistia captions can also be used on your iPhone - I know, I didn't believe it
either when Max showed it to me.

If you have a captions-enabled video, the captions button will appear on the
player controls bar when being played on an iPhone.

{% post_image hashed_id: '5e53d8e082ddd821f60d67561aa412c4b554c7e6', class: 'center' %}

If you select the button, the captions options screen will show up. Select the
language of your transcription (probably English) and then hit *Done*.

{% post_image hashed_id: '69cc3861c18634b79ae9c1d1de9bc2d3532dfdc8', class: 'center' %}

Your captions will now appear as an overlay on the video. Super easy, just like
it should be!

## Editing Your Transcription

{% post_image hashed_id: '50790ac6c8ec8e44d5bb0e23897ff65e89bf00ad', class: 'center' %}

If you spot an error in the automated transcription we produce for you, or just
need to update your SRT file, you can do that easily by selecting the
*Captions* option under the <span class="action_menu">Video Actions</span>
after your transcription is complete.

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
