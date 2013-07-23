---
title: Use Wistia With a MailChimp Email Campaign
layout: post
description: Have a MailChimp Campaign? Have a Wistia account? Combine their powers for all sorts of awesome.
footer: 'for_intermediates'
category: integrations
---

{% post_image hashed_id: '79ba6d71f2de6aa71d02bcecaf2fe823ea09ec02', width: 200, class: 'intro_image float_right' %}

[MailChimp](http://mailchimp.com) is our favorite email marketing system.  When we need to send an email to our wonderful customers, and don't want it to get stuck in spam filters, we use MailChimp.

They also provide some pretty neat tools for discovering how your email marketing funnel works.  For our Wistia users, we wanted to create a seamless experience where they could send tailored email campaigns that included Wistia videos, and then track how their contacts interacted with the video itself.

So let's dive in to how to create an email campaign with Wistia &amp; MailChimp!

## Prework

{% post_image hashed_id: '037f60ea97dd566d4204a86bcf1efd5a76a71986', width: 320, class: 'float_right' %}

The first step is choosing the video you'd like to show off in your campaign.

Start by embedding the video on the landing page you'll be using (or, if you're having it point to your Wistia Media Page, you're all set).  Follow the embedding steps if you have any trouble: [Embedding Your Video]({{ '/embedding' | post_url }}).

## Create Your Merge Tag

{% post_image hashed_id: 'a9ea3abad60147a0d1b14f7e31296b34817d33ff', width: 320, class: 'float_right' %}

Next, select <span class="code">Email Marketing</span> from under the Media Actions menu.

In the Email Marketing window, choose "MailChimp" from the Email provider drop-down (it should be first, because we &lt;3 them).  Then tweak your settings for thumbnail size (how big it will appear in the email) and landing page (once they click on the thumbnail, where should they go? - hint: where the video is!).

{{ "Our thumbnail default size of 450px is the same as MailChimp and looks great in most email software.  If you'd like to test a different size, use 'pop-up preview' in MailChimp after pasting in a revised Merge Tag." | tip }}

{{ "If you haven't set this as a 'public' project, you will be prompted to do that before embedding.  You need to be able to share the media by link in order to use email marketing." | note }}

## Paste Your Merge Tag Into MailChimp

{% post_image hashed_id: '40571d43323b5683c89326dfdef60ea9e40b6e63', width: 320, class: 'float_right' %}

After getting the thumbnail and link settings working the way you'd like, copy the "Video Merge Tag" code, and paste it into the body of your MailChimp email.

**Tip:** I normally send myself a test, to make sure everything is working correctly. Careful, though, if you're viewing the video when you're logged in it won't pass through the e-mail quite right (your login will override it).

## Start Tracking Viewing!

{% post_image hashed_id: '90a2b39b045a310c20ca4efe9016e0e15364f0fc', width: 320, class: 'float_right' %}

Once your viewers receive their emails, they will start clicking your video!

The great part about MailChimp and Wistia together is that the merge tag has your recipient's email address built in - so when tracking the stats you can see exactly which emails watched the video, and up to the second how much they watched.  Now how cool is that? Make sure you check in the "Public and Embed Stats" for the viewing stats.

{% post_image hashed_id: '3ba4d0fc4e006abdda10a46bd8ed061a07211b21', class: 'center' %}

{{ "If you would like to keep the email campaign separate from the other embedded viewings of the video, set up a separate project specifically for the email version of the video." | tip }}

## Style Tips

### Center Your MC Embed

Something we want to do frequently, but isn't always straight-forward, is *centering
our thumbnail in a MailChimp campaign*. Here's the skinny:

* Copy out your MailChimp merge tag - and take special note of the `width` (you
  might have it set up as the default, `450px`)
* Select the `html` editing mode in MailChimp - I always get my campaign
  totally laid out with a placeholder for the thumbnail image - then I go back
  and add it.
* Before I paste in the merge tag, I create a `<div>` tag to wrap it in, like
  this:

{% codeblock mailchimp_merge_tag.html %}
<div style="width: 450px; margin: 0 auto;">
  *|WISTIA:[$vid=w18s9azjov,$max_width=450,$watch_url=http://jeff.wistia.com/medias/w18s9azjov,$title=N,$border=N,$trim_border=N,$play_button_color=636155e0]|*
</div>
{% endcodeblock %}

Note, I set the following styles on the div:

* `width` is set to the width of your merge tag.
* `margin` is set to `0` (vertically) and `auto` (horizontally). This will
  center the thumbnail.

Give this a shot with your next MailChimp merge tag embed!
