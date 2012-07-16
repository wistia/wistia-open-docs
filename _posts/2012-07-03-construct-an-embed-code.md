---
title: Constructing an embed code
layout: post
category: For Developers
for_developers: true
---

As long as you have the hashed_id for a video, you can easily produce an embed code without even hitting our servers!

The hashed_id is a unique identifier to a video within the Wistia system. You can get hashed_ids for your videos via the [Data API](http://wistia.com/doc/wistia_api.html).

We pass parameters into an iframe embed via the src attribute. They're just 
simple URL parameters, with the keys namespaced by brackets.

For example, say we have the hashed_id of the video we want to embed, but we
want to change the color of the play button, hide the fullscreen button, and
add a socialbar. Here's how we do it...

## Building an iframe embed code

Ok, for this example we'll be using a hashed_id of <span class="code">'abcde12345'</span>. Just substitute your hashed_id anywhere you see <span class="code">'abcde12345'</span>.

First, build the base URL:

<div class="code">http://fast.wistia.com/embed/iframe/abcde12345</div>

Next, customize the video parameters:

<div class="code"><pre>http://fast.wistia.com/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false</pre></div>

Then, add plugin parameters. Plugins have parameters in their own 
namespace, using bracket notation:

<div class="code"><pre>http://fast.wistia.com/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin[socialbar][version]=v1&plugin[socialbar][buttons]=embed-twitter-facebook</pre></div>

It's usually good practice to URL encode both keys and values:

<div class="code"><pre>http://fast.wistia.com/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin%5Bsocialbar%5D%5Bversion%5D=v1&plugin%5Bsocialbar%5D%5Bbuttons%5D=embed-twitter-facebook</pre></div>

Finally we drop this src into an iframe, where we also specify the width and height. Note that the width and height should be the size of the entire embed (the video plus the plugins).

<div class="code"><pre>
&lt;iframe src="http://fast.wistia.com/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin%5Bsocialbar%5D%5Bversion%5D=v1&plugin%5Bsocialbar%5D%5Bbuttons%5D=embed-twitter-facebook" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="387"&gt;&lt;/iframe&gt;
</pre></div>


## Building a JavaScript API embed code

Sometimes it's important to embed a video directly on the page (rather
than using an iframe).  In this case we do the following:

First, add a container to the page, and make sure it has a unique ID attribute:

<div class="code"><pre>
  &lt;div id="wistia_abcde12345" style="height:387px;width:640px" data-video-width="640" data-video-height="360"&gt;
    this is displayed if javascript is disabled
  &lt;/div&gt;
</pre></div>


Next, including all the required external scripts:

<div class="code"><pre>
  &lt;script src="http://fast.wistia.com/static/E-v1.js"&gt;&lt;/script&gt;
  &lt;script src="http://fast.wistia.com/static/concat/E-v1-gridify,socialbar-v1.js"&gt;&lt;/script&gt;
</pre></div>

Now initialize the embed and pass in the video parameters:

<div class="code"><pre>
&lt;script&gt;
wistiaEmbed = Wistia.embed("abcde12345", {
  playerColor: "ff0000",
  fullscreenButton: false,
  container: "wistia_abcde12345"
});
&lt;/script&gt;
</pre></div>


Also initialize the socialbar plugin:

<div class="code"><pre>
&lt;script&gt;
Wistia.plugin.socialbar(wistiaEmbed, {
  version: "v1",
  buttons: "embed-twitter-facebook"
});
&lt;/script&gt;
</pre>
</div>


Now that you've finished your API embed, you can access the [JavaScript API](/player-api.html) and 
do cool stuff!

<div class="code"><pre>
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
</pre></div>

---

