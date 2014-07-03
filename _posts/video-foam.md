---
layout: post
title: Using Video Foam
description: 
  Responsive design and video can be a real headache. Use our video foam plugin
  to make it easy and consistent.
---

**Responsive Design** has become popular for designers on the interwebs. When 
designing responsively, you are looking to create the optimal viewing experience
for all devices (be it on your phone or your big desktop monitor).

Responsive Design and video can be pretty confusing - there are lots of
standards for different browsers to consider and such. That's why we created
our `videoFoam` plugin.

## videoFoam Demo

We called the plugin *Video Foam* because a video using the plugin will fill
it's parent container. [Check out the videoFoam demo](http://wistia.github.io/demobin/video-foam/)!

## Using videoFoam

{% post_image hashed_id: '86f031ad77e13cd74f00027b2df4e2ec69a6ead0', class: 'center' %}

In the [Embed & Share modal]({{ '/embedding' | post_url }}), select the *Use
Video Foam* checkbox. Then, you can copy your embed code and paste it into your
site!

## Setting bounds for videoFoam

You can set maximum or minimum widths and heights that videoFoam will honor.

For example, when setting the videoFoam option on an API embed, you can change
this:

    { videoFoam: true }

to this:

    {
      videoFoam: {
        minWidth: 400,
        maxWidth: 960
      }
    }

or using height instead:

    {
      videoFoam: {
        minHeight: 300,
        maxHeight: 450
      }
    }

## videoFoam Tips

We'll leave most of the tips for responsive design to the
[experts](http://davidwalsh.name/design-responsively). In terms of using video
foam specifically, the most important thing to remember is *your parent
container cannot take its size/dimensions based on its content*. 

If your parent container looks for its content to set the size, the
videoFoam'ed video will not expand as you expect it to. Use a `max-width` or
relative-based width instead.

If you're wrapping your videos in `<span>` tags, make sure that you're setting their width to match the width of the div that they live in. If you're not, video foam won't accurately be able to get a read on what size your video should be and will simply display as the default embedded size.

**Woot!**
