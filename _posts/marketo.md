---
layout: post
title: The Wistia-Marketo Integration
description: Wistia and Marketo go together like peanut butter and jelly -- like Sherlock and Watson! Want to get in on the fun? Here's our guide to getting the Wistia-Marketo integration working for you.
post_intro: <p>Wistia and Marketo go together like peanut butter and jelly -- like Sherlock and Watson, like <a href="//fast.wistia.net/embed/iframe/4n068wv4j6?popover=true" class="wistia-popover[height=405,playerColor=7b796a,width=720]">Meredith and pugs</a>! Want to get in on the fun? Here's our guide to getting the Wistia-Marketo integration working for you.</p>
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

To get the Wistia-Marketo integration working, you need to be on the Wistia Enterprise plan, have [Turnstile]({{ '/turnstile' | post_url }}) configured, and have a video embedded on your website with [Marketo's Munchkin tracking script](http://developers.marketo.com/documentation/websites/lead-tracking-munchkin-js/) enabled.

Does that sound like you? Well then, data about how people are watching your videos is already flowing from Wistia into your Marketo account. Go look!

If that _doesn't_ sound like you yet, and you're feeling enterprisey today <a href="//fast.wistia.net/embed/iframe/3ipzw811en?popover=true" class="wistia-popover[height=480,playerColor=7b796a,width=640]">🚀</a>, get on [the Enterprise plan](http://wistia.com/pricing).

After choosing the Enterprise plan, you'll need to configure Turnstile to pass leads from Wistia into Marketo. Just follow these quick steps:

1. In your Wistia account, open the Account menu and click on Settings.
2. Switch to the Data Integrations tab.
3. Enter your credentials for Marketo.
4. Connect!
5. Call an old friend and catch up. It's been too long, hasn't it?

Congrats, you're all set up!

{% post_image hashed_id: "dafaa71a97abddfbe5c41fbf6749e7a214429169", class: 'center' %}

{{ "If for one reason or another you're <em>not</em> set up after following the steps above, <a href='http://wistia.com/support/contact'>contact us</a> and we'll help you out." | note }}

Want to learn how to put your fancy new Wistia-Marketo integration to work? The sections that follow contain the information you seek.

## Collect Leads with Turnstile

Remember [that time you configured Turnstile to connect to your Marketo account](#get_set_up)? Well now when people enter their names and email addresses (or just email addresses, if you'd prefer) into Turnstile, they'll automatically get passed from Wistia to Marketo as new leads with the lead source set to "Wistia Video – (name of the video here)". Here's what Turnstile looks like:

{% wistia_embed hashed_id: 06rv6jh26m %}

So that video was just an example, but if that was _your_ video, you'd probably have a brand new lead right about now. That would be cool.

"But Wistia," you ask, "what if that person was already an identified lead in my Marketo account?" Glad you asked. In that case the lead source will remain untouched, like a pristine wilderness.

**Fun fact:** All of a person's video viewing activity from _before_ they entered their information into Turnstile will be associated with their lead record, so you can see exactly what the path to conversion was in [the lead's Activity Log in Marketo](https://docs.marketo.com/display/public/DOCS/Locate+the+Activity+Log+for+a+Lead).

**Yet another fun fact:** Their historical viewing data will live in Wistia too! Anytime you get a new lead through Turnstile, the person's info will appear in right in your Wistia stats along all their viewing activity – even from before they used Turnstile.

To get started with Turnstile, go to a video page in your Wistia account and open the
[Timeline Actions]({{ '/customizing-your-video#timeline_actions' | post_url }})
section of the Customize panel.

## Setting Up Marketing Automation Based on Video Viewing Data

Wouldn't it be cool if when a person watches at least 50% of a certain video on your website, you could automatically send them an email about that product a few days later? Or if a person entered their email address into Turnstile, you could have a salesperson get notified to follow up?

"Why yes, yes that would be quite cool indeed," you say? Phew! Good thing we built this integration.

{{ "Before you can trigger automation in Marketo based on a Wistia video event on your website, that event will need to occur at least once. So before anything else, go onto your website and do the thing you want to use as a trigger in the embedded video (like watch 50% of the video, or click an Annotation Link) – just like regular visitor to your website would. Then Marketo will let you select it as a trigger." | note }}

Have you read the super important note above and done the thing you'd like to use as a trigger? Alrighty then, carry on! Here's how to set the automation up:

1. Head to the Marketing Activities section in your Marketo account.
2. Create a new Smart Campaign. Choose a folder, and give the campaign a name. A description too, if you'd like.
3. In the campaign screen, go to the Triggers section in the panel on the right.
4. Now here's where it gets a _little_ weird, but hey, that's what this tutorial is here for. All of events related to how people interact with your videos are recorded as "Visits Web Page" triggers in Marketo, even though they don't have much to do with visiting a web page (beyond the fact that the video is embedded on one). The details of the type of event will be in the Trigger's _Detail_ description. So, find the Visits Web Page trigger, and drag that little guy into the "Drag triggers and filters from the right" area.
  {% post_image hashed_id: 'b13848f78c7bdffb0bb590caf6e8254efbdd927b', class: 'center' %}
5. Now it's time to define the specific video event trigger. If you wanted to run automation when a person watches 75% of a video called "<a href="//fast.wistia.net/embed/iframe/nto1tvx7mz?popover=true" class="wistia-popover[height=360,playerColor=1789ce,width=640]">Making French Toast at Wistia</a>", you'd tell Marketo to set the trigger to _Web Page --> is --> Wistia Video: "Making French Toast at Wistia" 75% Watched_.
  {% post_image hashed_id: 'd64c0b0cfa51632198e2380c43ec6faef28f0371', class: 'center' %}
6. Once you've picked the right event for the right video, move onto the Flow step. That's all Marketo's domain, so **[check out the Marketo documentation](https://docs.marketo.com/display/public/DOCS/Add+a+Flow+Step+to+a+Smart+Campaign)** for details.

There are a bunch of other things you can automate too, like:

- [Adding the lead to a list](https://docs.marketo.com/display/public/DOCS/Add+to+List)
- [Changing the lead score](https://docs.marketo.com/display/public/DOCS/Change+Score)
- [Sending an alert to the lead owner](https://docs.marketo.com/display/public/DOCS/Send+Alert)

Bravo, Marketo. 👏


## Add Video Thumbnail Links to Your Emails

Email is a wonderful way to engage with your customers (and future-customers)... but email _with video_ is an even <a href="http://i.imgur.com/xVW3EK8.gif" class="wistia-popover[height=250,playerColor=78a8eb,width=500]">wonderfuller</a> way.

{% post_image hashed_id: '8083525cca03bbeba8a7b23eee82063171c00726', width: 300, class: 'float_left' %}

To add a video thumbnail link to an email campaign, just follow this quick process:

1. Open the video's page in your Wistia account.
2. Click on the Video Actions menu, and choose Embed & Share.
3. On the Link In Email Campaign tab, select Marketo as your email provider.
4. Adjust the thumbnail image size and choose the URL where you want people to watch the video. It can be the video's page in your Wistia account, or anywhere you have it embedded.
5. Copy the Email Merge Tag from Wistia and [paste it into your email in Marketo](https://docs.marketo.com/display/public/DOCS/Edit+an+Email%27s+HTML).
6. Profit.

Fun fact: When people receive your email and click through to watch the video, their email addresses will automatically pass through to your Wistia stats.

[Learn more about video+email marketing with Wistia]({{ '/email-marketing' | post_url }}).

{{ "<a href='http://wistia.com/library/using-video-in-email#templates'>Get some fancy (and free) video-centric email design templates</a>." | tip }}.

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script>
<script>
  wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
    iframe.wistiaApi.bind("end", function() {
      wistiaJQuery.fancybox.close();
    });
  });
</script>
