---
title: Google Analytics
layout: post
category: Integrations
post_intro: <div class="post_image intro_image float_right"><img src="http://embed.wistia.com/deliveries/85df32f894f2b308139bd9feb49c8c04aed6efbd.png" width="250px" alt="google-analytics2" /></div><p>At Wistia, we love analytics.  While ours are pretty sweet, there are lots of tools out there, like <a href="http://google.com/analytics" title="google analytics">Google Analytics</a>. While Wistia's analytics give you more in-depth information on video plays, putting basic 'video play' stats in Google Analytics can give you a better picture of your web visit metrics.</p><p>This guide is here to help you get started integrating Wistia video tracking with your Google Analytics account.</p>
description: Learn how to use Wistia and Google Analytics together to track video plays.
footer: 'for_intermediates'
---

## Before You Get Started

Make sure you have installed the [Google Analytics tracking scripts](https://support.google.com/analytics/bin/answer.py?hl=en&answer=1008080). These are necessary for any custom tracking we do below.

## Modify Your Wistia Embed Codes

Integrating with Google Analytics is actually extremely simple thanks to the 
[Embed Shepherd](/embed-shepherd).
All you need to do is paste this little snippet of code anywhere on your website, preferably
right before the </body> tag.

You'll need to add this to every page that contains a video you want to track.
Or better yet, if you have a layout file or a footer that's shared across pages, 
just put it in there and you'll be good to go!

<pre><code class="language-javascript">
<script src="http://fast.wistia.com/static/embed_shepherd-v1.js"></script>
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
</code></pre>


## Track viewing in Google Analytics Dashboard

Now that we have all the back-end coding out of the way, it's time to monitor how the videos are performing on your Google Analytics Dashboard.

{% post_image hashed_id: 'd65c31e1c319b67c41664711dc64faa2cd92078b', width: 320, class: 'float_right' %} 

The first step is to navigate to the Event Tracking section.  Click the "Content" area of the left hand nav bar, and then select "Event Tracking".  The Event Tracking section will show the total number of events, the average number of events per visit, and the Top Events.  To see just the video events, select "Categories".

----

{% post_image hashed_id: '95e8b116efde2bb9f055e6b50af5a7d8c3f6e816', width: 320, class: 'float_right' %} 

The "Categories" events will now contain a "Video" section, which you defined in the Javascript earlier.  Click "video" to drill into the specific event descriptions.

----

{% post_image hashed_id: '9833481aa5a9e6a38c077c7cd365518248e87b65', width: 320, class: 'float_right' %} 

The "Video" section page will show the total number of plays and the total number of complete plays, which we defined in separate Javascript functions earlier.  To see the plays or completes for a specific video (if you have started tracking multiple videos through GA) click on "Play" or "Complete".

----

{% post_image hashed_id: '6617f95f699a9e84a28d25e33ea199c0219a5158', width: 320, class: 'float_right' %} 

The final drill down shows what specific video titles (defined in the javascript function above) were played.

Using Wistia and Google Analytics is a good way to get all your top-level video analytics data in the same place you already get your other website tracking information.
