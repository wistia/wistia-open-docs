---
title: Integrate HubSpot and Wistia
layout: post
description: 
  HubSpot is a suite of popular marketing tools for driving more leads and better engagment. See how Wistia works with HubSpot to give it special powers!
category: integrations
---

[HubSpot](http://hubspot.com) is marketing software designed to help increase
leads and drive better engagement. They are the masters of inbound
marketing...heck, they *invented* it!

HubSpot and Wistia work together in a bunch of different ways:

* Video heatmaps show up in your contacts' timelines
* A [Wistia Turnstile]({{ '/turnstile' | post_url }}) integration
* Video events are piped to HubSpot so you can segment your contacts based on viewing behavior

See this video for more:

{% wistia_embed hashed_id: y1ezg4s4ef %}


## Setting Everything Up

Three Steps to getting fully integrated:

1. Enable the integration inside your HubSpot account.
2. Add the integration JavaScript snippet to your website.
3. Set up Turnstile to work with HubSpot.


## Enable the integration inside HubSpot

To enable the integration within HubSpot, log into your HubSpot account, 
click on your name in the upper right of the screen, and go to **Settings**.

In Settings, click **Wistia Integration** under the *Integrations* headline.

Follow the instructions! Note that some of their instructions, notably the 
part related to the JavaScript snippet, overlap with the instructions below.


## Add the integration JavaScript

If you build and maintain your own website (without using HubSpot's COS), add 
this code snippet after HubSpot's analytics JavaScript:

{% codeblock hubspot_integration.html %}
<script src="//fast.wistia.com/assets/external/integrations-hubspot-v1.js" async></script>
{% endcodeblock %}

If you use HubSpot's COS or make landing pages with HubSpot, you'll want to also 
add this snippet to the *Site Footer HTML* in your HubSpot Account.

{% post_image hashed_id: 'b83e5159698404b5e57695caee83ced2b5a2de87', class: 'center' %}

Open the Content > Content Settings area in your account. 

{% post_image hashed_id: '22f0e988ac098330f63651a96c03dd821ff20073', class: 'center' %}

Add the JavaScript snippet above to the *Site Footer HTML* area, as shown in the image above.


## Set up Turnstile

{% post_image hashed_id: "d6166e343c3cebdda782d3b8a8370a8d782d9a90", class: 'center' %}

Open your [Account Settings]({{ '/account-setup#open_your_account_settings' | post_url }}),
and select *Setup An Email Provider*.

{{ "Just as a reminder, only the Account Owner can open the Account Settings" | note }}

{% post_image hashed_id: "1a41347bfeb5390f3ed666167b39b751e565fe2b", class: 'center' %}

Select HubSpot from the list, and then click <span class='faux_button'>Configure</span>

{% post_image hashed_id: '56f97c3d6a0e46bff145aaf21731d64566aed330', class: 'center' %}

For HubSpot configuration, you will need your *Hub ID*, *username*, and
*password*. Your *Hub ID* can be found in the lower-right-hand corner of any
page in your HubSpot account (see [this HubSpot doc](http://help.hubspot.com/articles/How_To_Doc/How-to-find-your-hub-id) for more).

Once you've entered all your HubSpot info and configured it, you are ready to
use the HubSpot Turnstile with your next Wistia video (look for it under
*Turnstile Email Capture*).

Note that unlike the many of the other Turnstile integrations, with the HubSpot
integration you don't choose a list for the emails to be pushed to. Instead,
we automatically create a Form for you in HubSpot for each video. You can use
HubSpot's [Smart Lists](http://help.hubspot.com/articles/How_To_Doc/how-to-create-a-smart-list-in-hubspot)
to group and organize your contacts. This is far more flexible and powerful than
having to select a list for each video and forcing the contacts into that one list!

For a more in-depth guide see the [Turnstile doc page]({{ '/turnstile' | post_url }}).


## How it works

Now that everything's setup, let's see how this thing actually works!


## Heatmaps in the Contact Timeline

One of the coolest things about this integration is that you'll see video 
heatmaps in your contacts' timelines. It will look like this:

{% post_image hashed_id: "dd8819f1ea04968e26e6ff87b091fda357ef9674", class: 'center' %}


## Turnstile as Form Submissions

So now you have your HubSpot Turnstile integration set up, and you've shared
(or embedded) a video with turnstile turned on. Here's a quick guide to
tracking those submissions in HubSpot.

{% post_image hashed_id: 'd37a1ea780c75bcdb925551f1684e0f9bbd3fef6', class: 'center' %}

From under the *Contacts* menu in your HubSpot account, select *Forms*.

{% post_image hashed_id: '28a697190baf533e077989bcff33e6f204a79015', class: 'center' %}

Your video should appear in your Forms list, entered under the title of your
video in your Wistia account. You can check the submissions and take other
conversion actions from the *Forms* area.

Awesome!


## Segmenting based on viewing behavior

If you're a HubSpot Enterprise customer you have access to their powerful 
events engine. Once you have this integration set up, we'll automatically send
the following events for every Wistia video on your site:

- Video played
- Video 100% watched

This means that you can segment your contacts based on this viewing data.
Here's what it looks like if I wanted to segment based on everyone who's watched
100% of my 2011 Recap video. 

{% post_image hashed_id: "277c974271e1f88309b2edb57a013f5f5125f751", class: 'center' %}

Some cool things you can do with this:

- Find everyone who loaded a particular video but didn't play it and send that
  video out to them in an email.
- Know who your most engaged viewers are. 
- Follow up with people who entered their email to watch a video but never finished it.


## Getting wildly advanced

Using Hubspot's JavaScript events API and our player API, you can accomplish 
some awe-inspiring feats of sales and marketing automation.

Consider this: you sell self-driving cars. You have a video that's part of your 
sales funnel, and you want to know if a prospect has watched key areas of that 
video.

You could set up code like this to report to Hubspot when a prospect has watched
the following sections:

- Never look for a parking spot again
- Have your car drive your kids to school
- Drink a beer while riding home from work on a Friday

{% codeblock advanced-hubspot.js %}
(function(){
  var reportSection = function(name, start, end){
    var watched = [];
    for (i = start; i < end; i++) { watched.push(false); }

    function watchedItAll(){
      var c = 0;
      for(i = 0; i < watched.length; i++) {
        if (watched[i]) { c++; }
      }
      return c == watched.length;
    }

    wistiaEmbed.bind("secondchange", function(s){
      if (s >= start && s < end) {
        watched[s - start] = true;
      }

      if (watchedItAll()) {
        window._hsq.push(['trackEvent', { id: name }]);
        return this.unbind;
      };
    });
  };

  reportSection("Watched part about death to parking", 11, 22);
  reportSection("Watched part about kid chauffeur", 38, 46);
  reportSection("Watched part about drinking and driving", 95, 108);
})();
{% endcodeblock %}

Ta da! Automation bliss! Segment on these events, see them in your timeline, 
the sky's the limit.
