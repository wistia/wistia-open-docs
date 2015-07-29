---
title: Using Wistia and Pardot Together
layout: post
description: How to use Wistia and Pardot together for super-powered video marketing
post_intro: <p>Use <a href="http://pardot.com">Pardot</a>? Use Wistia? Want to meld them together to execute a video-driven marketing automation strategy the likes of which this world has never seen? You're in the right place, friend.</p>
footer: 'for_intermediates'
category: integrations
---

{% post_image hashed_id: '98d1f2e9c8025c5f2424aefff8dd52f8a2741bcf', class: 'integration_logo' %}

With the Wistia-Pardot integration you can:

- Generate new leads from your videos
- See how prospects are watching all the videos on your website
- Score leads based on video viewing data
- Use video and email together in marketing harmony 💕

Sound fun? That's because it **_is_** fun. And it's easy! This page will give you everything you need to get started and be successful.

## Get Set Up

First things first, let's connect the puzzle pieces. You'll need:

- A [Pardot](http://pardot.com) account
- A Wistia account on the [Enterprise](http://wistia.com/pricing) plan ('cause you're a rather enterprising individual)
- Gumption

If you have all of that, here's how to get started:

**1. Add your Pardot account in Wistia**

In Wistia, go to the Email Provider section of your account settings. Enter the credentials you use to login to Pardot, along with your Pardot API User Key (which you can find in [your Pardot settings](https://pi.pardot.com/account)).

Click that blue "Connect Pardot" button, and you're halfway set up! Proceed to step 2 👇

**2. Enable the Wistia Connector in Pardot**

In your Pardot account, click the Admin menu at the top of the page, and choose the Connector section. From there, click Add Connector, and choose Wistia under Video Connectors. That'll bring you to a form quite like this:

{% post_image hashed_id: 'ebbf9841c910fea77bb16b74ea03430d95213ef1', class: 'center' %}

Check the "Show Video Play Heatmaps" box, and then fill in your API Password and Public Token from Wistia. [Here's a guide on how to find those]({{ '/account-setup#api_access' | post_url }}). Then save the connector, and do <a href="//fast.wistia.net/embed/iframe/0ojtk98of1?popover=true" class="wistia-popover[height=480,playerColor=78a8eb,width=640]">the "My Wistia and Pardot accounts are connected at last!" dance</a>. Read on for details about what you can do with your newfound powers.

## Collect contact information with Turnstile

With [Turnstile]({{ '/turnstile' | post_url }}), you can ask people to enter their names and email addresses at any point in your videos. And now that you have Wistia connected to Pardot, that information will automatically create a new Prospect record in your Pardot Account. Woo!

_"Hold on, Wistia. What if the person is already an existing visitor in Pardot"_ you ask? Good question! In that case, we'll convert the existing record in Pardot from an anonymous Visitor to a known Prospect.

Here's an example Turnstile on one of the videos made here at Wistia HQ:

{% wistia_embed hashed_id: 5jbejtwgwi %}

If that was _your_ video, you'd be generating new leads right this very moment. So go ahead and [embed your own video]({{ '/embedding' | post_url }}) to get started! You can find Turnstile in the [Timeline Actions]({{ '/customizing-your-video#timeline_actions' | post_url }}) section of the Customize panel.

{{ "Here's a handy blog post by Ezra about how to use Turnstile most effectively: <a href='http://wistia.com/blog/collect-more-emails-with-video'>Collect More Emails With Video</a>" | tip }}

## Track video-related events from your website in Pardot

With the [Wistia Connector enabled in Pardot](#get_set_up), data about how every person watches the videos on your website will feed directly into your Pardot account.

Know that _Email_ report in Pardot, where you can track the performance of all your email campaigns? Well, now you've got a report _just like that one_, but for all of your embedded Wistia videos.

Behold, the Video report:

{% post_image hashed_id: 'b9fd61e0f1befe34ec2fc3332ebff37f957d2b65', class: 'center' %}

In the Video report you can see how your videos are performing across the board, and drill down to measure the activity on each one. For each video, you can see every prospect or visitor that watched it:

{% post_image hashed_id: 'fd465c2e6e5abddfdffc0f243ba4fcbbc8b12656', class: 'center' %}

Then for each prospect and visitor, you can see a full record of which videos they've watched, and even how _much_ of the video they watched, down to the second:

{% post_image hashed_id: '6edff3dd501f556bdbb8c4447526d65b019eb9d7', class: 'center' %}

## Using video events to score leads
Want to adjust prospect scores based on video data? Me too. Let's do this.

First, check out Pardot's overall guide on setting up [Custom Scoring](http://www.pardot.com/faqs/administration/custom-scoring-rules/). Now with the Wistia-Pardot integration set up, you're able to use three specific video-related events to adjust a Prospect's score:

- **Video Play**: Simply, the person began playing a video.
- **Video Watched 75%+**: The person watched _at least_ 75% of the video.
- **Video Conversion**: The person entered their contact information into [Turnstile]({{ '/turnstile' | post_url }}) on the video.

Score!

## Add Video to your email campaigns

Email is a great way to nurture leads and stay engaged with your growing audience. Then add a little video to the mix, stir in some tracking & analytics, and baby, you got a stew goin'!

{% post_image hashed_id: '62256023e4a148d0e684a90646628bdb0a3396f6', width: 300, class: 'float_left' %}

To add a video thumbnail link to an email campaign, just follow this quick process:

1. Open the video's page in your Wistia account.
2. Click on the Video Actions menu, and choose Embed & Share.
3. On the Link In Email Campaign tab, select Pardot as your email provider.
4. Adjust the thumbnail image size and choose the URL where you want people to watch the video. It can be the video's page in your Wistia account, or anywhere you have it embedded.
5. Copy the Email Merge Tag from Wistia and paste it into your email in Pardot.
6. Profit!

Fun fact: When people receive your email and click through to watch the video, their email addresses will automatically pass through to the Wistia stats.

[Learn more about video+email marketing with Wistia]({{ '/email-marketing' post_url }}).

{{ "<a href='http://wistia.com/library/using-video-in-email#templates'>Get some fancy (and free) video-centric email design templates</a>." | tip }}.

## Troubleshooting

Having trouble? Shoot! Let's troubleshoot. Here are some common issues, and how to fix them:

### Wistia video views not tracking in Pardot

First things first, it's important to know that _only_ videos embedded on your website will show activity in your Pardot account. When a person watches a video from the video's page in your Wistia account, that activity will not appear in Pardot.

If the video _is_ embedded on your website but it's still not showing activity in Pardot, make sure that you have [Pardot's tracking code](http://www.pardot.com/faqs/campaigns/tracking-code/) on the page, and that your Wistia embed code has the `wistia_embed` class (as it should by default).

Still having trouble? Our Customer Happiness team is here to help: **[Contact Us](http://wistia.com/support/contact)**.


<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script>
<script>
  wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
    iframe.wistiaApi.bind("end", function() {
      wistiaJQuery.fancybox.close();
    });
  });
</script>
