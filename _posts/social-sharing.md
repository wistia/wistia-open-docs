---
layout: post
title: Wistia and Social Sharing
category: Embedding
description: Want to get social with your Wistia videos? We make it simple to share and track your videos on your favorite social media sites, such as Facebook and Twitter.
post_intro: <p>Social Media can drive some serious ROI if done right.  Vehicles like Facebook and Twitter can be used to spread a business message effectively, especially if delivered in an easy to consume and share way.  The best way to do that is with video - it's perfect for social media attention spans, so it tends to 'travel' better than blocks of text.</p><p>Now that you've got your video uploaded to Wistia, how do you share it and track the performance on Social Media sites?  This tutorial will help.  The two services we're focused on here are Facebook and Twitter.</p>
---

{% wistia_embed hashed_id: 430tdjcty4 %}

## Twitter

Twitter is, frankly, the bee's knees. We've developed a bunch of cool functionality
around Twitter, like our Twitter Follow Lab and Sharing to Twitter functionality. 
Read more about that and more on the [Twitter Integration page]({{ '/twitter' | post_url }}).

## Facebook

{{ "Many of the features of Customize (such as the Turnstile, and Call to Action) do not work inline in Facebook. Sorry about that!" | note }}

Facebook embeds show up right in your news feed.  Your followers can click to play the video in the feed, or click through the link to watch the video in your Wistia account.

{% post_image hashed_id: '9326ce283fa05001610a85440a19531ad3230c7e', class: 'center' %}

First, open the media in your account and make sure it has a description! If it
doesn't currently have a description, hover under the title and select *Add a
Description* to get started.

{% post_image hashed_id: '117bb6cb93218c3779224bfc8ab5b3a4ca0e7591', class: 'center' %}

Select *Embed & Share* under the <span class="action_menu">Video Actions</span> menu.
In the *Embed & Share* window, select the *Social Sharing* option at the top.

{% post_image hashed_id: '7834d139a11867813ded24d2bc75c67597d7754f', class: 'center' %}

Copy the URL from the *Link* box, and enter it in Facebook's *Status Update*. 
The video thumbnail and description will be pulled in and ready to share!

{% post_image hashed_id: 'b6ac0cffb05da0566bff1f37c25f147f72c3f024', class: 'center' %}

Once you share the update, viewers can watch the video inline in the Facebook
news feed.

## Posting to Facebook from your website

{{ "Be aware, this is technical territory!" | note }}

Maybe you want to post to Facebook, but you want it to point back to your website?
If so, you can use the OpenGraph tags we produce for 'public' videos to accomplish 
this. Facebook uses the OpenGraph tags to specify which media/content from the 
website should be posted.

To do this, first embed the video on your website.  Make sure your Project is
*unlocked*, and add a description (descriptions are covered in the video above).

View the source on the media page, and look for all of the tags of the form

<code class="full_width">&lt;meta content="..." property='og:xxxxxx'&gt;</code>
(there should be ~8 of these tags)

Here's a screenshot:

{% post_image hashed_id: 'df4112d8d14f431d235cc4d4d8033a3fc528dbd1', class: 'center' %}

These are the OpenGraph tags we have created for your video. You will need to 
change the og:url tag to be the URL of the page where you have embedded the 
video (and are putting the OpenGraph tags).

Add these to the `head` of your website, and then share the URL of that page on Facebook.

You're good to go!
