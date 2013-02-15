---
layout: post
title: Wistia and Social Sharing
category: Embedding
description: Want to get social with your Wistia videos? We make it simple to share and track your videos on your favorite social media sites, such as Facebook and Twitter.
post_intro: <p>Social Media can drive some serious ROI if done right.  Vehicles like Facebook and Twitter can be used to spread a business message effectively, especially if delivered in an easy to consume and share way.  The best way to do that is with video - it's perfect for social media attention spans, so it tends to 'travel' better than blocks of text.</p><p>Now that you've got your video uploaded to Wistia, how do you share it and track the performance on Social Media sites?  This tutorial will help.  The two services we're focused on here are Facebook and Twitter.</p>
---

{% embedly http://home.wistia.com/medias/d4df1638dd %}

## Twitter

<div class="post_image" style="margin: 0 20px; float:right; border:none;"><img src="http://embed.wistia.com/deliveries/3a67076d7972f84eebc61d1eb890300e6850e9c3.png" alt="tweetie" /></div>

Twitter is, frankly, the bee's knees. We've developed a bunch of cool functionality
around Twitter, which we expand in the [Twitter Doc page]({ '/twitter' | post_url }).

## Facebook

<div class="post_image" style="margin: 0 20px; float:right;border:none;"><img src="http://embed.wistia.com/deliveries/d135791934d06deb1e7e5d5894e71a12019ecad4.png" alt="facebook_logo_small" /></div>

Facebook embeds show up right in your news feed.  Your followers can click to play the video in the feed, or click through the link to watch the video in your Wistia account.

To embed your video into Facebook:

*  In your account, open up the video you'd like to embed.
*  Select "Add Description" under the <span class="action_menu">Media Actions</span> menu.  This description will be showing up in the Facebook news feed.
*  Back under the <span class="action_menu">Media Actions</span> menu, select “share by link”.
*  Copy the share link, paste it into your Facebook status box and click “share”.
*  Your friends will be able to see the video in their News Feed, and even play it within the Feed - how neat is that!?

{% post_image hashed_id: '27e43f133e7e090c2d698413ccadf2df1451ecb1', class: 'center' %}

### How it looks

{% post_image hashed_id: '1901fdc9b3c4eb617604817f88beb5028c72ae92', class: 'center' %}

## Posting to Facebook from your website

Maybe you want to post to Facebook, but you want it to point back to your website?  If so, you can use the OpenGraph tags we produce for 'public' videos to accomplish this. Facebook uses the OpenGraph tags to specify which media/content from the website should be posted.

To do this, first embed the video on your website.  Next, make the Project your video is contained in a "Public" project, and add a description (as detailed in the video above).

View the source on the media page, and look for all of the tags of the form

<span class="code">&lt;meta content="..." property='og:xxxxxx'&gt;</span> (there should be ~8 of these tags)

These are the OpenGraph tags we have created for your video! You will need to change the og:url tag to be the URL of the page where you have embedded the video (and are putting the OpenGraph tags).

Add these to the <span class="code">&lt;head&gt;</span> of your external website, and then share the URL of that page on Facebook.

You're good to go!




