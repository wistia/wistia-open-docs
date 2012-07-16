---
title: Publicly Accessible Stats
layout: post
category: Analytics
post_intro: <p>Sometimes you want to let your users see the statistics for a given video on your site.  At Wistia, we're more than happy to provide a publicly accessible page with anonymized statistics.  However, this functionality is not enabled by default, so before continuing, please <a href="mailto:support@wistia.com">contact us</a> to request it to be enabled for your account.</p><p>After you have received confirmation that the feature has been turned on, the next step is to craft a link which your site's visitors can use to access your video's statistics.</p>
---

## Finding the Video's ID

The URL for the link should be in the form of...
	
<span class="code">http://app.wistia.com/stats/&lt;media-id&gt;</span>

...where <span class="code">&lt;media-id&gt;</span> is the unique numeric id representing your video (**note:** it must be a numeric ID).  You can find the id for a video in a variety of ways, but the easiest is to look at the address bar at the top of your browser while you are on the video's page in Wistia (it must be a private video to see the numeric ID).

The digits at the end of the URL represent the id you want to use.  The id to use from the screenshot below would be **181279**.  So the URL for the stats for that video would be <span class="code">http://app.wistia.com/stats/181279</span>

<div class="post_image center"><img src="/images/media-id.png" alt="media-id" width="600px" /></div>

## Embedding Your Link

After you have figured out the URL that you need to use to access the stats, you can add a link to your page to allow your visitors to see those stats.  For example, add the following code to your page to provide a link to access the stats from the previous video:

	
<div class="code"><pre><a href="http://app.wistia.com/stats/181279">See the stats for this video!</a></pre></div>

Adding that code to your page will produce the following result: [See the stats for this video!](http://app.wistia.com/stats/181279)
