---
special_category_link: developers
title: MailChimp Goal and Wistia
layout: post
api_warning: true
description: Trigger MailChimp Autoresponders based on video viewing behavior
category: Integrations
footer: 'for_developers'
---

So you've got a killer autoresponder setup in MailChimp, and you want to trigger
it based on video viewing behavior? Well, you've come to the right place!


## Setting it up

Before we get into the details, make sure you have already followed [these
instructions](http://kb.mailchimp.com/article/how-do-i-use-goals-tracking)
from the helpful guys at MailChimp.

At this point you should:

- Have the Goal integration enabled in your MailChimp account
- Have the the Goal JavaScript snippet on your site
- Have an autoresponder set up


## Triggering the responder

Let's say that you want to trigger the autoresponder when someone finishes a
product demo video. You'd do something like this:

{% codeblock autoresponder.js %}
wistiaEmbed.bind('end', function() {
  $mcGoal.processEvent('finished-product-demo-video');
  return this.unbind;
});
{% endcodeblock %}

Then in your autoresponder, you'll want to set it to trigger on the
`finished-product-demo-video` event like so:

{% post_image hashed_id: '1246db407d8812f7d63e23d726ae2298b7bd0bf8', class: 'center' %}

Take a look at [the player API]({{ '/player-api' | post_url }}) and
[the embed shepherd]({{ '/embed-shepherd' | post_url }}) for more info on how
to attach to player events.
