---
title: Google Analytics
layout: post
category: Integrations
post_intro: <div class="post_image float_right"><img src="/images/google-analytics2.png" alt="google-analytics2" /></div><p>At Wistia, we love analytics.  While ours are pretty sweet, there are lots of tools out there, like <a href="http://google.com/analytics" title="google analytics">Google Analytics</a>. While Wistia's analytics give you more in-depth information on video plays, putting basic 'video play' stats in Google Analytics can give you a better picture of your web visit metrics.</p><p>This guide is here to help you get started integrating Wistia video tracking with your Google Analytics account.</p>
description: Learn how to use Wistia and Google Analytics together to track video plays.
---

## Step 1: Modify Your Wistia Embed Codes

To make this work, we will be adding a 'binding event' to your Wistia embeds.  Not to worry, no rocket science here, just a small change that will notify Google Analytics when the video has finished.  You'll need to use the "API" version of your Wistia embed code, which is available in the "Advanced Video Types" section of your [SuperEmbed builder](/super_embed_screen.html).

After you paste your Wistia embed code, you'll be adding a block of javascript below.  See the example below for a template:

<pre><code class="language-javascript">
<script type="text/javascript">
function gaFunc() {
  _gaq.push(['_trackEvent', 'Video','Play', 'My Sample Video Title']);
  wistiaEmbed.unbind("play", gaFunc);
}

wistiaEmbed.bind("play", gaFunc);

wistiaEmbed.bind("end", function () {
  _gaq.push(['_trackEvent', 'Video','Complete', 'My Sample Video Title']);
});
</script>
</code></pre>

In the code snippet example above, you should update the 'My Sample Video Title' with the title of your video.

**Note:** If you are using Google Analytics for more than one video on a page, you should update the <span class='code'>wistiaEmbed</span> variable in both the code above AND in your embed code.

## Step 2: Track viewing in Google Analytics Dashboard

Now that we have all the back-end coding out of the way, it's time to monitor how the videos are performing on your Google Analytics Dashboard.

<div class="post_image float_right"><img src="/images/google_dash1.png" alt="google_dash1" /></div>

The first step is to navigate to the Event Tracking section.  Click the "Content" area of the left hand nav bar, and then select "Event Tracking".  The Event Tracking section will show the total number of events, the average number of events per visit, and the Top Events.  To see just the video events, select "Categories".

----

<div class="post_image float_right"><img src="/images/google_dash2.png" alt="google_dash2" /></div>

The "Categories" events will now contain a "Video" section, which you defined in the Javascript earlier.  Click "video" to drill into the specific event descriptions.

----

<div class="post_image float_right"><img src="/images/google_dash3.png" alt="google_dash3" /></div>

The "Video" section page will show the total number of plays and the total number of complete plays, which we defined in separate Javascript functions earlier.  To see the plays or completes for a specific video (if you have started tracking multiple videos through GA) click on "Play" or "Complete".

----

<div class="post_image float_right"><img src="/images/google_dash4.png" alt="google_dash4" /></div>

The final drill down shows what specific video titles (defined in the javascript function above) were played.

Using Wistia and Google Analytics is a good way to get all your top-level video analytics data in the same place you already get your other website tracking information.
