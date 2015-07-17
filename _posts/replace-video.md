---
title: Replace Your Video
layout: post
description: Sometimes, it just takes too much effort to replace an embed code in the wild. Calling your developer doesn't always need to happen though, with Wistia's replace video tool!
category: Public Sharing
---

There are two ways to replace a video in Wistia--**overwrite** and **swap**. An overwrite
for a video is intended for slight editing tweaks (caught that typo too late!) and
quick fixes. Videos that are overwritten will keep their stats--so you won't 
lose a second of data.

A swap makes it easy to place a completely different video in the wild without 
changing your embed code. When you swap a video we'll save the old version in 
the same project with a new Hashed ID--that magical string of numbers and 
letters at the end of a Wistia URL that keeps everything neatly organized 
behind-the-scenes. 

(So for this video `https://support.wistia.com/medias/sqzcdxvf9p` the Hashed ID 
would be `sqzcdxvf9p`.)

The Replace Video functionality is designed to cause the least disruption
possible for your embedded video. So while the replacement is uploading and
processing, the old video will continue to play anywhere it is embedded. No
stats or comments will be affected, and the video will update immediately after
its finished processing.

For both **Swap** and **Overwrite** all customizations will transfer (including
the thumbnail) with the replacement. Captions, Timeline Actions, and any player
customizations will remain the same.

{{ "Replacing a video does not replace any other copies of that video you've made in your account." | note }}

Let's dive in.

## Swap out Video Content

Swapping a video makes it easy to change an already embedded video without 
touching any code. If you're looking to change your homepage video, but don't
have time or resources to change your embed code, then **swap** is for you!

To swap a video, navigate to the video in your account you'd like to swap.

Select the "Replace Video" option under the *Video Actions* menu.

{% post_image hashed_id: '4fdffd1137f199d42da517826c99b7b4142b3e88', class: 'center' %}

You'll be given two options: **Swap out video content, start new stats from scratch**
and **Overwrite the original, build on top of its stats**. The default is set to
**Swap out video content**. Click *Choose Replace Video* and select which video
you'd like to upload as your replacement.

{% post_image hashed_id: 'bbd7af86aeeec292876d0d8429d61c61d63900b5', class: 'center' %}

Your video will begin uploading and processing. You're almost there!

Once the video is done processing you're good to go! Your new video will appear
in the wild, and your old video (with all of its stats) will be safely archived 
in the same project.

{% post_image hashed_id: '4728699cabd1c74119d78219a70a5bb4a62dd20a', class: 'center' %}

You can update the title of either video by choosing the Edit button next to the
video name. [Here's a bit more]({{ '/projects' | post_url }}) about staying 
organized in your Wistia account.

Keep in mind, swap will change all instances of your video--including any links
you've shared (something like: `https://support.wistia.com/medias/sqzcdxvf9p`).
If you're still not sure of the best move for you, [give us a shout](http://wistia.com/support/contact)!
We'll be happy to help.

## Overwrite the Original 

Overwriting is intended for quick fixes and last minute updates. Spell the CEO's
name wrong, or decide the logo should be a different color? Don't sweat! We've
got you covered.

First, navigate to the video you'd like to update and choose "Replace Video" 
from the *Video Actions* menu.

Select **Overwrite the original content, build on top of its stats** from the
Replace Video modal and then click *Choose Replace Video*. Pick the video you'd
like to update it with, and sit back!

Your video will begin uploading and processing.

Once it's done, you're all set! The video will update in the wild--no new embed
code needed.

{{ "Still not sure what's the right move? Got a use case that's got you in a jam? [Contact us](http://wistia.com/support/contact). We'd love to help you out. :)" | tip }}

