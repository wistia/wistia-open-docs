---
title: Using Wistia and Pardot Together
layout: post
description: How to use Wistia and Pardot together for superpowered video marketing
post_intro: Use <a href="http://pardot.com">Pardot</a>? Use Wistia? Want to meld them together to execute a video-driven marketing automation strategy the likes of which this world has never seen? You're in the right place, friend.
footer: 'for_intermediates'
category: integrations
---

With the Wistia-Pardot integration you can:

- Generate leads from your videos
- See how prospects are watching them
- Drive automated workflows based on video activity data
- Use video and email together in marketing harmony 💕

Sound fun? That's because it _is_ fun. And it's easy! This page will give you everything you need to get started and be successful.

## Get Set Up

First things first, let's connect the puzzle pieces.

What you'll need:

- A [Pardot](http://pardot.com) account
- A Wistia account on the [Enterprise](http://wistia.com/pricing) plan ('cause you're a rather enterprising individual)

**1. Add your Pardot account in Wistia**

In Wistia, go to the Integrations sections of your account settings [NOTE TO SELF - UPDATE THIS TO ALIGN WITH HOW THE HECK THE ACCOUNT SETTINGS PAGE IS CHANGING]. Enter the credentials you use to login to Pardot, along with your Pardot API User Key (which you can find in [your Pardot settings](https://pi.pardot.com/account)).

Click that blue "Connect Pardot" button, and you're halfway set up! Proceed to step 2 👇

**2. Add your _Wistia_ account in _Pardot_**

In your Pardot account, click the Admin menu at the top of the page, and choose the Connector section. From there, click Add Connector, and choose Wistia under Video Connectors. That'll bring you to a form quite like this:

{% post_image hashed_id: 'ebbf9841c910fea77bb16b74ea03430d95213ef1', class: 'center' %}

Check the "Show Video Play Heatmaps" box, and then fill in your API Password and Public Token from Wistia. [Here's a guide on how to find those]({{ '/account-setup#api_access' | post_url }}). Then click *Create Connector*, and do <a href="//fast.wistia.net/embed/iframe/0ojtk98of1?popover=true" class="wistia-popover[height=480,playerColor=78a8eb,width=640]">the "My Wistia and Pardot accounts are connected at last!" dance</a>. Read on for details about what you can do with your newfound powers.

## Collect contact information with Turnstile

With just a Wistia account, you've always been able to generate new leads and identify existing viewers... but now that you have the Wistia+Pardot integration set up, your life just got way easier.

Now when a person enters their email address (or _name_ and email address) into Turnstile, that information will automatically go into Pardot. Cool.

## Track video-related events from your website in Pardot

If you have a video embedded in your website, you can see in Pardot...

Just be sure that you have Pardot's tracking code on the page, and that your Wistia embed code has the `wistia_embed` class (as it should by default).

## Add Video to your email campaigns

Get some free & fancy email design templates


## Automagically send the right emails to the right people


<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script>
<script>
  wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
    iframe.wistiaApi.bind("end", function() {
      wistiaJQuery.fancybox.close();
    });
  });
</script>
