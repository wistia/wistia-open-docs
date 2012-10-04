---
title: Constructing an embed code
layout: post
category: For Developers
description: Learn how to construct an embed code starting with just the video ID!
footer: 'for_developers'
---

As long as you have the hashed_id for a video, you can easily produce an embed code without even hitting our servers!

The hashed_id is a unique identifier to a video within the Wistia system. You can get hashed_ids for your videos via the [Data API](/data-api).

We pass parameters into an iframe embed via the src attribute. They're just 
simple URL parameters, with the keys namespaced by brackets.

For example, say we have the hashed_id of the video we want to embed, but we
want to change the color of the play button, hide the fullscreen button, and
add a socialbar. Here's how we do it...

## Building an iframe embed code

Ok, for this example we'll be using a hashed_id of <span class="code">'abcde12345'</span>. Just substitute your hashed_id anywhere you see <span class="code">'abcde12345'</span>.

First, build the base URL:

<pre><code class="language-markup">
http://fast.wistia.com/embed/iframe/abcde12345
</code></pre>

Next, customize the video parameters:

<pre><code class="language-markup">http://fast.wistia.com/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false</code></pre>

Then, add plugin parameters. Plugins have parameters in their own 
namespace, using bracket notation:

<pre><code class="language-markup">http://fast.wistia.com/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin[socialbar][version]=v1&plugin[socialbar][buttons]=embed-twitter-facebook</code></pre>

It's usually good practice to URL encode both keys and values:

<pre><code class="language-markup">
http://fast.wistia.com/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin%5Bsocialbar%5D%5Bversion%5D=v1&plugin%5Bsocialbar%5D%5Bbuttons%5D=embed-twitter-facebook</code></pre>

Finally we drop this src into an iframe, where we also specify the width and height. Note that the width and height should be the size of the entire embed (the video plus the plugins).

<pre><code class="language-markup">
&lt;iframe src="http://fast.wistia.com/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin%5Bsocialbar%5D%5Bversion%5D=v1&plugin%5Bsocialbar%5D%5Bbuttons%5D=embed-twitter-facebook" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="387"&gt;&lt;/iframe&gt;
</code></pre>


## Building a JavaScript API embed code

Sometimes it's important to embed a video directly on the page (rather
than using an iframe).  In this case we do the following:

First, add a container to the page, and make sure it has a unique ID attribute:

<pre><code class="language-markup">
  &lt;div id="wistia_abcde12345" style="height:387px;width:640px" data-video-width="640" data-video-height="360"&gt;
    this is displayed if javascript is disabled
  &lt;/div&gt;
</code></pre>


Next, including all the required external scripts:

<pre><code class="language-markup">
  &lt;script src="http://fast.wistia.com/static/E-v1.js"&gt;&lt;/script&gt;
  &lt;script src="http://fast.wistia.com/static/concat/E-v1-gridify,socialbar-v1.js"&gt;&lt;/script&gt;
</code></pre>

Now initialize the embed and pass in the video parameters:

<pre><code class="language-markup">
&lt;script&gt;
wistiaEmbed = Wistia.embed("abcde12345", {
  playerColor: "ff0000",
  fullscreenButton: false,
  container: "wistia_abcde12345"
});
&lt;/script&gt;
</code></pre>


Also initialize the socialbar plugin:

<pre><code class="language-markup">
&lt;script&gt;
Wistia.plugin.socialbar(wistiaEmbed, {
  version: "v1",
  buttons: "embed-twitter-facebook"
});
&lt;/script&gt;
</code></pre>


Now that you've finished your API embed, you can access the [JavaScript API](/player-api.html) and 
do cool stuff!

<pre><code class="language-markup">
&lt;script&gt;
wistiaEmbed.bind("end", function() {
  alert("The video has ended!");
});
wistiaEmbed.bind("timechange", function(t) {
  if (t &gt; 25 && !highlightedCallToAction) {
    highlightCallToAction();
  }
});
wistiaEmbed.volume(.5);
&lt;/script&gt;
</code></pre>

