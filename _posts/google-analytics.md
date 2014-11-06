---
title: Google Analytics
layout: post
category: Integrations
post_intro: <div class="post_image intro_image float_right"><img src="https://embed-ssl.wistia.com/deliveries/d58a3c905ae6da99e9c159ecce888e47cea56aeb.jpg" width="400px" alt="google-analytics2" /></div><p>At Wistia, we love analytics.  While ours are pretty sweet, there are lots of tools out there, like <a href="http://google.com/analytics" title="google analytics">Google Analytics</a>. While Wistia's analytics give you more in-depth information on video plays, putting basic 'video play' stats in Google Analytics can give you a better picture of your web visit metrics.</p><p>This guide is here to help you get started integrating Wistia video tracking with your Google Analytics account.</p>
description: Learn how to use Wistia and Google Analytics together to track video plays.
footer: 'for_intermediates'

---

## Google Analytics Lab

We realize that sometimes these things can get a bit complex, so to save you some time we built out the Google Analytics Lab. It actually does all of the stuff mentioned below for you! You can check it out [here.](http://wistia.com/labs/google-analytics/)

We __strongly__ recommend this route if you're not looking for more than the video play, 25/50/75/100% watched, and turnstile conversion events. 

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

## Making analytics work with Google Tag Manager

[Google Tag Manager](http://www.google.com/tagmanager/) is a tool created by the folks over at Google to more easily manage what data you're tracking without having to tweak code constantly to do so. 

Tag Manager is quite different from simply setting up Google Analytics or Universal Analytics, and as such requires a few extra steps to make it happen.

In a basic sense, Google Tag Manager wraps everything in a container and doesn't allow the video to send messages directly to Google Analytics and instead requires the events be sent to a data layer in-between the video and GA.

The change is to move from using the GA within Tag Manager to using a Custom HTML Tag within Tag Manager where you paste the GA code. This allows the video to talk with GA directly.

Here's an example of what that looks like within your Tag Manager installation:

{% post_image hashed_id: 'cd392eb254c7539f46d4a0118c40e4cc06112b35', width: 730, class: 'float_right' %} 


## Track viewing in Google Analytics Dashboard

Now that we have all the back-end coding out of the way, it's time to monitor how the videos are performing on your Analytics Dashboard.

The first step is to navigate to the Event Tracking section. Click the "Behavior" area of the left hand nav bar, and then select "Events" from the list. The Events section will show the total number of events, the average number of events per visit, and the Top Events. The easiest way to get to the specific stuff is by the "Top Events" view, pictured below.

{% post_image hashed_id: '3bde9a976530cdf76ccfc8f6b60687ed9b032e9d', width: 730, class: 'float_right' %} 

Depending on how many types of events you have in your installation, you may see a lot of things here. By default all ours use the "Video" type, so let's look into that category of events.

{% post_image hashed_id: '31f49a31653f2f827e57e1de9f1c7325e1f9d05b', width: 730, class: 'float_right' %} 

In here, you'll see a list of the events available to you, which are the things that we push using the stuff we covered earlier. There are some defaults included, but here's where your custom events would also appear if you configured any. The default events are: played, 25% watched, 50% watched, 75% watched, 100% watched, and conversion.

{% post_image hashed_id: 'a1699c22a42332d8bcf09555a19b3febf0e9f3db', width: 730, class: 'float_right' %} 

Let's take a look at the data for the "play event" for this case. You'll see here that this data comes in the form of video titles, which is a way to see in your analytics dash which of your videos got events for being played (the same is true for the other events). Below is an example of what that looks like.

{% post_image hashed_id: '1ef890a9af475643ea37b1bd048a7574ef589dee', width: 730, class: 'float_right' %} 

Using Wistia and Google Analytics is a good way to get all your top-level video analytics data in the same place you already get your other website tracking information. The screenshots above may not be _exactly_ like you see, since there are a few different versions of Google Analtics, Universal Analytics, etc.



