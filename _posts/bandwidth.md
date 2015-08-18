---
layout: post
title: Bandwidth
description: Bandwidth can be pretty confusing. What is it? Where does it go? And how did I use it all? Fear not! We're here to help. Let's walk through how Wistia does bandwidth, how to see your bandwidth, and some tips to save your from overages!
category: Getting Set Up
post_intro: <p>Bandwidth can be pretty confusing. What is it? Where does it go? And how did I use it all? Fear not! We're here to help. Let's walk through how Wistia does bandwidth, how to see your bandwidth, and some tips to save your from overages!</p>
---

## Understanding Bandwidth

Bandwidth is the data that gets passed to a viewer when they watch a video.
So, every time someone presses play on your videos, data gets passed from our
servers to their browsers, which is counted as bandwidth.

But just pressing play isn't the only way to use bandwidth. A few things other
than plays count toward your monthly bandwidth usage too--like video downloads
and the thumbnail image.

But, Wistia, you ask, what does this mean to me, really? How do *you* use my
bandwidth?

## How It All Works

When you upload a video to Wistia we create multiple derivates to ensure the
smoothest playback. We want your video to play in as many environments as
possible--which is why we create not only HD files, but SD and Flash derivates
too.

When your excited viewer presses play on your video inline (usually 640px -
960px wide), it is a waste of bandwidth to show them the HD file. At that size,
the difference in picture is nearly imperceptible. HD files are also much *much*
larger, which means the viewer can also have that stuttering playback
experience. Major bummer!

Instead, we have chosen smart standard definition defaults (what we call *Smart Encoding*)
based on your video type (i.e. screencast, action, interview) and that is the
version that is shown.

Science!

Still confused? Have no fear, we made you a helpful video too.

## Video Overview

{% wistia_embed hashed_id: 5q0r8i5gfo %}

## Check Your Bandwidth

All right, so you understand *what* bandwidth is, but now it's time to dive into
it works in Wistia.

We'll send you a heads up email if you're on track to go over your bandwidth for
the month, but you can always check on your usage inside your account. Just make
sure you're logged in as the **Account Owner**.

Head into Account Settings, and select *Usage* from the sidebar. There you'll
see your bandwidth usage over the course of the month. You'll also see when it's
slated to reset, and if you're likely to go over.

Here you can check out the last three months of bandwidth--and decide if moving
up a tier is the right choice. More on that in [a minute]().

Not sure? Give us [a shout](http://wistia.com/support/contact)! We'll be happy to walk you through our plans.

### Bandwidth Predictor

Want help gauging how much bandwidth your videos will use? Check out our
[Bandwidth Predictor Tool](http://wistia.com/pricing/bandwidth_predictor).

Keep in mind, while this thing is pretty sweet (if I do say so myself), it *is*
just a predictor tool. What you end up using could be different. [Here's a bit more]() about file sizes and the magic of encoding.

---

## How to Cut Down Bandwidth

Constantly hitting or exceeding your bandwidth limits? That's the pits! Here's
some tips of staving off big overage bills.

### Video Quality

One of the easiest ways to help conserve bandwidth is to change your Video Quality in
Account Settings. This is a universal change for all of your videos, everywhere
they live on the internet.

To conserve bandwidth you'll want to lower the Video Quality. [Here's a quick overview about how ]

### What about Long Videos?

When someone starts watching your video, we'll begin loading the entire video
asset to ensure smooth playback. If the viewer, under a sufficiently fast
internet connection, were to press pause or stop watching after only a few
minutes, it is still possible that the entire derivative would have been loaded
within the time that they are on the page where the video is embedded, and so
bandwidth is consumed.

If you've got a lot of long videos (but some
[low engagement]({{ '/audience-engagement-graph' | post_url }})), it'll help to
alleviate your bandwidth usage by breaking them up into smaller videos.

---

## Overages

---

## Where is it coming from?

---

## How can I check my bandwidth?

---

## Conversion chart/when to switch!

---

Still confused? We'd love to chat with you about bandwidth, or anything to do
with Wistia. [Contact us](http://wistia.com/support/contact) for more information.
