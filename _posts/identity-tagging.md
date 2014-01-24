---
title: Identity Tagging
layout: post
category: Analytics
description: Want to tag a heat map with an email automatically? Or manually enter a name? Learn how here!
post_intro: <p><b>Identity Tagging</b> is all about who is watching your videos, and watching their behavior over time.  Using emails and names, Wistia makes it easy to identify your most engaged viewers.</p>
---

{% wistia_embed hashed_id: 36ad88ccb0, videoHeight: 450 %}

---

## Tagging Viewers by Email

Using [email marketing embeds]({{ '/email-marketing' | post_url }}), your
viewers can be tagged by email in your account.  Using special embed codes,
viewers who click through from an email can be tagged, and this email tag will
follow the viewer into the future.

For Wistia customers with advanced web design know-how and resources, there are
also programmatic options for tagging viewers by email.  Refer to the 
[ID tagging player API]({{ '/player-id-tag' | post_url }}) documentation for more
assistance.

## Tagging Viewers by Name

{% post_image hashed_id: '6c1f8ce3a1b55fd528903c7fe7c172816a601164', class: 'center' %}

Sometimes, you know who is viewing your videos.  Maybe you sent a client a link
through an email, or you speak to a prospective customer by phone and recommend
they review a video.  Opening the 
[analytics for that video]({{ '/embedded-video-analytics' | post_url }}), 
you see an IP, location, and time that makes sense to be someone you recognize.

{% post_image hashed_id: '414795a39fb1cfaef24874c56b2355fdb3ad94af', class: 'center' %}

{% post_image hashed_id: 'e4342b916b739158f578fe1b545f51eb2670dc3f', class: 'center' %}

Clicking through the name (currently "Verizon Internet Services") will bring
you to this viewer's page.  Once they are named, this page will accumulate
their future video viewings as well.

{% post_image hashed_id: 'aec09549631ba0450c630c5c2bcaf5c9bc9fb4bd', class: 'center' %}

Next to the current name is a green "edit" tag.  Selecting that (or clicking
anywhere in the name) will allow you to re-name the viewer.  Enter their name,
and press 'return'.

In the future, you can check in on your viewer by opening the 
[viewer stream]({{ '/embedded-video-analytics#viewer_stream' | post_url }}) 
and searching for their name on the sorting bar.  You can also sort by "named"
viewer.

{% post_image hashed_id: '9624d8a4e4b3c484c72d04bfa2bde57b89813437', class: 'center' %}

