---
layout: post
api: true
category: For Developers
title: Wistia Video Player API
description: The Wistia player has a built in Javascript API, providing you with a variety of ways to create awesome functions and interact with the player.
post_intro: "<p>The Wistia video player has a JavaScript API which supports a number of ways to interact with and control the video player. It uses the same interface for both Flash and HTML5 versions of the player, and provides convenience functions to accomplish common goals.</p><p><strong>Note:</strong> for custom javascript you write to interface with a Wistia embed, add it to your source <em>under</em> the Wistia embed (ie. the footer).</p><p><strong>Popovers:</strong> We've got a page setup if you are looking for <a href='http://wistia.com/doc/popover-customization'>popover customization options</a>.</p>"
footer: 'for_developers'
---

## Using the API

It is possible to access the javascript API using any embed type: API, SEO, or iframe. If you are using the iframe API, you will need to insert the [iframe player API script](#using_popovers_and_the_player_api) at the bottom of your page. In our voyage for simplicity, we want to make the iframe API and Javascript interaction with it easier (so that someday only the iframe embed code type will be necessary).

If you are having trouble using the Player API, or just want to show off what you've built, our [dev-forum](http://dev-forum.wistia.com) is where it's at!

If you are also looking to construct embed codes, refer to [constructing an embed code]({{ '/construct-an-embed-code' | post_url }}).

### The 'wistiaEmbed' Variable

The *API* version of the Wistia embed codes includes a variable `wistiaEmbed` to make this easy.

<pre><code class="language-javascript">
var wistiaEmbed = Wistia.embed("bfc34aa023", { ... options ... });
</code></pre>

You can reference the video object using the **''wistiaEmbed''** variable.  If you have multiple videos on your page, you should update this variable to something specific to this video.

As an example, if the following JS code is executed, the video will start to play:

<pre><code class="language-javascript">wistiaEmbed.play();</code></pre>

### Using iframes and the Player API

There is a script that can be used to access the player API from 
outside the iframe. It has the same interface as the normal player API, 
but with the caveat that it won't work in IE7 and below (it won't break
anything, it just doesn't work). If you aren't too concerned with outdated 
browsers, this is the recommended way to access the player API.

Put the following just before the `</body>` tag:

<pre><code class="language-markup">&lt;script src="//fast.wistia.com/static/iframe-api-v1.js"&gt;&lt;/script&gt; </code></pre>

{{ "It must come after any iframe embeds on the page, so it <strong>cannot</strong> be added inside the <span class='code'>&lt;head&gt;</span> tag." | note }}

Now you can access the API by getting the `wistiaApi` property from the iframe element.
You can assign an ID to each wistia iframe so you can get an easy handle to it.
Take a look:

<pre><code class="language-javascript">
wistiaEmbed = document.getElementById("my_iframe").wistiaApi;
wistiaEmbed.bind("end", function() {
  alert("The video ended!");
});
wistiaEmbed.time(30).play();
</code></pre>

or in jQuery:

<pre><code class="language-javascript">
wistiaEmbed = jQuery("#my_iframe")[0].wistiaApi;
wistiaEmbed.bind("end", function() {
  alert("The video ended!");
});
wistiaEmbed.time(30).play();
</code></pre>

### Using Popovers and the Player API

Wistia Popovers are just iframes that are injected into the page. If you include the `iframe API` script as detailed above, you can bind to a special jQuery event to get at it. Note, you'll need to use `wistiaJQuery` (it's included in our popover code) to catch the `wistia-popover` event.

<pre><code class="language-javascript">
wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
  iframe.wistiaApi.time(30).play();
  iframe.wistiaApi.bind("end", function() {
    alert("The video ended!");
  });
});
</code></pre>

You can also capture an event when a Wistia popover is closed.

<pre><code class="language-javascript">
wistiaJQuery(document).bind("wistia-popover-close", function() {
  alert("A Wistia video was closed!");
});
</code></pre>

## Player API Methods

Method                  | Description
------                  | -----------
bind(event, function)   | This lets you execute a function when a video event occurs. Possible values for "event" are: "play", "pause", "end", "conversion", and "timechange".
duration()              | Returns the length of the video in seconds
height()                | Gets the current height of the embed (the video plus any plugins above or below).
height(h)               | Sets the height of the embed. The video will be resized to fit with the plugins fully visible.
name()                  | Returns the name of the video
pause()                 | This causes the video player to pause the video if it is currently playing.
play()                  | This causes the video player to start (or continue playing from a paused state) playing the video.
ready(function)         | This method is only necessary for advanced use cases. It lets you run a function as soon as the video is loaded and ready to be played.
setEmail(email)         | Associates the email string with this view of the video.
state()                 | This returns the current state of the video player: "unknown" (a.k.a not started), "ended", "playing", "paused".
time()                  | This returns the viewer's current position in the video (in seconds).
time(t)                 | This causes the video player to seek to time specified by the ''t'' parameter (in seconds).
unbind(event, function) | Lets you remove a previously binded function from an event. If function is not specified, all bindings for the event will be removed.
videoHeight()           | Gets the current height of the video, excluding any plugins.
videoHeight(h)          | Sets the height of the video. The height of the embed will be automatically resized to fit the plugins.
videoWidth()            | Gets the current width of the video, excluding any plugins.
videoWidth(w)           | Sets the width of the video. The width of the embed will be automatically resized to fit the plugins.
volume()                | Returns the current volume level. Value between 0 and 1.
volume(level)           | Sets the current volume level. 'level' is a decimal value between 0 and 1.
width()                 | Gets the current width of the embed (the video plus any plugins on the left and right).
width(w)                | Sets the width of the embed. The video will be resized to fit with the plugins fully visible.


---

