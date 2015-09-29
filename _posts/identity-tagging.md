---
title: Identity Tagging
layout: post
category: Stats
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

{% post_image hashed_id: 'd389d8ed179aa56e93472c3feccf3c0841daed77', class: 'center' %}

Sometimes, you know who is viewing your videos.  Maybe you sent a client a link
through an email, or you speak to a prospective customer by phone and recommend
they review a video.  Opening the
[analytics for that video]({{ '/embedded-video-analytics' | post_url }}),
you see an IP, location, and time that makes sense to be someone you recognize.

{% post_image hashed_id: '161dbcc8aafa0dbe9ea1b558e4a534aa66f899f1', class: 'center' %}

{% post_image hashed_id: 'f55944fc5d5fe3a066143052c17c1279528bb107', class: 'center' %}

Clicking through the name (currently "Comcast Cable") will bring
you to this viewer's page.  Once they are named, this page will accumulate
their future video viewings as well.

{% post_image hashed_id: 'b9c544648e64eada03e8dd963a435faed0b26b1c', class: 'center' %}

Hovering over the current name will reveal an "edit" option.  Selecting that (or clicking
anywhere in the name) will allow you to re-name the viewer.  Enter their name,
and press enter.

In the future, you can check in on your viewer by opening the
[viewer stream]({{ '/embedded-video-analytics#viewer_stream' | post_url }})
and searching for their name on the sorting bar.  You can also sort by "named"
viewer.

{% post_image hashed_id: 'e4ed7ab2f9d30aeebaade5a16e5370cf7669571a', class: 'center' %}
