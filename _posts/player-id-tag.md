---
title: Embed Code ID Tagging
layout: post
api_warning: true
category: For Developers
description: Pass an ID for each viewer to your stats through the player API using these simple steps!
post_intro: <p>Using the Video Player API, you can create simple ID tagging that passes user info into your Wistia stats.  Your two options for executing this is:</p> <ol><li>using the <span class="code">wemail=</span> URL query string</li><li>a separate function using the trackEmail embed option.</li></ol>
footer: 'for_developers'
---

## URL Query String Approach

The custom query string URL approach produces a link like this: 

<code class="full_width">http://your-video-URL.com?wemail=example@mail.com</code>

If you have access to the user's email address (through log-in or form submittal, 
etc.) you can replace the `example@mail.com` string with this information.

{{ "The URL on the page where the video is embedded (and played from) must have the custom query string." | note }}

---

## Function with trackEmail Embed option

The new Wistia API embeds includes an option to track the viewer's email when 
they watch the video.  This process is predicated on there being a variable 
available on the client-side for tracking emails (ie. after they log in, their 
user info is tracked in a cookie).

{{ "You will need to use the 'API' version of the embed code to utilize this feature" | note }}

Inside the embed code, you will see a snippet that appears like this:

{% codeblock playlist_api.js %}
<script type="text/javascript"> 
  var wistiaEmbed = Wistia.embed("bfc34aa023", {
    playerPreference: "html5",
    autoPlay: true,
    wmode: "transparent",
    container: "my_container"
  });
</script>
{% endcodeblock %}

We will be adding the `trackEmail` embed option:
	
{% codeblock playlist_api.js %}
<script type="text/javascript"> 
  var wistiaEmbed = Wistia.embed("bfc34aa023", {
    playerPreference: "html5",
    autoPlay: true,
    wmode: "transparent",
    container: "my_container",
    trackEmail: "userEmail"
  });
</script>
{% endcodeblock %}


The variables for Wistia video hashed ID (`bfc34aa023`) and email address 
(`UserEmail`) need to be updated to reflect your embedded video ID and the 
variable of your identifiable user information.