## Player API Examples

To get you making video magic as fast as possible, here are some examples of common javascript player API projects. We have also moved many of the more involved examples over to our [demobin](http://wistia.github.com/demobin) for your review.

### Start Video Playback at a Specific Time

In this example, you want the video to skip ahead a certain amount of time when the viewer presses 'play'. This utilizes the `bind on play` functionality built into the API.

<pre><code class="language-javascript">
<div id="wistia_29b0fbf547" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("29b0fbf547", {
  version: "v1",
  videoWidth: 640,
  videoHeight: 360,
  playerColor: "688AAD"
});
// insert the 'bind on play' function
wistiaEmbed.bind('play', function() {
  // use the .time() method to jump ahead 10 seconds
  wistiaEmbed.time(10);
});
</script>
</code></pre>

---

### Trigger an event at a specific time

In this example, let's assume that we want to fire a Javascript function when the viewer gets 60 seconds into the video. In order to accomplish this, we only need the bind method from the API.  The Javascript code can be seen below:

<pre><code class="language-javascript">
<script type="text/javascript">
wistiaEmbed.bind("timechange", function (t) {
  if(t > 60 && t < 62) {
    // Insert code to be executed here
  }
});
</script>
</code></pre>

The bind function monitors the state of the video in an event loop. Every 500 milliseconds, it checks to see if the video's time position has changed. If it has, it runs your function with the current time (t) as the only argument.

---

### Add Chaptering Links to your Embedded Video

Using the `.time()` method from the Player API, you can add chapters quickly and easily.

Check out the [Chaptering Demo](http://wistia.github.com/demobin/chaptering/) for more on how this works.

---

### Alert when the video ends

<pre><code class="language-javascript">
<script type="text/javascript">
wistiaEmbed.bind("end", function () {
  alert("Hello world!");
});
</script>
</code></pre>

---

### Return the Email from Turnstile

With [Wistia Turnstile](http://wistia.com/product/turnstile), you can require your viewers to enter an email address to view video content on your webpage.  Using the "conversion" event, you can trigger actions based on the email being entered - including passing that email on to another service!

<pre><code class="language-javascript">
<script type="text/javascript">
wistiaEmbed.bind("conversion", function(type, val) {
  // function to be executed
});
</script>
</code></pre>

At this time, the "type" of conversion is always 'pre-roll-email', and the "val" is the viewers email address.

---

### Mute the Video on Load

<pre><code class="language-javascript">
&lt;div id="wistia_tlb0v41zjd" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360"&gt;&nbsp;&lt;/div&gt;
&lt;script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"&gt;&lt;/script&gt;
&lt;script&gt;
wistiaEmbed = Wistia.embed("tlb0v41zjd", {
  version: "v1",
  videoWidth: 640,
  videoHeight: 360,
  volumeControl: true,
  controlsVisibleOnLoad: true,
  playerColor: "688AAD"
});
wistiaEmbed.volume(0);
&lt;/script&gt;
</code></pre>

---

### Selective Autoplay (Autoplay for viewers from specific sources)

Selective Autoplay will automatically play your embedded video based on the presence of a query string you specify.

See more about how it works on the [Selective Autoplay Demo Page](http://wistia.github.com/demobin/selective-autoplay).

---

### Alert on play just once

With the bind method, every time "play" is triggered, your function will be executed. But sometimes a user will scroll back to the beginning and hit Play again. If you want to avoid your function being executed again, you need to unbind it.

<pre><code class="language-javascript">
<script type="text/javascript">
function playFunc() {
  alert("Played the first time!");
  wistiaEmbed.unbind("play", playFunc);
}

wistiaEmbed.bind("play", playFunc);
</script>
</code></pre>

---
### Add Custom Pre-Roll to Your Videos

By binding the loading of a second video on the 'end' event of the first one, it is easy to create your own custom 'pre-roll' videos.

See the full demo on our [Custom Pre-Roll Demo Page](http://wistia.github.com/demobin/custom-pre-roll/).

---

### Playing a second video on Post Roll click

By binding a click event onto the video container and verifying that the post roll has run, you can play a second video in the same container (Post Roll: "Click here to watch your free video!" and then have the video actually play in the same video container).

See the full demo on our [Post-Roll Video Play Demo Page](http://wistia.github.com/demobin/post-roll-video-play/).

---

### Creating HTML5-only Embed Codes

Every single Wistia embed code type automatically supports HTML5 when it detects a device that requires it (ie. iPhones, iPads).  There is no extra work needed - standard HTML embed codes will work on your iOS device out-of-the-box.

That being said, there are (potentially) some instances where HTML5 only is advisable. This is easy using the platformPreference parameter:

`&platformPreference=html5`

So a full HTML5 player embed code would look like this:

<pre><code class='language-markup'>
&lt;iframe width="960" height="450" src="http://app.wistia.com/embed/medias/e71f9baf4d?platformPreference=html5" frameborder="0"&gt;&lt;/iframe&gt;
</code></pre>

HTML5 player instances are still controllable through the normal Player API methods.

---

### Set the background of your video to transparent

If you are embedding a Wistia video on a website with a white background, the natural black background of the Wistia player can look a little out of place. Instead, using a `wmode=transparent` string parameter, the background of the player loading can be set to transparent.

So a finished iframe embed code would look something like this:

<pre><code class="language-markup">
<iframe src="http://fast.wistia.com/embed/iframe/e4a27b971d?
controlsVisibleOnLoad=true&playerColor=688AAD&version=v1
&videoHeight=360&videoWidth=640&wmode=transparent" 
allowtransparency="true" frameborder="0" scrolling="no" 
class="wistia_embed" name="wistia_embed" width="640"
height="360"></iframe>
</code></pre>


