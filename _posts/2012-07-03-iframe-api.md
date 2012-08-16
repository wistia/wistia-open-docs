---
title: iframe Video Player API
description: Full documentation for accessing the Player API through an iframe embed code!
layout: post
---

Accessing the [Video Player API](/player-api.html) when using iframe embeds is easy!

There is a script that can be used to access the player API from 
outside the iframe. It has the same interface as the normal player API, 
but with the caveat that it won't work in IE7 and below (it won't break
anything, it just doesn't work). If you aren't too concerned with outdated 
browsers, this is the recommended way to access the player API.

## How to use it

Put the following just before the <span class="code">&lt;/body&gt;</span> tag:

<div class="code"><pre><script src="//fast.wistia.com/static/iframe-api-v1.js"></script></pre></div>

**Note:** It must come after any iframe embeds on the page, so it **cannot** be added inside the <span class="code">&lt;head&gt;</span> tag.

Now you can access the API by getting the <span class="code">wistiaApi</span> property from the iframe element.
You can assign an ID to each wistia iframe so you can get an easy handle to it.
Take a look:

<div class="code">
<pre>wistiaEmbed = document.getElementById("my_iframe").wistiaApi;
wistiaEmbed.bind("end", function() {
  alert("The video ended!");
});
wistiaEmbed.time(30).play();
</pre></div>

Take a look at the [Video Player API](/player-api.html) for the full documentation on what's possible.

