---
layout: post
title: The Wistia-Marketo Integration
description: Wistia and Marketo go together like peanut butter and jelly -- like Sherlock and Watson! Want to get in on the fun? Here's our guide to getting the Wistia-Marketo integration working for you.
post_intro: <p>Wistia and Marketo go together like peanut butter and jelly -- like Sherlock and Watson, like <a href="//fast.wistia.net/embed/iframe/4n068wv4j6?popover=true" class="wistia-popover[height=480,playerColor=78a8eb,width=640]">Meredith and pugs</a>! Want to get in on the fun? Here's our guide to getting the Wistia-Marketo integration working for you.</p>
category: integrations
---

{% post_image hashed_id: 'afa099a230c97dc5b1f7221df7fa715278c226f2', class: 'integration_logo' %}

With the Wistia-Marketo integration you can:

- Generate new leads with [Turnstile]({{ '/turnstile' | post_url }})
- Score leads based on video interaction
- Pipe leads into Smart Lists based on viewing data
- Send emails with integrated video links
- Be a video marketing superstar

## Get Set Up

To set up _most_ of the Wistia-Marketo integration, you only need to do, well... pretty much nothing at all. If you're on the Wistia Enterprise plan and have a video embedded on your website with [Marketo's Munchkin tracking script](http://developers.marketo.com/documentation/websites/lead-tracking-munchkin-js/) enabled, then data about how people are watching your videos is already flowing from Wistia into your Marketo account. Go look! Or, get on [the Enterprise plan](http://wistia.com/pricing) if you're feeling enterprisey today. <a href="//fast.wistia.net/embed/iframe/3ipzw811en?popover=true" class="wistia-popover[height=480,playerColor=7b796a,width=640]">🚀</a>

Now, if you want to use Turnstile with Marketo (which we'd definitely _not_ recommend if you _don't_ want more leads), just follow these quick steps:

1. In your Wistia account, open the Account menu and click on Settings.
2. Switch to the Email Integrations tab.
3. Choose Marketo, and click the Go To Configuration Step button.
4. Follow those handy on-screen instructions.
5. Call an old friend and catch up. It's been too long, hasn't it?

Congrats, you're all set up!

{{ "If for one reason or another you're <em>not</em> set up after following the steps above, <a href='http://wistia.com/support/contact'>contact us</a> and we'll help you out." | note }}

Want to learn how to put your fancy new Wistia-Marketo integration to work? The sections that follow contain the information you seek.

## Collect Leads with Turnstile

Remember [that time you configured Turnstile to connect to your Marketo account](#get_set_up)? Well now when people enter their names and email addresses (or just email addresses, if you'd prefer) into Turnstile, they'll automatically get passed from Wistia to Marketo as new leads with the lead source set to "Wistia Video – (name of the video here)". Here's what Turnstile looks like:

{% wistia_embed hashed_id: 06rv6jh26m %}

So that video was just an example, but if that was _your_ video, you'd probably have a brand new lead right about now. That would be cool.

"But Wistia," you ask, "what if that person was already an identified lead in my Marketo account?" Glad you asked. In that case the lead source will remain untouched, like a pristine wilderness.

**Fun fact:** All of the actions a person took on your website _before_ they entered their information into Turnstile will be associated with their lead record, so you can see exactly what the path to conversion was in [the lead's Activity Log in Marketo](https://docs.marketo.com/display/public/DOCS/Locate+the+Activity+Log+for+a+Lead).

**Yet another fun fact:** That data will live in Wistia too! Anytime you get a new lead through Turnstile, the person's info will appear in right in your Wistia stats along all their viewing activity – even from before they used Turnstile.

To get started with Turnstile, go to a video page in your Wistia account and open the
[Timeline Actions]({{ '/customizing-your-video#timeline_actions' | post_url }})
section of the Customize panel.

## Smart Lists

Not only will Wistia be able to track how much of a video was watched, but with
the Marketo Integration you'll be able to add leads to Smart Lists after a
viewer has:

- watched 25% of the video
- 50%
- 75%
- 100%
- clicked a link

Want a list that's just for leads who clicked to download the sales material?
Or want to nudge viewers who only watched 25% of the video? Set up a Smart List
and score leads based on Wistia analytics. You can even send alerts to Lead Owners
when viewers have taken specific actions with your Wistia videos. 🎉

## Activity Log

"But Wistia," you say, "what if a viewer filled out another Marketo form?" Fear
not, friend! The Wistia-Marketo Integration will automatically convert previous
visitors into new leads.


## Add Video Thumbnail Links to Your Emails

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script>
<script>
  wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
    iframe.wistiaApi.bind("end", function() {
      wistiaJQuery.fancybox.close();
    });
  });
</script>
