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
up a tier is the right choice. More on that in [a minute](#conversion-chart).

Not sure? Give us [a shout](http://wistia.com/support/contact)! We'll be happy to walk you through our plans.

### Bandwidth Predictor

Want help gauging how much bandwidth your videos will use? Check out our
[Bandwidth Predictor Tool](http://wistia.com/pricing/bandwidth_predictor).

Keep in mind, while this thing is pretty sweet (if I do say so myself), it *is*
just a predictor tool. What you end up using could be different.

## Overage Pricing

Most Wistia accounts are billed at **$0.33/GB** for overages over 200GB. High
Volume plans are a bit different. [Read about that pricing here.](http://wistia.com/pricing/highvolume)

Let's walk through a fairly standard overage bill.

If you're on the $100/mo plan, and you end up using 350GB of bandwidth this
month, here's what your bill would look like:
  * $100 for the plan
  * 150GB of overage at $0.33/GB = $49.50
  * This month's bill: **$149.50**

Still not sure if you're in the right spot? [Talk to us.](http://wistia.com/support/contact)
We're happy to chat math. (Though, we *might* need to use a calculator.)

## How to Cut Down Bandwidth

Constantly hitting or exceeding your bandwidth limits? That's the pits! Here's
some tips for avoiding big overage bills.

### Video Quality

One of the easiest ways to help conserve bandwidth is to change the Video Quality in
Account Settings. This is a universal change for all of your videos, everywhere
they live on the internet--in your account, on Twitter, embedded online--everywhere.

To conserve bandwidth you'll want to lower the Video Quality. You can change
this setting in Account Settings when you're logged in as the **Account Owner**.
Choose "Account" from the sidebar and scroll to the bottom. The default option
for Video Quality is set to *Auto*, but knocking it down to 360p will help to
conserve bandwidth. This change will take effect immediately, and can always be
undone.

{% post_image hashed_id: 'ea44a976046fcb4b3f31c1c4b795cadfe076ae4a', class: 'center' %}

Just remember to **Save Settings**, and you're good to go!

### What about Long Videos?

When someone starts watching your video, we'll begin loading the entire video
asset to ensure smooth playback. If the viewer, under a sufficiently fast
internet connection, were to press pause or stop watching after only a few
minutes of an hour long video, it is still possible that the entire derivative
would have been loaded within the time that they are on the page where the video
is embedded, and so bandwidth is consumed.

If you've got a lot of long videos, but some
[low engagement]({{ '/audience-engagement-graph' | post_url }}), it'll help to
alleviate your bandwidth usage by breaking them up into smaller videos.

From there you can use our [Embed Links]({{ '/embed-links' | post_url }}) to
make an easy playlist of the videos in your series.

### Quick Tips

* Minimize your own views -- your views count toward bandwidth, so if you're
building your site, it's best not to have your video set to autoplay right off
the bat.

* Avoid having videos set on autoplay. Once a video starts autoplaying, it will
automatically start using bandwidth. To turn this off head into Timeline Actions
in the [Customize panel]({{ '/customizing-your-video#timeline_actions' | post_url }}).

* In the same vein, avoid having your videos set to loop upon finish. Looping
autoplay is a major bandwidth suck.

* If you're not a fan of the universal Video Quality option, you can change one
specific embed code to always uses a lower-resolution derivative (such as the SD
derivative). That smaller video size would also correspond to less bandwidth.
(This is heading into technical territory, so grab a developer friend if you're
not comfortable in this realm.) This can be done by using the "videoQuality"
[embed option]({{'/embed-options#embed_options_list' | post_url}}).

## Where is it coming from?

At this point, it isn't possible to gauge which video is causing a hike in
bandwidth usage if you're seeing one. But if you have a video that's getting a
lot of traffic (you can check that quickly in the [Viewer Stream]({{ '/embedded-video-analytics#viewer_stream' | post_url }})), that's
probably your culprit.

You can always see the size of the files we're delivering from your account.
Head to any video in your account and choose **Download** from the **Video Actions**
menu. There you'll see the size of the original file, and the size of the files
Wistia has created for streaming.

## Conversion Chart

Are you exceeding your bandwidth limit on the regular? Here's a nifty chart we
put together to show you the breaking point when you should jump up to the next
plan.

Plan | GB | Overage
-----|----|--------
Basic|200GB |



Still not sure? [Talk to us.](http://wistia.com/support/contact) We weren't all
Calculus majors, but we can figure our way around a TI-83.

Still confused? We'd love to chat with you about bandwidth, or anything to do
with Wistia. [Contact us](http://wistia.com/support/contact) for more information.
