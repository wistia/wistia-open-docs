---
title: Using Wistia with Campaign Monitor
layout: post
category: Integrations
description: We love Campaign Monitor. Lucky for us, adding a Wistia video to an email campaign is pretty easy, too. Learn how here!
post_intro: <p> Campaign Monitor is great email marketing software.  Their interface is elegant and easy to use, the team is top-notch and they have great taste in music. Oh, and creating an email campaign including a Wistia video with Campaign Monitor is easy, too! </p>
footer: 'for_beginners'
---

{% post_image hashed_id: '53bf14a1c11bf428cfcec9dbebc40dee17823e76', width: 190, class: 'integration_logo' %}

----

## Prework

{% post_image hashed_id: '158ba02913c1b3a4c298143a3542fea81e8f1f85', width: 320, class: 'float_right' %}

The first step is choosing the video you'd like to show off in your campaign.

Start by embedding the video on the landing page you'll be using (or, if you're having it point to your Wistia Media Page, you're all set).  Follow the embedding steps if you have any trouble: [Embedding Your Video]({{ '/embedding' | post_url }}).

----

## Generating the Campaign Monitor Merge Tag

{% post_image hashed_id: '48c849fe57613e96237954c65704241dc9d1187f', width: 320, class: 'float_right' %}

The next step is to create the merge tag for your Campaign Monitor email. On your video's media page, select 'Email Marketing from under the <span class="action_menu">Media Actions</span> menu.


Select "Campaign Monitor" as your provider.  Then, update the size of the thumbnail to your liking, and update the URL to point to where your video is embedded.  By default, it will point to the URL of your video in your Wistia account.

Once you are ready, copy the HTML in the "video merge tag" box for use in your Campaign Monitor email.

----

## Adding Code to Your Campaign Monitor Email

Now it's time to fire up your Campaign Monitor account.  In the email you want to integrate the video link into, paste your "video merge tag" into the HTML and then hit 'preview'.  You should see the video thumbnail and play button appear!

{% post_image hashed_id: '57225bfe428f0ea2136ee5b4769e0644bed7b4e4', class: 'center' %}

Now your email is ready to send!!  As recipients open your email and click-through to view the video, their stats will be accumulated in Wistia and tagged with their email address.  How cool is that??
