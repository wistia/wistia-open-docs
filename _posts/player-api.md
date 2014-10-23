---
layout: post
api: true
api_warning: true
special_category_link: developers
category: Developers
title: JavaScript Player API
description: The Wistia player has a built-in JavaScript API, providing you with a variety of ways to create awesome functions and interact with the player.
post_intro: "<p>The Wistia video player has a JavaScript API which supports a number of ways to interact with and control the video player. It uses the same interface for both Flash and HTML5 versions of the player, and provides convenience functions to accomplish common goals.</p>"
---


## Using the API

It is possible to access the JavaScript API using any embed type: *API*, *SEO*,
or *iframe*. If you are using iframe embeds, you will need to insert the
[iframe player API script](#using_iframes_and_the_player_api) at the bottom of 
your page.

If you are also looking to construct embed codes, refer to
the [construct an embed code]({{ '/construct-an-embed-code' | post_url }})
guide. Available options for embed codes are listed in
[Embedding Options Documentation]({{ '/embed-options' | post_url }}).

**Playlists**

If you are working with Playlists (i.e. multiple-video players), please refer
to the [Playlist API]({{ '/playlist-api' | post_url }}).

**Popovers**

If you are working with popovers, we've got a page setup specifically for that
as well. Check out the [popover customization options]({{ '/popover-customization' | post_url }}).

### The 'wistiaEmbed' Variable

The *API* version of the Wistia embed codes includes a variable `wistiaEmbed`
to make this easy.

<code class="full_width">var wistiaEmbed = Wistia.embed("bfc34aa023", { ... options ... });</code>

You can reference the video object using the `wistiaEmbed` variable.  If you
have multiple videos on your page, you should update this variable to something
specific to this video.

As an example, if the following JS code is executed, the video will start to play:

<code class="full_width">wistiaEmbed.play();</code>

### Using iframes and the Player API

There is a script that can be used to access the player API from
outside the iframe. It has the same interface as the normal player API,
but with the caveat that it won't work in IE7 and below (it won't break
anything, it just doesn't work). If you aren't too concerned with outdated
browsers, this is the recommended way to access the player API.

Put the following anywhere in the HTML document:

{% codeblock wistia_js.js %}
<script src="//fast.wistia.net/static/iframe-api-v1.js"></script>
{% endcodeblock %}

{{ "The iframe-api script should be placed after all the iframe embeds on your page (ie near the bottom). Once it has run, all Wistia iframes on the page will have the `wistiaApi` property." | note }}

Now you can access the API by getting the `wistiaApi` property from the iframe element.
You can assign an ID to each wistia iframe so you can get an easy handle to it.
Take a look:

{% codeblock wistia_js.js %}
wistiaEmbed = document.getElementById("my_iframe").wistiaApi;
wistiaEmbed.bind("end", function() {
  alert("The video ended!");
});
wistiaEmbed.time(30).play();
{% endcodeblock %}

or in jQuery:

{% codeblock wistia_js.js %}
wistiaEmbed = jQuery("#my_iframe")[0].wistiaApi;
wistiaEmbed.bind("end", function() {
  alert("The video ended!");
});
wistiaEmbed.time(30).play();
{% endcodeblock %}

### Using Popovers and the Player API

Wistia Popovers are just iframes that are injected into the page. If you include the `iframe API` script as detailed above, you can bind to a special jQuery event to get at it. Note, you'll need to use `wistiaJQuery` (it's included in our popover code) to catch the `wistia-popover` event.

{% codeblock wistia_js.js %}
wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
  iframe.wistiaApi.time(30).play();
  iframe.wistiaApi.bind("end", function() {
    alert("The video ended!");
  });
});
{% endcodeblock %}

You can also capture an event when a Wistia popover is closed.

{% codeblock wistia_js.js %}
wistiaJQuery(document).bind("wistia-popover-close", function() {
  alert("A Wistia video was closed!");
});
{% endcodeblock %}

## Player API Methods

