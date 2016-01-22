---
title: Integrations Index
layout: post
category: integrations
description: Wistia plays well with lots of 3rd party services. See some of the best, and how to use them, in this article.
post_intro: <p>As we update our embedding processes and APIs, Wistia will get better and better at integrating with other top-notch services. On this page, we'll do our best to keep track of places where Wistia works out-of-the-box for embedding, and also where deeper integrations have been built out by our awesome friends.</p><p>If you currently use a service that would work well with Wistia, submit your request using <a href="https://docs.google.com/a/wistia.com/forms/d/1x2Z2KUdxXKhPYpfzfQJLVq7upAnhryBWZt2Y4IUPiTs/viewform" target="_blank">this form</a>.</p>
footer: 'for_intermediates'
---

{{ "Wistia Turnstile, email marketing, and marketing automation integrations are available on the Pro and Enterprise plans. Check out our [pricing page](http://wistia.com/pricing) for more information." | note }}

## Turnstile Integrations

Using [Turnstile]({{ '/turnstile' | post_url }}) to collect viewer emails? Take
it one step further and pass them into your email service provider! You can
configure Turnstile with these platforms:

* [Act-On](https://www.act-on.com/apexpartners/wistia/)
* [ActiveCampaign](http://www.activecampaign.com/apps/wistia)
* [AWeber](http://www.aweber.com/)
* [Campaign Monitor](https://www.campaignmonitor.com/integrations/wistia)
* [Constant Contact](http://www.constantcontact.com/)
* [Emma](http://myemma.com/email-marketing-integrations/cms-email-integration/wistia)
* [GetResponse](http://www.getresponse.com/)
* [HubSpot]({{ '/hubspot#turnstile' | post_url }})
* [Infusionsoft](http://www.infusionsoft.com)
* [MailChimp]({{ '/mailchimp#the_mailchimpwistia_integration' | post_url }})
* [Marketo]({{ '/marketo#collect_leads_with_turnstile' | post_url }})
* [ONTRAPORT](http://support.ontraport.com/entries/23134369-Wistia-Integration)
* [Pardot]({{ '/pardot#collect_contact_information_with_turnstile' | post_url }})

To set up your Turnstile integration, you'll need to be an **Account Owner**.
Navigate to **Account > Settings** and choose **Integrations** from under
the **Advanced** header in the sidebar.

Or, you can be extra cool and just
[click here](https://my.wistia.com/account/integrations). 😎

{% post_image hashed_id: 'c2f26f8bf16e4fff71424ba6461643fe6623eb20', class: 'float_left' %}

Then just select your desired Turnstile integration and follow the instructions
to connect.

Each Turnstile integration requires different information (username, Client ID,
password, Public or Private API key), so make sure to check out the integration
in your account for further instructions.

Check out the [Turnstile]({{ '/turnstile#use_your_email_provider_with_turnstile' | post_url }})
and [Email Marketing]({{ '/email-marketing' | post_url }}) pages for more
information on getting the most out of your integration.

## Link in Email Campaign Integrations

Our "Link in Email Campaign" feature makes it easy for you to include Wistia
video thumbnail links (or *email merge tags*) in your emails! See our
[Email Marketing page]({{ '/email-marketing' | post_url }}) to learn more about
it. Wistia supplies email merge tags for the following providers:

* [Accrisoft](http://www.accrisoft.com/)
* [ActiveCampaign](http://www.activecampaign.com/apps/wistia)
* [AWeber](http://www.aweber.com/)
* [BlueHornet](http://www.bluehornet.com/)
* [Campaign Monitor](https://www.campaignmonitor.com/integrations/wistia)
* [Constant Contact](http://www.constantcontact.com/)
* [dotmailer](http://www.dotmailer.com/)
* [Email Contact](http://www.emailcontact.com/)
* [Emma](http://myemma.com/)
* [GetResponse](http://www.getresponse.com/)
* [HubSpot]({{ '/hubspot#email_merge_tags' | post_url }})
* [iContact](https://www.icontact.com)
* [Infusionsoft](http://www.infusionsoft.com)
* [Lyris](http://lyris.com/)
* [Mad Mimi](https://madmimi.com/wistia)
* [MailChimp]({{ '/mailchimp#create_your_merge_tag' | post_url }})
* [Marketo]({{ '/marketo#add_video_thumbnail_links_to_your_emails' | post_url }})
* [ONTRAPORT](http://support.ontraport.com/entries/23134369-Wistia-Integration)
* [Pardot]({{ '/pardot#add_video_to_your_email_campaigns' | post_url }})
* [Sendible](http://sendible.com/)
* [VerticalResponse](http://www.verticalresponse.com/)
* [WhatCounts](http://www.whatcounts.com/)

_Don't use one of these email service providers? No sweat! Try out a generic email merge tag instead, by choosing **None** from the dropdown menu._

To access these email merge tags, navigate to the video you'd like to share, and
choose **Embed & Share** from the *Media Actions* menu. Choose the **Link in
Email Campaign** tab, and pick your email marketing provider from the drop-down
list.

Fun fact! If you've already integrated with Turnstile, Wistia will automatically
supply the email merge tag for your current integration setup. But it's always
good to double check before copying.

Copy that email merge tag and paste away. Check out the
[Email Marketing page]({{ '/email-marketing' | post_url }}) for more information.

## Marketing Automation Integrations

We've built advanced marketing automation integrations with
[HubSpot](http://hubspot.com), [Marketo](http://marketo.com), and
[Pardot](http://pardot.com). If you're on an
[Enterprise](http://wistia.com/pricing) plan, you'll be able to sync your leads'
viewing activity with these marketing automation platforms.

## HubSpot

{% post_image hashed_id: '1b11fe5536f67f70699d752ca1e7f11775dd5f32', width: 400, class: 'integration_logo' %}

Use the [Wistia-HubSpot integration](http://wistia.com/product/hubspot) to get
all of your HubSpot customer viewing data into the same spot for prime lead
scoring. From there you can build dynamic lists and build workflows around
viewer interactions.

Learn more about setup and best practices on our
[HubSpot help page]({{ '/hubspot' | post_url }}).

## Marketo

{% post_image hashed_id: '924dc35adcdb7a5cd9798dd31d6d5493ee9ed350', width: 400, class: 'integration_logo' %}

The [Wistia-Marketo integration](http://wistia.com/product/marketo) lets you
segment leads based on their viewing data, trigger Smart Lists from video
viewing events, and turn your videos into marketing automation powerhouses.

For detailed setup instructions, head over to the
[Marketo integration help page]({{ '/marketo' | post_url }}).

## Pardot

{% post_image hashed_id: 'ad8170872957e7aa3dcb8b214cb08ddbf78eb74e', width: 400, class: 'integration_logo' %}

Using the [Pardot Connector](http://wistia.com/product/pardot), you can
automatically pass Wistia analytics back to your Pardot prospect data. You can
also set up drip campaigns and score leads based on viewing data.

Read up on the [Pardot integration help page]({{ '/pardot' | post_url }}).

## Google Analytics

Wistia's Google Analytics integration makes it super easy to access your sweet
video viewing data in Google Analytics. 📈 We automatically publish some basic
video metrics to your GA account. Check out our
[help page]({{ '/google-analytics' | post_url }}) for more.

## CMS Integrations

On the lookout for a content management system that plays well with Wistia
embeds? Here's a good place to start!

* [Drupal](https://www.drupal.org/project/field_wistia) *(Note: Wistia embed codes have only been tested and verified through Drupal v6.)*
* [MotoCMS](http://www.motocms.com/)
* [Portfoliobox](https://www.portfoliobox.net/)
* [SharePoint](http://office.microsoft.com/en-us/office365-sharepoint-online-enterprise-help/embed-video-on-a-public-website-page-HA102828149.aspx)
* [Squarespace]({{ '/squarespace' | post_url }})
* [Weebly](http://kb.weebly.com/embed-audio-and-video.html)
* [Wix](https://www.wix.com/support/html5/the-wix-editor/more/kb/adding-html-code)
* [WordPress]({{ '/wordpress' | post_url }})

## Social Sharing

Head over to our [Social Sharing page]({{ '/social-sharing' | post_url }}) to
learn more about getting social with Wistia. We love:

* [Facebook]({{ '/social-sharing#facebook' | post_url }})
* [Twitter]({{ '/social-sharing#twitter' | post_url }})
* [Tumblr](http://tumblr.com)

## Other Services

We love seeing Wistia videos out in the wild. This is a (by no means complete)
list of services that make Wistia embed codes feel right at home. 💕

* [Basecamp](https://basecamp.com/)
* [Confluence](https://answers.atlassian.com/questions/251000/how-can-i-embed-a-wistia-hosted-video-to-my-confluence-page)
* [Delivr](http://blog.delivr.com/post/87004293105/delivr-adds-support-for-wistia-video-hosting-platform)
* [Help Scout](http://docs.helpscout.net/article/56-responsive-video)
* [Medium](https://medium.com/@Medium/embed-videos-tweets-music-and-more-into-your-medium-stories-3b5c09c116e8#.19w34ocuw)
* [Shopify](http://docs.shopify.com/manual/configuration/store-customization/embed-video)
* [Slack](https://slack.com/)
* [Zapier](https://zapier.com/zapbook/wistia/)
* [Zendesk](https://support.zendesk.com/hc/en-us/articles/203660446-How-to-embed-videos-in-your-articles)

Curious about an integration? Need help making that embed look perfect?
[Give us a shout.](http://wistia.com/support/contact) We'll be happy to help.
