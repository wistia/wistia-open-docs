---
title: Constructing an embed code
layout: post
category: For Developers
description: Learn how to construct an embed code starting with just the video ID!
footer: 'for_developers'
post_intro: <p>As long as you have the <code>hashed_id</code> for a video, you can produce an embed code without even hitting our servers.</p><p>It's pretty easy, check it out!</p>
---

The hashed_id is a unique identifier to a video within the Wistia system. You can get hashed_ids for your videos via the <a href="{{ '/data-api' | post_url }}">Data API</a>.

We pass parameters into an iframe embed via the src attribute. They're just simple URL parameters, with the keys namespaced by brackets.

For example, say we have the hashed_id of the video we want to embed, but we
want to change the color of the play button, hide the fullscreen button, and
add a socialbar. Here's how we do it:

{{ "Before you get too deep here, you might want to check out our <a href='/doc/oembed'>oEmbed endpoint</a>. It provides a simple way to generate Wistia embed codes without you having to write much code. The only downside is you'll have to make an extra request to get an embed code." | note }}

## Building an iframe embed code

Ok, for this example we'll be using a hashed_id of `'abcde12345'`. Just substitute your hashed_id anywhere you see `'abcde12345'`.

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


Now that you've finished your API embed, you can access the [JavaScript API]({{ '/player-api' | post_url }}) and 
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


## Building an SEO embed code

Unfortunately you can't programmatically build an SEO-compatible embed yourself right now.

Google's video search is a bit antiquated in that it can't properly detect videos inside iframes 
(which is our preferred method of embedding video). They only recognize the &lt;object&gt;&lt;embed&gt; style embed codes.

The good news is you can easily use our <a href="{{ '/oembed' | post_url }}">oEmbed endpoint</a> to generate an SEO embed for you.
