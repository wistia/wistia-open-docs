---
title: Clicky
layout: post
category: Integrations
description: Want your Wistia video stats to show up in your Clicky account? It's super easy, check out how here!
post_intro: <div class="post_image intro_image float_right"><img src="http://embed.wistia.com/deliveries/8c7280ff0391770e9b287aed7d071a7d66786f0b.png" alt="clicky" /></div><p>Clicky Web Analytics are a great tool to track your webpage or blog's real-time performance with a variety of metrics.  We use their dashboards to track visitors, how they found us, and what actions they are taking on our sites.  For more on this, check out our blog post on <a href="http://wistia.com/blog/why-wistia-loves-clicky/">reasons we love Clicky</a>.</p>
footer: 'for_intermediates'
---

## Embed Your Video

The first step to making Clicky work with Wistia is embedding your video on your webpage (or blog, e-commerce site, etc.)  For more info on this, please check out our documentation on [embedding]({{ '/embedding' | post_url }}).  For Clicky and your video to be able to interact, **you must choose the API embed code** from the Embed Type section of the Embed & Share Modal.

## Add Clicky Tracking

The next step is creating an account with Clicky and adding your website to your account tracking.  To create Clicky account, [head over to the Clicky website](http://getclicky.com).

{% post_image hashed_id: '1b7e9a7b2a7f0c01374a4b8e3c4bfafdfd6564b8', width: 320, class: 'float_right' %} 

Once you have your account set up, adding a website to track is easy to do.  
Starting on your Clicky user profile (which you can find at 
https://secure.getclicky.com/user), click the "Add New Site" button.

{% post_image hashed_id: '8d0a03ffc7a23a84e678f9f3cdd6f499ff86497c', width: 320, class: 'float_right' %} 

Enter the site URL into the box, as shown here.

{% post_image hashed_id: '8de96c542e99477d8fd9342f10ab3376460d200c', class: 'center' %} 

On the submission page, check to be sure your information is correct, and enter 
any custom settings into the "Advanced Settings" page.  Then, click the link to 
the tracking code page.

{% post_image hashed_id: '95959193a5c724b437e07bb5a5c4c4c6c8f236c8', class: 'center' %} 

On the tracking code page, select and copy the code, and paste it into the HTML 
on your webpage.  You're all set and ready to start tracking real-time stats 
using Clicky!

## Start Tracking Video Views

It's time to start tracking video views in your Clicky dashboard.  We've created 
a simple Javascript function to help you do this. This code should follow each 
Wistia embed on your page, updated with the hashed ID, URL, and title of the video. The hashed ID for your video can be found by navigating to the video's page in Wistia, and selecting the last 10 characters of the URL. Those 10 characters are the Hashed ID of the video, and are what identify it as unique in Wistia's system.
	
{% codeblock playlist_api.js %}
<script type="text/javascript">
wistiaEmbed.bind("play", function() {
  clicky.video('play',0, 'http://www.mysite.com/mypage/#video', 'Test Video');
});
</script>
{% endcodeblock %}

In this codeblock, the `0` signifies where you should place the hashed ID, the placeholder URL `http://www.mysite.com/mypage/#video` should be replaced with the URL of the webpage where your video is embedded, and the `Test Video` should be replaced with the title of the video you are trying to track.

**Bonus:** to track the finish viewing stats as well, use `wistiaEmbed.bind("end", yourFunction)`. It should look like this:

{% codeblock playlist_api.js %}
<script type="text/javascript">
wistiaEmbed.bind("play", function() {
  clicky.video('play',0, 'http://www.mysite.com/mypage/#video', 'Test Video');
});
wistiaEmbed.bind("end", function() {
  clicky.video('end',0, 'http://www.mysite.com/mypage/#video', 'Test Video');
});
</script>
{% endcodeblock %}

## Check Your Stats!

To find your video view stats in your Clicky account, select the "Content" tab 
from the left-hand bar, and then select "video".  Your video stats should now 
appear!