Method                  | Description
------                  | -----------
bind(event, function)   | This lets you execute a function when a video event occurs. `event` expects a string. Refer to the _Player API Events_ section below to see possible values.
duration()              | Returns the length of the video in seconds
email(email)            | Associates the email string with this view of the video.
hashedId()              | Returns the hashedId of the video
height()                | Gets the current height of the embed (the video plus any plugins above or below).
height(h)               | Sets the height of the embed. The video will be resized to fit with the plugins fully visible.
name()                  | Returns the name of the video
pause()                 | This causes the video player to pause the video if it is currently playing.
play()                  | This causes the video player to start (or continue playing from a paused state) playing the video.
ready(function)         | This method is only necessary for advanced use cases. It lets you run a function as soon as the video is loaded and ready to be played.
remove()                | Removes the video from the page and cancels any asynchronous operations.
state()                 | This returns the current state of the video player: "beforeplay", "ended", "playing", "paused".
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


## JavaScript Player API Events

Use these events when working with the `bind` and `unbind` methods.

Name          | Arguments               | Description
----          | ---------               | -----------
conversion    | type, email, firstName, lastName | Fired when an email is entered in Turnstile. Type will be: 'pre-roll-email', 'mid-roll-email', or 'post-roll-email'. `email`, `firstName`, and `lastName` are the viewer's submitted details. The name fields will be undefined if not requested by the video (i.e. disabled in [customize]({{ '/customizing-your-video' | post_url }})).
end           |                         | Fired when the video's state changes from anything to "ended".
heightchange  | height                  | Fired when the height of the embed code changes.
pause         |                         | Fired when the video's state changes from anything to "paused".
play          |                         | Fired when the video's state changes from anything to "playing".
secondchange  | second                  | Fired once each time the second of the video changes.
seek          | currentTime, lastTime   | Fired when the difference between the current time and last time is greater than 1.5 seconds.
timechange    | time                    | Fired when the video's time changes. Runs on a timeout once every 300ms.
volumechange  | volume                  | Fired when the video's volume changes.
widthchange   | width                   | Fired when the width of the embed code changes.


---

## Player API Examples

To get you making video magic as fast as possible, here are some examples of
common JavaScript player API projects. We have also moved many of the more
involved examples over to our [Demobin](http://wistia.github.com/demobin) for
your review.

### Start Video Playback at a Specific Time

In this example, you want the video to skip ahead a certain amount of time when
the viewer presses 'play'. This utilizes the `bind on play` functionality built
into the API.

{% codeblock wistia_js.js %}
<div id="wistia_29b0fbf547" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
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
  return this.unbind;
});
</script>
{% endcodeblock %}

---

### Trigger an event at a specific time

In this example, let's assume that we want to fire a JavaScript function when
the viewer gets 60 seconds into the video. In order to accomplish this, we only
need the bind method from the API.  The JavaScript code can be seen below:

{% codeblock wistia_js.js %}
<script type="text/JavaScript">
wistiaEmbed.bind("secondchange", function (s) {
  if(s === 60) {
    // Insert code to be executed here
  }
});
</script>
{% endcodeblock %}

The bind function monitors the state of the video in an event loop. Every 300
milliseconds, it checks to see if the video's time position has changed.
If it has, it runs your function with the current second (s) as the only argument.

The `secondchange` will only run once per second while the video is playing.
If you need more fine-grained control, try binding to the `timechange` event instead.

---

### A/B testing videos against each other

Using an API embed code as a template, we can switch out hashed ID's for multiple
videos easily. Comparing the viewer analytics in the background will tell you
which video reigned supreme!

