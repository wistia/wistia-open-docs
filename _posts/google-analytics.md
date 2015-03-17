---
title: Google Analytics
layout: post
category: Integrations
post_intro: At Wistia, we love analytics.  While ours are pretty sweet, there are lots of tools out there, like <a href="http://google.com/analytics" title="google analytics">Google Analytics</a>. While Wistia's analytics give you more in-depth information on video plays, putting basic video metrics in Google Analytics can give you a better picture of how they tie together with your website's metrics.</p><p>This guide is here to help you get started integrating Wistia video tracking with your Google Analytics account.</p>
description: Learn how to use Wistia and Google Analytics together to track video plays.
footer: 'for_intermediates'

---

## Before You Get Started

Make sure you have installed the [Google Analytics tracking scripts](https://developers.google.com/analytics/devguides/collection/analyticsjs/). These are necessary for any custom tracking we do below.

If you currently have the pre-Universal Analytics version of Google Analytics setup, we recommend checking out [the Universal Analytics Upgrade Center](https://developers.google.com/analytics/devguides/collection/upgrade/) to get all the info you need to know about converting to the shiny new Universal Analytics style of things.

## Default Configuration

Wistia automatically publishes the basic video metrics listed below to your Google Analytics account. If you have multiple Wistia videos on the page, each video will have its own set of metrics in Google Analytics. Our integration also works with Universal Analytics, so no worries about compatibility issues there unless you've changed to a custom analytics variable other than `ga` or `_gaq`.

- Play
- 25% watched
- 50% watched
- 75% watched
- 100% watched
- Turnstile email conversion

You can disable our integration for all your videos by default by changing the configuration on the Account Settings page. You can also disable the integration for an individual video by modifying the initialization parameter for an API embed: `Wistia.embed("8cexf3sjf3", { "googleAnalytics": false });`.

## Google Tag Manager

If you also use [Google Tag Manager](http://www.google.com/tagmanager/) in addition Google Analytics, there are a few extra steps you need to complete. Tag Manager acts as a middleman in front of the webpage and doesn't allow any videos to send data directly to Google Analytics. In order for Wistia to publish events to Google Analytics, data must be sent to a data layer managed by Tag Manager. Then, this data layer uses two Tags in your Tag Manager account to publish events to Google Analytics.

First, create a Page View Tag:

{% post_image hashed_id: '0176d75819d8b4940f01376bbf2196d137a914a5', width: 730, class: 'float_right' %}

Then, create an Event Trigger Tag:

{% post_image hashed_id: '705b009cf2041e12ba3001fd56f90ad73c2e314c', width: 730, class: 'float_right' %}

Lastly, add a Firing Rule to the Event Trigger Tag:

{% post_image hashed_id: '829bde1ea63cf7d1c626f6506b780673de845399', width: 730, class: 'float_right' %}

The tracking parameters are: `wistiaEventCategory`, `wistiaEventAction`, `wistiaEventlabel`, and the Firing Rule event is `wistiaTriggerEvent`. Make sure you label the event tracking parameters with the exact spelling and capitalization. Once you've completed the above steps, video metrics should publish directly to your Google Analytics account through Tag Manager.

## Track viewing in Google Analytics Dashboard

Now that we have all the back-end coding out of the way, it's time to monitor how the videos are performing on your Analytics Dashboard.

The first step is to navigate to the Event Tracking section. Click the "Behavior" area of the left hand nav bar, and then select "Events" from the list. The Events section will show the total number of events, the average number of events per visit, and the Top Events. The easiest way to get to the specific stuff is by the "Top Events" view, pictured below.

{% post_image hashed_id: '3bde9a976530cdf76ccfc8f6b60687ed9b032e9d', width: 730, class: 'float_right' %}

Depending on how many types of events you have in your installation, you may see a lot of things here. By default all ours use the "Video" type, so let's look into that category of events.

{% post_image hashed_id: '31f49a31653f2f827e57e1de9f1c7325e1f9d05b', width: 730, class: 'float_right' %}

In here, you'll see a list of the events available to you, which are the things that we push using the stuff we covered earlier. There are some defaults included, but here's where your custom events would also appear if you configured any. The default events are: played, 25% watched, 50% watched, 75% watched, 100% watched, and conversion.

{% post_image hashed_id: 'a1699c22a42332d8bcf09555a19b3febf0e9f3db', width: 730, class: 'float_right' %}

Let's take a look at the data for the "play event" for this case. You'll see here that this data comes in the form of video titles, which is a way to see in your analytics dash which of your videos got events for being played (the same is true for the other events). Below is an example of what that looks like.

{% post_image hashed_id: '1ef890a9af475643ea37b1bd048a7574ef589dee', width: 730, class: 'float_right' %}

Using Wistia and Google Analytics is a good way to get all your top-level video analytics data in the same place you already get your other website tracking information. The screenshots above may not be _exactly_ like you see, since there are a few different versions of Google Analtics, Universal Analytics, etc.
