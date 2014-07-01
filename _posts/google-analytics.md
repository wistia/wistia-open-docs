---
title: Google Analytics
layout: post
category: Integrations
post_intro: <div class="post_image intro_image float_right"><img src="https://embed-ssl.wistia.com/deliveries/da85542f62701762023c8a73ab86e7968ee66022/googleanalytics.jpg" width="400px" alt="google-analytics2" /></div><p>At Wistia, we love analytics.  While ours are pretty sweet, there are lots of tools out there, like <a href="http://google.com/analytics" title="google analytics">Google Analytics</a>. While Wistia's analytics give you more in-depth information on video plays, putting basic 'video play' stats in Google Analytics can give you a better picture of your web visit metrics.</p><p>This guide is here to help you get started integrating Wistia video tracking with your Google Analytics account.</p>
description: Learn how to use Wistia and Google Analytics together to track video plays.
footer: 'for_intermediates'

---

## Google Analytics Lab

We realize that sometimes these things can get a bit complex, so to save you some time we built out the Google Analytics Labs. It actually does all of the stuff mentioned below for you! You can check it out [here.](http://wistia.com/labs/google-analytics/)

We __strongly__ recommend this route if you're not looking for more than the video play, 25/50/75/100% watched and turnstile conversion events. 

If you are still committed to doing it yourself to code out some sweet other alerts, read on!

{{ "This lab also works with Universal Analytics, so no worries about compatibility there unless you've changed to a custom analytics variable other than `ga` or `_gaq`." | note }}

---

## Before You Get Started

Make sure you have installed the [Google Analytics tracking scripts](https://support.google.com/analytics/bin/answer.py?hl=en&answer=1008080). These are necessary for any custom tracking we do below.

It's worth noting that if you have Universal Analytics, things might be a bit different for you. In that case, you'll want to see this __other__ [Google help document](https://support.google.com/analytics/answer/2817075?hl=en) where they explain how to set that one up.

If you currently have the pre-Universal Analytics version of Google Analytics setup, we recommend checking out [the Universal Analytics Upgrade Center](https://developers.google.com/analytics/devguides/collection/upgrade/) to get all the info you need to know about converting to the shiny new Universal Analytics style of things.

## Modify Your Wistia Embed Codes

Integrating with Google Analytics is very simple thanks to the 
[Embed Shepherd]({{ '/embed-shepherd' | post_url }}).
All you need to do is paste this little snippet of code anywhere on your website,
preferably right before the `</body>` tag (meaning at the bottom of your page's body).

You'll need to add the following code snippet to every page that contains a video you want to track.
Or better yet, if you have a layout file or a footer that's shared across pages, 
just put it in there and you'll be good to go!

Due to changes made when Universal Analytics was released, you'll use different code depending on which version you use. The easiest way to do this is to see if you have the `_gaq` or `ga` variable defined on your website. 

### Pre-Universal Analytics snippet

{% codeblock playlist_api.js %}
<script src="http://fast.wistia.net/static/embed_shepherd-v1.js"></script>
<script>
  wistiaEmbeds.onFind(function(video){
    video.bind("play", function(){
      _gaq.push(['_trackEvent', 'Video', 'Play', video.name()]);
      return this.unbind;
    }).bind("end", function(){
      _gaq.push(['_trackEvent', 'Video', 'Complete', video.name()]);
      return this.unbind;
    });
  });
</script>
{% endcodeblock %}

### Post-Universal Analytics snippet

{% codeblock playlist_api.js %}
<script src="http://fast.wistia.net/static/embed_shepherd-v1.js"></script>
<script>
  wistiaEmbeds.onFind(function(video){
    video.bind("play", function(){
      ga('send', 'event', 'Video', 'Play', video.name());
      return this.unbind;
    }).bind("end", function(){
      ga('send', 'event', 'Video', 'Complete', video.name());
      return this.unbind;
    });
  });
</script>
{% endcodeblock %}

You'll notice that not only has the variable changed from `_gaq` to `ga` but that the format between Google Analytics and Universal Analytics is slightly different. Instead of using `.push([...])` you're using `ga('send', ...)` to push along that data. Everything else stays the same!

## What those snippets do

These snippets fire a 'Play' event to Google Analytics whenever a video on your 
website is played. They also fires a 'Complete' event when a viewer reaches the 
end of a video. 

We only fire each of these events once per video per page load (that's what the
`return this.unbind` is for). So if a viewer plays and pauses a video over and
over again, we'll only send one play event to Google. Pretty cool.

You can extend what we've done here to pipe many more events to Google
Analytics if you like. Take a look at the [Player API]({{ '/player-api' | post_url }}) to see
what's possible.

## Track viewing in Google Analytics Dashboard

Now that we have all the back-end coding out of the way, it's time to monitor how the videos are performing on your Analytics Dashboard.

{% post_image hashed_id: 'd65c31e1c319b67c41664711dc64faa2cd92078b', width: 620, class: 'float_right' %} 

The first step is to navigate to the Event Tracking section.  Click the "Behavior" area of the left hand nav bar, and then select "Event Tracking" from the list.  The Event Tracking section will show the total number of events, the average number of events per visit, and the Top Events.  Select "Categories" to see just the video events.

{% post_image hashed_id: '95e8b116efde2bb9f055e6b50af5a7d8c3f6e816', width: 620, class: 'float_right' %} 

The "Categories" events will now contain a "Video" section, which you defined in the Javascript earlier.  Click "video" to drill into the specific event descriptions.

{% post_image hashed_id: '9833481aa5a9e6a38c077c7cd365518248e87b65', width: 620, class: 'float_right' %} 

The "Video" section page will show the total number of plays and the total number of complete plays, which we defined in separate Javascript functions earlier. Click on "Play" or "Complete" to see the plays or completes for a specific video (if you have started tracking multiple videos through UA or GA).

{% post_image hashed_id: '6617f95f699a9e84a28d25e33ea199c0219a5158', width: 620, class: 'float_right' %} 

The final drill down shows what specific video titles (defined in the javascript function above) were played.

Using Wistia and Google Analytics is a good way to get all your top-level video analytics data in the same place you already get your other website tracking information.

