---
title: Integrate HubSpot and Wistia
layout: post
description:
  HubSpot is a suite of popular marketing tools for driving more leads and better engagment. See how Wistia works with HubSpot to give it special powers!
category: integrations
---

{% post_image hashed_id: 'baa410e5f85c4a749f40f29679ad49f901f1975e', class: 'integration_logo' %}


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

There are four steps to getting fully integrated:

1. [Enable the integration inside your HubSpot account](#enable_the_integration_in_hubspot).
2. [Set up Turnstile to work with HubSpot](#turnstile).
3. Just kidding, there's no step 3. Woot!


### Enable the Integration in HubSpot

To enable the integration within HubSpot, log into your HubSpot account,
click on your beautiful face (your profile picture) in the upper right of the screen, and go to **Integrations**.

{% post_image hashed_id: '7d06e29a791a7387630c66994f78d802a63a952b', width: 300, class: 'float_left' %}

In Integrations, you'll see Wistia right at the top! Click **Integrate with HubSpot**.

{% post_image hashed_id: '7c955798a057931c0ccb2d43a3146778b76318f9', class: 'class' %}

HubSpot will request the API password from your Wistia account (which you can find [here]({{ '/account-setup#api_access' | post_url }})). Pop that into HubSpot and you're nearly ready.

You're almost done! All you need to do now is set up HubSpot with Turnstile in your Wistia account.

## Turnstile

Want to make your HubSpot-Wistia powers even stronger? Of course you do!

Once you've entered your [HubSpot ID](http://help.hubspot.com/articles/KCS_Article/Account/Where-can-I-find-my-HUB-ID) into Wistia, you'll be able to gather leads with [Turnstile]({{ '/turnstile' | post_url }}).

{% wistia_embed hashed_id: cuvw05s7qb %}

Jump back to your Wistia account, and head into [Account Settings]({{ '/account-setup#account_settings' | post_url }}). (Keep in mind, only the **Account Owner** can get into Account Settings.) Once you're there head to **Data Integrations** under *Integrations*. Enter your [HubSpot ID](http://help.hubspot.com/articles/KCS_Article/Account/Where-can-I-find-my-HUB-ID) and connect.

{% post_image hashed_id: "10ffed086dc13b7475fe1788eaa173397e23c93d", class: 'center' %}

HubSpot will ask you to login to your account, and verify that you're cool with authorizing Wistia.

Once you've entered all your HubSpot info and configured it, you are ready to
use the HubSpot Turnstile with your next Wistia video (look for it in [Timeline Actions]({{ '/customizing-your-video#timeline_actions' | post_url }})).

Note that unlike many of the other Turnstile integrations, with the HubSpot
integration you don't choose a list for the emails to be pushed to. Instead,
we automatically create a Form for you in HubSpot for each video. You can use
HubSpot's [Smart Lists](http://knowledge.hubspot.com/contacts-user-guide/how-to-create-a-smart-list) to group and organize your contacts. This is far more flexible and powerful than having to select a list for each video and forcing the contacts into that one list!

For a more in-depth guide see the [Turnstile page]({{ '/turnstile' | post_url }}).

Now that everything's setup, let's see how this thing actually works!

## Turnstile as Form Submissions

So now you have your HubSpot Turnstile integration set up, and you've shared
(or embedded) a video with turnstile turned on. Here's a quick guide to
tracking those submissions in HubSpot.

{% post_image hashed_id: '7615d57622023abae0ea1342a746ea32bb432e8b', class: 'center' %}

From under the *Contacts* menu in your HubSpot account, select *Forms*.

{% post_image hashed_id: '28a697190baf533e077989bcff33e6f204a79015', class: 'center' %}

Your video should appear in your Forms list, entered under the title of your
video in your Wistia account. You can check the submissions and take other
conversion actions from the *Forms* area.

Awesome!

## Heatmaps in Contact Timeline

One of the coolest things about this integration is that you'll see video
heatmaps in your contacts' timelines. It will look like this:

{% post_image hashed_id: "dd8819f1ea04968e26e6ff87b091fda357ef9674", class: 'center' %}


## Segmenting Based on Viewing Behavior

If you're a HubSpot Enterprise customer you have access to their powerful
events engine. Once you have this integration set up, we'll automatically send
the following events for every Wistia video on your site:

- Video played
- Video 25% watched, 50% watched, 75% watched and 100% watched
- Links clicked

This means that you can segment your contacts based on this viewing data.
Here's what it looks like if I wanted to segment based on everyone who's watched
100% of my 2011 Recap video.

{% post_image hashed_id: "277c974271e1f88309b2edb57a013f5f5125f751", class: 'center' %}

Some cool things you can do with this:

- Find everyone who loaded a particular video but didn't play it and send that
  video out to them in an email.
- Nudge viewers who've only watched 25% of a video.
- Know who your most engaged viewers are.
- Follow up with users to clicked on [annotation links]({{ '/customizing-your-video#annotation_link' | post_url }}) and [Calls to Action]({{ '/customizing-your-video#call_to_action' | post_url }}).

## Email Merge Tags

With the HubSpot-Wistia integration you can easily embed a thumbnail of your video in your email
campaign. When visitors click the video image with the play button, they'll be
sent to your website to watch the video.

When you use this integration, your recipients email addresses are automatically
piped through to your Wistia and HubSpot stats. So for everyone who clicks through on the
email, you'll be able to see who they are and what parts of the video they've watched!

First you'll want to grab the [email merge tag]({{ '/email-marketing#select_your_video' | post_url }}) from Wistia. Pick the video you'd like to share, and select *Embed & Share* from the *Video Actions* drop down menu. The select *Link in Email Campaign*, and make sure HubSpot is chosen at the Email Provider.

{% post_image hashed_id: '5db146143f379d6b79228b42ada298c105f07b42', class: 'center' %}

Change the size, play button color, and page the video links to. Then copy the email merge tag.

For HubSpot it should look something like this:

`<a href="https://home.wistia.com/medias/6hnsww6aua?wemail={{contact.email}}"><img src="https://embed-ssl.wistia.com/deliveries/e4113de89c7e483bd720ee893e619c96275e4a01.jpg?image_play_button=true&image_play_button_color=31b0dde0&image_crop_resized=500x281" alt="Wistiafest is Coming" width="500" height="281" /></a>`

Next head over to HubSpot's Email Builder.

{% post_image hashed_id: '804910911137433746c0335188bfb40d5031cc93', class: 'center' %}

When you're editing your email in HubSpot, click the *Source Code* button in the *Main Body Text* editor.
This will ensure that the editor won't mess with the code that we paste in.

Paste in the email merge tag.

{% post_image hashed_id: '966d1ba37c07ea63a6a45692f870d978ce1d872c', class: 'center' %}

And then you should see the thumbnail of your video appear in the preview window. Pretty cool, eh?

Once you've got that beauty ready to go, send that email!

It's always good to send a test message to yourself
first to make sure everything's linked up right. Note that when HubSpot sends the test message
it will pass through "EMAIL" to our tracking system instead of your actual email address.

When you send the actual email, it will substitute the recipients emails in instead.

May your click-through rates be high and your video engagements long!

## Getting Wildly Advanced

Using HubSpot's JavaScript events API and our player API, you can accomplish
some awe-inspiring feats of sales and marketing automation.

Consider this: you sell self-driving cars. You have a video that's part of your
sales funnel, and you want to know if a prospect has watched key areas of that
video.

You could set up code like this to report to HubSpot when a prospect has watched
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

## Troubleshooting

Got issues? Not seeing the magic? We're here to help!

### I can't see my heatmaps!

HubSpot will batch-pull data from Wistia, so heatmaps might not be piped in immediately--but they'll be there soon.

Additionally, you'll want to make sure the Wistia icon in your contact's timeline is the vibrant, Wistia blue (it will be grey if its not turned on). This is usually turned on by default in HubSpot, but if you've deselected the option, you won't be able to see the nifty heatmaps.

{% post_image hashed_id: '85bfb59048d8bda8b6ad3663ffc4b1eb4353cf3e', class: 'center' %}

### Turnstile isn't pulling in heatmaps!

If you've built your own webpage you'll want to make sure the HubSpot tracking code is in there. Without it, Wistia and HubSpot are just two ships passing in the night--we won't be able to communicate properly.

Here's HubSpot's guide on adding your [tracking code](http://knowledge.hubspot.com/getting-started-with-hubspot/how-to-install-the-tracking-code-on-a-generic-website).


Still not working? We're happy to help! [Give us a holler](http://wistia.com/support/contact), and we'll jump on the case. :)
