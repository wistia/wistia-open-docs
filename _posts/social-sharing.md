---
layout: post
title: Wistia and Social Sharing
category: Embed & Share
description: Want to get social with your Wistia videos? We make it simple to share and track your videos on your favorite social media sites, such as Facebook and Twitter.
post_intro: <p>Social Media can drive some serious ROI if done right.  Vehicles like Facebook and Twitter can be used to spread a business message effectively, especially if delivered in an easy to consume and share way.  The best way to do that is with video - it's perfect for social media attention spans, so it tends to 'travel' better than blocks of text.</p><p>Now that you've got your video uploaded to Wistia, how do you share it and track the performance on Social Media sites?  This tutorial will help.  The two services we're focused on here are Facebook and Twitter.</p>
---

{% wistia_embed hashed_id: 430tdjcty4 %}

## Twitter

Twitter is, frankly, the bee's knees. We've developed a bunch of cool functionality
around Twitter, like our [Twitter Follow Lab](http://wistia.com/labs/twitter-follows/)
and Sharing to Twitter functionality.

### Sharing Wistia Content from Your Account With Twitter Cards

Twitter's Twitter Card functionality is pretty slick - you can now play media from
accepted sites inside of the Twitter stream. Super useful, as it doesn't require
leaving the Twitter stream to view your video. Well guess who got Twitter Card
approval? That's right. We did!

{% post_image hashed_id: 'dc366333466662150fb1bf87b32270f958c4d34a', class: 'center' %}

So, you're asking, how can I take advantage of this awesome-ness?  Here we go:

Open up the media in your account that you want to share in your Twitter feed.
From the <span class="action_menu">Video Actions</span> menu, select *Embed & Share*.

{% post_image hashed_id: 'c184782eab1ae24589872575580f084bd1de6bca', class: 'center' %}

In the *Embed & Share* window, select the *Social Sharing* area at the top.
If you don't have a description for your video yet, we will include a line
recommending you do so. Descriptions show up on the Twitter cards, which makes
them pretty useful for setting context for your viewers and piquing their interest.

{{ "If your Project is currently set to Locked, you will be prompted to switch it to Unlocked. This means viewers who click through the link will be able to watch your video." | note }}

{% post_image hashed_id: '26530356cf2434c93116210cbda12187bd44e603', class: 'center' %}

After you click the *Tweet* button, the Twitter modal will appear (you may
be asked to login). The default tweet text is the name of the media and the
description.

Once you confirm that you want to tweet the link out, check your feed! It's like
Christmas morning, except instead of presents you get your video content in your
Twitter feed.

{% post_image hashed_id: '0e7c6be2dfc7eaadda1c3fee7bd68b902714b4e0', class: 'center' %}

### Twitter Handle

Want to make sure your videos always get the Twitter credit they deserve? Of course you do!

If you'd like to associate your Wistia account with your Twitter handle, just head into
**Account Settings** and then click **Account**. Heads up, you'll need to be logged in as
the Account Owner to pull this off!

Scroll to the Twitter Handle heading and enter your username.

{% post_image hashed_id: '947b6123f5eb307133a58c586f8b286ce9392461', class: 'center' %}

Make sure you scroll all the way down to the bottom of the Account page and hit **Save Settings**.

Now any time anyone tweets one of Bobby's videos, his Twitter account will be referenced.
More Twitter follows for Bobby! Yay!

{% post_image hashed_id: '84a23b87f9d693d5d56745ca8d60eb3880b808e7', class: 'center' %}

## Facebook

{{ "Unfortunately, many of the features of Customize (such as Turnstile, Call to Action, and Captions) do not work inline in Facebook." | note }}

Facebook embeds show up right in your news feed.  Your followers can click to play the
video in the feed, or click through the link to watch the video in your Wistia account.

{% post_image hashed_id: '9326ce283fa05001610a85440a19531ad3230c7e', class: 'center' %}

First, open the media in your account and make sure it has a description! If it
doesn't currently have a description, hover under the title and select **Add a Description**
to get started.

{% post_image hashed_id: '117bb6cb93218c3779224bfc8ab5b3a4ca0e7591', class: 'center' %}

Select *Embed & Share* under the <span class="action_menu">Video Actions</span> menu.
In the *Embed & Share* window, select the *Social Sharing* option at the top.

{% post_image hashed_id: '7834d139a11867813ded24d2bc75c67597d7754f', class: 'center' %}

Copy the URL from the *Link* box, and enter it in Facebook's *Status Update*.
The video thumbnail and description will be pulled in and ready to share!

{% post_image hashed_id: 'b6ac0cffb05da0566bff1f37c25f147f72c3f024', class: 'center' %}

Once you share the update, viewers can watch the video inline in the Facebook
news feed.

{{ "Wistia videos won't play inline in the Facebook mobile app; they'll open in a web page in a new panel." | note }}

### Posting to Facebook from Your Website

{{ "Be aware, this is technical territory!" | alert }}

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

## Link to a Specific Time

Want your video to start a specific time? Leo's here to help!

{% wistia_embed hashed_id: 25hefujn0n?wtime=7s %}

To share your video at a specific time navigate to the *Embed and Share* modal under
the <span class="action_menu">Video Actions</span> menu. In the *Embed & Share* window,
select the *Social Sharing* option at the top. Under the URL you'll see an option to
"Link to a specific time." Clicking the box will automatically link to wherever you've
paused the video. You can also manually edit the time stamp.
