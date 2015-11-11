---
title: Identity Tagging
layout: post
category: Stats
description: Want to tag a heatmap with an email automatically? Or manually enter a name? Learn how here!
post_intro: <p><b>Identity Tagging</b> is all about who is watching your videos, and tracking their behavior over time. Using emails and names, Wistia makes it easy to identify your most engaged viewers.</p>
footer: 'for_intermediates'
---

{% wistia_embed hashed_id: 36ad88ccb0, videoHeight: 450 %}

---

## Tagging Viewers by Email

Using [email merge tags]({{ '/email-marketing' | post_url }}), your
viewers can be automatically tagged with their email address in your account.  Email merge tags allow you to track viewers who clicked through the Wistia thumbnail to watch your video. This email address will follow the viewer into the future too!

For Wistia customers with advanced web design know-how and resources, there are
also programmatic options for tagging viewers by email.  Refer to the
[ID tagging player API]({{ '/player-id-tag' | post_url }}) documentation for more
help on that.

## Tagging Viewers by Name

{% post_image hashed_id: 'f9a53fffb5d805189e740daf4bab9e0e9b046cdf', class: 'center' %}

Sometimes, you know who is viewing your videos.  Maybe you sent a client a link
through an email, or you spoke to a prospective customer by phone and recommend
they review a video.  Opening the
[analytics for that video]({{ '/embedded-video-analytics' | post_url }}),
you see an IP, location, and time that makes sense to be someone you recognize.

{% post_image hashed_id: '13b7b99edd90e9d1b8e3c4ba20b1f08293c507bf', class: 'center' %}

{% post_image hashed_id: '71074cc2b241fe662e5d34de2c7215f941cbf79d', class: 'center' %}

Clicking through the name (currently "Comcast Cable") will bring
you to this viewer's page.  Once they are named, this page will accumulate
their future video watches.

{% post_image hashed_id: 'bdd899c13a932c80ffc3718e5241c5baf07a8ce7', class: 'center' %}

Hovering over the current name will reveal an "edit" option.  Selecting that (or clicking
anywhere in the name) will allow you to re-name the viewer.  Enter their name,
and press enter.