Check out the [A/B Testing Demo](http://wistia.github.com/demobin/ab-testing-tool/)
for more on how this will work.

---


### Add Chaptering Links to your Embedded Video

Using the `.time()` method from the Player API, you can add chapters quickly and easily.

Check out the [Chaptering Demo](http://wistia.github.com/demobin/chaptering/)
for more on how this works.

---

### Take Action When the Video Ends

Using the built-in bindings, you can "listen" for events like video end, and
take action.

In the example below, we send an alert AND redirect the viewer on video end.
Redirecting a viewer after the video is over isn't something we recommend -
unless you have given them a heads up it is going to happen, it can be a very
jarring experience.

{% codeblock wistia_js.js %}
<script type="text/javascript">
wistiaEmbed.bind("end", function () {
  alert("Hello world!");
  window.location.href == "http://newUrl.com";
});
</script>
{% endcodeblock %}


### Return the Email from Turnstile

With [Wistia Turnstile](http://wistia.com/product/turnstile), you can require
your viewers to enter an email address to view video content on your webpage.
Using the "conversion" event, you can trigger actions based on the email and name being
entered - including passing that email on to another service!

{% codeblock wistia_js.js %}
<script type="text/javascript">
wistiaEmbed.bind("conversion", function(type, email, firstName, lastName) {
  // function to be executed
});
</script>
{% endcodeblock %}

At this time, the `type` of conversion can be "pre-roll-email",
"mid-roll-email", or "post-roll-email". The arguments `email`, `firstName`, and `lastName` are the viewer's details as entered into turnstile, where `firstName` and `lastName` are undefined if not required.

---

### Mute the Video on Load

{% codeblock wistia_js.js %}
<div id="wistia_tlb0v41zjd" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("tlb0v41zjd", {
  version: "v1",
  videoWidth: 640,
  videoHeight: 360,
  volumeControl: true,
  controlsVisibleOnLoad: true,
  playerColor: "688AAD",
  volume: 0
});
</script>
{% endcodeblock %}

---

### Selective Autoplay (Autoplay for viewers from specific sources)

Selective Autoplay will automatically play your embedded video based on the
presence of a query string you specify.

See more about how it works on the
[Selective Autoplay Demo Page](http://wistia.github.com/demobin/selective-autoplay).

---

### Alert on play just once

With the bind method, every time "play" is triggered, your function will be
executed. But sometimes a user will scroll back to the beginning and hit Play
again. If you want to avoid your function being executed again, you need to
unbind it.

Our library contains a special unbinding pattern for convenience. In the
callback function, just return `this.unbind`.

{% codeblock wistia_js.js %}
<script type="text/javascript">
wistiaEmbed.bind("play", function() {
  alert("Played the first time!");
  return this.unbind;
});
</script>
{% endcodeblock %}

If you are performing asynchronous operations or need more control over
unbinding, you can use the `unbind` method as shown below.

{% codeblock wistia_js.js %}
<script type="text/javascript">
function playFunc() {
  alert("Played the first time!");
  wistiaEmbed.unbind("play", playFunc);
}

wistiaEmbed.bind("play", playFunc);
</script>
{% endcodeblock %}

---
### Add Custom Pre-Roll to Your Videos

By binding the loading of a second video on the 'end' event of the first one,
it is easy to create your own custom 'pre-roll' videos.

See the full demo on our
[Custom Pre-Roll Demo Page](http://wistia.github.com/demobin/custom-pre-roll/).

---

### Playing a second video on Post Roll click

By binding a click event onto the video container and verifying that the post
roll has run, you can play a second video in the same container (Post Roll:
"Click here to watch your free video!" and then have the video actually play in
the same video container).

See the full demo on our
[Post-Roll Video Play Demo Page](http://wistia.github.com/demobin/post-roll-video-play/).

---

### Creating HTML5-only Embed Codes

Every single Wistia embed code type automatically supports HTML5 when it
detects a device that requires it (ie. iPhones, iPads).  There is no extra work
needed - standard HTML embed codes will work on your iOS device out-of-the-box.

That being said, there are (potentially) some instances where HTML5 only is
advisable. This is easy using the playerPreference parameter:

`&playerPreference=html5`

So a full HTML5 player embed code would look like this:

<code class="full_width">&lt;iframe
src="http://fast.wistia.net/embed/medias/e71f9baf4d?playerPreference=html5"
width="960" height="450" frameborder="0"&gt;&lt;/iframe&gt;</code>

HTML5 player instances are still controllable through the normal Player API
methods.

---

### Set the background of your video to transparent

If you are embedding a Wistia video on a website with a white background, the
natural black background of the Wistia player can look a little out of place.
Instead, using a `wmode=transparent` string parameter, the background of the
player loading can be set to transparent.

So a finished iframe embed code would look something like this:

{% codeblock iframe_example.html %}
<iframe src="http://fast.wistia.net/embed/iframe/e4a27b971d?
controlsVisibleOnLoad=true&playerColor=688AAD&version=v1
&videoHeight=360&videoWidth=640&wmode=transparent"
allowtransparency="true" frameborder="0" scrolling="no"
class="wistia_embed" name="wistia_embed" width="640"
height="360"></iframe>
{% endcodeblock %}


## Embedding Options

If you just want to set some different options for your embed code, check out
what's available in our
[Embedding Options Documentation]({{ '/embed-options' | post_url }}).
