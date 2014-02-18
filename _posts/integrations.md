---
title: Integrations
layout: post
description: Wistia plays well with lots of 3rd party services. See some of the best, and how to use them, in this article.
post_intro: <p>As we update our embedding processes and APIs, Wistia will get better and better at integrating with other top-notch services. On this doc page, we'll do our best to keep track of places where Wistia works out-of-the-box for embedding, and also where deeper integrations have been built out by our awesome friends.</p><p>If you currently use a service that you think rocks, and would work well with Wistia, submit your request in <a href="https://docs.google.com/a/wistia.com/forms/d/1x2Z2KUdxXKhPYpfzfQJLVq7upAnhryBWZt2Y4IUPiTs/viewform" target="_blank">this form</a>.</p>
---

## Pardot

{% post_image hashed_id: 'ad8170872957e7aa3dcb8b214cb08ddbf78eb74e', class: 'integration_logo' %}

Using the [Pardot Connector]({{ '/pardot' | post_url }}), you can pass Wistia
analytics back to your Pardot prospect data.

Read up on the [Pardot integration page]({{ '/pardot' | post_url }}).

## HubSpot

{% post_image hashed_id: '1b11fe5536f67f70699d752ca1e7f11775dd5f32', class: 'integration_logo' %}

Using the [HubSpot integration](http://knowledge.hubspot.com/how-to-integrate-hubspot-and-wistia) with Wistia, you can get all your HubSpot customer data in the same spot for prime data organization.

You can learn how to set this up over on [HubSpot's site](http://knowledge.hubspot.com/how-to-integrate-hubspot-and-wistia) or [in our docs]({{ '/hubspot' | post_url }})

## WordPress

{% post_image hashed_id: 'bdad3d0b4f6e6581194fbcbd25dd9626501c7c80', width: 200, class: 'integration_logo' %}

Using the [Wistia WordPress Plug-in](http://wordpress.org/extend/plugins/wistia-wordpress-oembed-plugin), you can add your embed codes and they will be protected. It won't take up any space in your WordPress admin dashboard, but instead works quietly in the background (as it should).

We have some other information on using Wistia and WordPress, including styling tips (we so stylish!) on the [WordPress integration page]({{ "/wordpress" | post_url }}).

{{ "Wistia embed codes can only be used with WordPress.org installs. <a href='http://en.support.wordpress.com/com-vs-org'>Read up on the difference between WordPress.com hosted blogs and WordPress installs</a>." | note }}

## Drupal

{% post_image hashed_id: '97d57d4890140c3e6f529e7e58fe7b7d3610d9b5', width: 200, class: 'integration_logo' %}

The [Media:Wistia Drupal Module](http://drupal.org/project/media_wistia) makes embedding both videos and playlists easy using either Wistia URLs or embed codes. 

This was updated by dev-god [Travis Carden](http://drupal.org/user/236758), thanks Travis!

[Read more on using Wistia and Drupal]({{ '/drupal' | post_url }}).

{{ "Wistia embeds have only been tested and verified through Drupal v6. Compatibility beyond v6 is not yet guaranteed." | note }}

## Expression Engine

{% post_image hashed_id: 'aaffdd3319f6a532ecb071811f2fd071e57a0a46', width: 200, class: 'integration_logo' %}

Posting a video on an Expression Engine page can be accomplished using any embed code, or through oEmbed links through a special plug-in lovingly designed by user [Antenna](http://devot-ee.com/add-ons/antenna).

[See this guide]({{ '/expression-engine' | post_url }}) to embedding Wistia video in your Expression Engine template.


## Squarespace

{% post_image hashed_id: '5bc3046a0b10664ef4c5bc96b4cd18ad3c056215', width: 200, class: 'integration_logo' %}

With Wistia and Squarespace, embedding a video is as easy as pasting in your embed codes.

<a href="{{ '/squarespace' | post_url }}">Get the details on how it all works.</a>


## Wix

{% post_image hashed_id: 'eaa07cfdb573a9e1c555947d25bf10933de060e3', width: 200, class: 'integration_logo' %}

To embed a Wistia video in your Wix website, go to *Add --> Widgets --> HTML*. Click on the '*Settings*' for the HTML widget and you can paste your Wistia embed code where it reads '*Insert HTML Code*'. Once you save it, you should be all set.

{{ "Some Wix layouts do not reload the window to change pages, essentially creating HTML overlays that leave your video playing in the background." | note }}

---

## Other Services Wistia Plays Well With

We love seeing Wistia videos out there in the wild. This is an incomplete list of services that make Wistia embed codes feel right at home.

* Basecamp
* Blogger
* [Confluence](https://answers.atlassian.com/questions/251000/how-can-i-embed-a-wistia-hosted-video-to-my-confluence-page)
* DecalCMS
* [Facebook]({{ '/social-sharing' | post_url }})
* Google Sites
* Lexblog
* Medium
* Portfoliobox
* [Sharepoint](http://office.microsoft.com/en-us/office365-sharepoint-online-enterprise-help/embed-video-on-a-public-website-page-HA102828149.aspx)
* [Shopify](http://docs.shopify.com/manual/configuration/store-customization/embed-video)
* Smore
* Tumblr
* [Twitter]({{ '/social-sharing' | post_url }})
* [Weebly](http://kb.weebly.com/embed-audio-and-video.html)
* [WildApricot](http://help.wildapricot.com/display/DOC/Adding+video+clips)

{{ "If you know of a service that plays well with Wistia that is not on this list, send it along! Just e-mail support@wistia.com and we'll give you a high five for it or something!" | alert }}
