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
or *iframe*.

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

If you're using an [iframe embed]({{ '/embedding#iframe_embed' | post_url }}), you can access the API by getting the `wistiaApi` property from the iframe element.

By assigning an ID to each wistia iframe, you can get an easy handle to it.
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

Wistia Popovers are just iframes that are injected into the page. If you include E-v1.js (AKA the Wistia library: `<script src="//fast.wistia.net/assets/external/E-v1.js" async></script>`) on the page, you can bind to a special jQuery event to get at it. Note, you'll need to use `wistiaJQuery` (it's included in our popover code) to catch the `wistia-popover` event.

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

<div style="display:none;" class="navigable_start"></div>

### addToPlaylist(hashedId, [options])

A video has a "playlist", which is a list of videos to play in sequence. Use
this method to push more videos onto the queue. When a video is finished
playing, it will play the next one in the playlist.

{% codeblock wistia_js.js %}
video.addToPlaylist("abcde12345", {
  playerColor: "00ff00"
});
{% endcodeblock %}

Before using this, you might want to consider if [embed and playlist links]({{ '/embed-links' | post_url }})
cover your use case.

### aspect()

Returns the aspect ratio (width / height) of the originally uploaded video.

{% codeblock wistia_js.js %}
if (video.aspect() < 1) {
  console.log("vertical video");
} else if (video.aspect() > 1) {
  console.log("horizontal video");
} else {
  console.log("This video is square.");
}
{% endcodeblock %}

### betweenTimes(startTime, endTime, callbackFn)

Run a callback function exactly once when the viewer is between the given times. This can run multiple times if the viewer leaves the time interval and re-enters it (either by seeking or by playing through from before).

{% codeblock wistia_js.js %}
video.betweenTimes(30, 45, function() {
  console.log(
    "Welcome to some time between 30 and 45 seconds! That's " + video.time() +
    " seconds, to be more precise."
  );
});
{% endcodeblock %}

### bind(eventType, callbackFn)

Runs a callback function when a specific event is triggered. Refer to the
_Player API Events_ section below to see how to respond to different events.

{% codeblock wistia_js.js %}
video.bind("play", function() {
  console.log("the video played!");
});

video.bind("timechange", function(t) {
  console.log("the time changed to " + t);
});

video.bind("end", function(t) {
  console.log("the video ended");
});
{% endcodeblock %}

### duration()

Returns the duration of the video in seconds. This will return 0 until
`video.hasData()` is true.

{% codeblock wistia_js.js %}
showVideoDurationOnMyPage(video.duration())
{% endcodeblock %}

### email()

Returns the email associated with this viewing session. If no email is
associated, it will return null.

An email can be associated with a viewing session by:

- calling `video.email('the@email.com')`
- setting the `email` embed options
- entering their email via Turnstile
- adding `wemail=the%40email.com` to the URL of the page.

Once an email has been saved for a viewer, it will persist for that web page
until they clear their localStorage.

{% codeblock wistia_js.js %}
recordViewerEmail(video.email());
{% endcodeblock %}

### email(val)

Associates the view of this video with the given email value. This email will
appear in stats for the video.

{% codeblock wistia_js.js %}
video.email(emailForThisUserInMySystem);
{% endcodeblock %}


### embedded()

Returns true if the video has been embedded, false if it hasn't yet. We define
"embedded" as the video's markup having been visibly injected into the DOM.

{% codeblock wistia_js.js %}
if (video.embedded()) {
  // do this thing
}
{% endcodeblock %}

### embedded(callbackFn)

Runs the callback function immediately if the video has been embedded already.
If it has not been embedded yet, it queues the callback function until it is
embedded.

{% codeblock wistia_js.js %}
video.embedded(function() {
  // run this function when/if the video is embedded.
  // this will usually fire immediately after `hasData(callbackFn)`.
});
{% endcodeblock %}

### hasData()

Returns true if the video has received data from the Wistia server, false if
not. The data includes information like which video files are available, the
name and duration of the video, and its customizations.

### hasData(callbackFn)

Runs the callback function immediately if the video has received data already.
If it has not received data yet, it queues the callback function until it
is received.

{% codeblock wistia_js.js %}
video.hasData(function() {
  // run this function when/if the video has data.
  // this will usually fire immediately before `embedded(callbackFn)`.
});
{% endcodeblock %}

### hashedId()

Returns the hashed ID associated with this video. The hashed ID is an
alphanumeric string that uniquely identifies your video in Wistia.

### height()

Returns the current height of the video container.

{% codeblock wistia_js.js %}
// e.g. set the height of <div id="next_to_video"> to match the video.
$("#next_to_video").height(video.height());
{% endcodeblock %}

### height(val, [options])

Sets the height of the video container to `val`. It is expected that `val` is
an integer. Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the width of the video will
also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.height(360);
video.height(400, { constrain: true });
{% endcodeblock %}

### name()

Returns the name of the video, as defined in the Wistia application. Returns
null until `hasData()` is true.

{% codeblock wistia_js.js %}
console.log("Thank you for watching " + video.name() + "!");
{% endcodeblock %}

### onCrossTime(time, callbackFn)

Runs the callback function when the time of the video moves from _before_ `time`
to _after_ `time`. It is expected that `time` is a decimal value specified in
seconds.

If the callback function has already fired and the viewer seeks _before_
`time`, and allows the video to play until _after_ `time` again, the callback
WILL fire again. If you only want this to fire once, consider using a boolean
r `unbindOnCrossTime`.

This method is meant to be used with "gates" or CTAs. For example, perhaps you
have a call to action that should appear after the 30 second mark in your
video. Code to show that might look like this:

{% codeblock wistia_js.js %}
video.onCrossTime(30, function() {
  showMyCustomCTA();
});
{% endcodeblock %}

To only show it once via boolean:

{% codeblock wistia_js.js %}
var showedCTA = false;
video.onCrossTime(30, function() {
  if (showedCTA) {
    return;
  }
  showedCTA = true;
  showMyCustomCTA();
});
{% endcodeblock %}

To only show it once by unbinding:

{% codeblock wistia_js.js %}
var oneTimeCtaFunction = function() {
  showMyCustomCTA();
  video.unbindOnCrossTime(30, oneTimeCtaFunction);
};
video.onCrossTime(30, oneTimeCtaFunction);
{% endcodeblock %}

### pause()

Pauses the video. If this is called and the video's state is "playing", it's
expected that it will change to "paused".

{% codeblock wistia_js.js %}
$("#custom_pause_button").click(function() {
  video.pause()
});
{% endcodeblock %}

### percentWatched()

Returns the percent of the video that has been watched as a decimal between 0
and 1. This is equivalent to computing `video.secondsWatched() /
Math.floor(video.duration())`.

{% codeblock wistia_js.js %}
$("#next_page").click(function() {
  if (video.percentWatched() > 0.9) {
    if (confirm("But you're so closed to finishing the video -- there's a prize at the end! Move on anyway?")) {
      goToNextPage();
    }
  } else {
    goToNextPage();
  }
});
{% endcodeblock %}

### play()

Plays the video. If this is called, it is expected that the state will change
to "playing".

NOTE: On iOS and other mobile devices, videos cannot be issued the "play"
command outside the context of a user-driven or video event. For example,
"click" and "touch" events are user-driven, and video events include "pause"
and "end" (you can bind to these using `video.bind(eventType, callbackFn)`
described above.  Because of this restriction, you should avoid calling
`play()` within a `setTimeout` callback or other asynchronous functions like
XHR or javascript promises.

Also for this reason, the `play()` method will never work with the iframe API
on mobile. This is because the iframe API makes use of javascript's
`postMessage` API, which is by its nature asynchronous.

Please refer to
[https://developer.apple.com/library/safari/documentation/AudioVideo/Conceptual/Using_HTML5_Audio_Video/Device-SpecificConsiderations/Device-SpecificConsiderations.html#//apple_ref/doc/uid/TP40009523-CH5-SW4](Apple's
Documentation) for the reasons behind this behavior.

### ready()

Returns true if the video is ready to be played, false if it is not. A video is
"ready" if:

1. it has data from the server,
2. it is embedded in the DOM,
3. its javascript interface is available,
4. metadata required to play is loaded,
5. it is not hidden via `display: none`.

The visibility requirement is grounded in practicality. That is, Flash videos
cannot be played when they are hidden via `display: none`, so supporting the
opposite with HTML5 videos would set up a fundamental difference between our
embed types. But it is also a common use case to embed a video in a hidden tab
or a custom lightbox. In these cases, if the video has `autoPlay=true`, it will
still defer playing until it becomes visible.

If you must have your video be hidden AND ready, consider moving it offscreen
like `position: absolute; left: -99999em` instead of using `display: none`.

### ready(callbackFn)

Runs the callback function immediately if the video is ready to be played.
If it is not ready yet, it queues the callback function until it is ready.

{% codeblock wistia_js.js %}
video.ready(function() {
  // run this function when/if the video is ready.
  // this will usually fire shortly after `embedded(callbackFn)`.
});
{% endcodeblock %}

### remove()

Removes the video from the page cleanly. This will do garbage collection,
cancel asynchronous operations, and stop the video from streaming, none of
which are unreliable if the video is simply removed from the DOM, e.g.
`$(".wistia_embed").empty().remove()`.

{% codeblock wistia_js.js %}
function nextPage() {
  $.get("/next_page.html", function() {
    // If a video is defined for this page, remove it cleanly before it is
    // removed from the DOM.
    if (currentVideo) {
      currentVideo.remove();
      currentVideo = null;
    }
    $("#the_content").html(nextPageContent);
  });
}
{% endcodeblock %}

### replaceWith(hashedId, [options])

Replaces the content of the current video with the video identified by
`hashedId`. This video will be loaded with all its customizations, which can be
overridden in the `options` object. This method can be used in conjunction with
`addToPlaylist(hashedId, [options])` to create custom playlist implementations.

In addition to the normal [embed options]({{ '/embed-options' | post_url }}),
you can set the `transition` option, which defines how to visually transition
to the new video. Available values are "slide", "fade", "crossfade", and
"none". By default, "fade" is used.

{% codeblock wistia_js.js %}
$("#video_abcde12345").click(function() {
  video.replaceWith("abcde12345");
});
{% endcodeblock %}

Before using this, you might want to consider if
[embed and playlist links]({{ '/embed-links' | post_url }}) cover your use
case.

### secondsWatched()

Returns the number of unique seconds that have been watched for the video. This
does not include seconds that have been skipped by seeking.

{% codeblock wistia_js.js %}
video.bind("secondchange", function() {
  if (video.secondsWatched() >= 60) {
    console.log("You've watched over a full minute of this video!");
  }
});
{% endcodeblock %}

### secondsWatchedVector()

ADVANCED. Returns an array where each index represents the number of times the
viewer has watched each second of the video. For example, if a video is 10
seconds long and the viewer has watched the first three seconds, it will look
like this:

    [1, 1, 1, 0, 0, 0, 0, 0, 0, 0]

If the viewer has watched the entire video once and rewatched the first 5
seconds, it will look like this:

    [2, 2, 2, 2, 2, 1, 1, 1, 1, 1]

This can be used to quickly determine if a viewer has missed or rewatched an
important part of a video.

{% codeblock wistia_js.js %}
video.bind("end", function() {
  var watchedVector = video.secondsWatchedVector();
  var watchedImportantSeconds = 0;
  for (var i = 4; i < 9; i++) {
    if (watchedVector[i] > 0) {
      watchedImportantSeconds += 1;
    }
  }
  if (watchedImportantSeconds < 2) {
    console.log("You should really go back and watch seconds 5 through 10. They're important!");
  }
});
{% endcodeblock %}

### state()

Returns the current state of the video as a string. Possible values are
"beforeplay", "playing", "paused", and "ended".

The most common use case for `state()` is implementing a play/pause toggle
button.

{% codeblock wistia_js.js %}
$("#toggle_play").click(function() {
  if (video.state() === "playing") {
    video.pause();
  } else {
    video.play();
  }
});
{% endcodeblock %}

### time()

Returns the current time of the video as a decimal in seconds.

{% codeblock wistia_js.js %}
$("#leave_comment").click(function() {
  $("#comment").html(commentData + "<span class='time'>left at " + video.time() + " seconds</span>")
});
{% endcodeblock %}

### time(val)

Seeks the video to the time defined by `val`. It is expected that `val` is a
decimal integer specified in seconds. This method will maintain the state of
the video: if the video was playing, it will continue playing after seek. If it
was not playing, the video will be paused.

NOTE: On iOS, when seeking from the "beforeplay" state, `time(val)` is subject
to the same restrictions as `video.play()`. However, there is a bit of nuance.
If you call `video.time(30)` before play, the video will not play per the
restrictions. But once the viewer clicks the video to play it, it will begin
playing 30 seconds in.

### unbind(eventType, callbackFn)

Unbind a callback that was setup with `bind(eventType, callbackFn)`.

{% codeblock wistia_js.js %}
var onPlayFunction = function() {
  doThisThing();
};
video.bind("play", onPlayFunction);
$("#dont_do_this_thing_ever").click(function() {
  video.unbind("play", onPlayFunction);
});
{% endcodeblock %}

Since binding until a condition is met is a common operation with videos, the
Player API also supports anonymous function unbinding.

{% codeblock wistia_js.js %}
video.bind("timechange", function(t) {
  if (t > 30) {
    console.log("Made it past 30 seconds! This will never fire again.");
    return video.unbind;
  }
});
{% endcodeblock %}

### unbindBetweenTimes(startTime, endTime, callbackFn)

Unbinds a callback that was setup with `betweenTimes(startTime, endTime,
callbackFn)`.

{% codeblock wistia_js.js %}
var welcomeTo30To45 = function() {
  console.log("Welcome to some time between 30 and 45 seconds! " + video.time() + " to be more precise.");
  video.unbindBetweenTimes(30, 45, welcomeTo30To45);
}
video.betweenTimes(30, 45, welcomeTo30To45);
{% endcodeblock %}

### unbindOnCrossTime(time, callbackFn)

Unbinds a callback that was setup with `onCrossTime(time, callbackFn)`.

{% codeblock wistia_js.js %}
var oneTimeCtaFunction = function() {
  showMyCustomCTA();
  video.unbindOnCrossTime(30, oneTimeCtaFunction);
};
video.onCrossTime(30, oneTimeCtaFunction);
{% endcodeblock %}

### videoHeight()

Returns the height of the video itself, without anything extra. For example, if
the socialbar is enabled and `video.height()` returns 388, then
`video.videoHeight()` will return 360 because the height of the Social Bar is
28px.

{% codeblock wistia_js.js %}
$("#video_matcher").height(video.videoHeight());
{% endcodeblock %}

### videoHeight(val, [options])

Sets the height of the video to `val`. It is expected that `val` is an integer.
Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the width of the video will
also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.videoHeight(360);
video.videoHeight(400, { constrain: true });
{% endcodeblock %}

### videoWidth()

Returns the width of the video itself, without anything extra. For example, if
the Presentation Sync lab is enabled and `video.width()` returns 1166, then
`video.videoWidth()` will return 640 because the width of the presentation is
526px.

{% codeblock wistia_js.js %}
$("#video_matcher").width(video.videoWidth());
{% endcodeblock %}

### videoWidth(val, [options])

Sets the width of the video to `val`. It is expected that `val` is an integer.
Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the width of the video will
also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.videoWidth(640);
video.videoWidth(640, { constrain: true });
{% endcodeblock %}

### volume()

Returns the current volume of the video as a decimal between 0 and 1. This
value is not dependable until `video.ready()` returns true.

{% codeblock wistia_js.js %}
$("#custom_volume_monitor").text(Math.round(video.volume() * 100) + "%")
{% endcodeblock %}

### volume(val)

Sets the volume to `val`. It is expected that `val` is a decimal between 0 and
1.

{% codeblock wistia_js.js %}
$("#custom_volume_slider").on("change", function() {
  video.volume($(this).val());
});
{% endcodeblock %}

### width()

Returns the current width of the video container.

{% codeblock wistia_js.js %}
// e.g. set the width of <div id="next_to_video"> to match the video.
$("#next_to_video").width(video.width());
{% endcodeblock %}

### width(val)

Sets the width of the video container to `val`. It is expected that `val` is
an integer. Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the width of the video will
also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.width(640);
video.width(700, { constrain: true });
{% endcodeblock %}

<div style="display:none;" class="navigable_end"></div>

## JavaScript Player API Events

Use these events when working with the `bind` and `unbind` methods.

<div style="display:none;" class="navigable_start"></div>

### conversion

Fired when an email is entered in Turnstile.

{% codeblock wistia_js.js %}
video.bind("conversion", function(email, firstName, lastName) {
  recordMyOwnData(email, firstName, lastName);
})
{% endcodeblock %}

### heightchange

Fired whenever the height of the embed changes. If you have element sizes or
positions that depend on the height of the video, you can bind to this event.

{% codeblock wistia_js.js %}
video.bind("heightchange", function() {
  console.log("The height changed to " + video.height());
});
{% endcodeblock %}

### pause

Fired when the video's state changes to "paused".

{% codeblock wistia_js.js %}
video.bind("pause", function() {
  console.log("The video was just paused!");
});
{% endcodeblock %}

### play

Fired when the video's state changes to "playing". This can fire multiple times
for a single viewing session since the viewer can repeatedly pause and play.

{% codeblock wistia_js.js %}
video.bind("play", function() {
  console.log("The video was just played!");
});
{% endcodeblock %}

### secondchange

Fired when the current second of the video has changed. The `second` argument
will always be passed as an integer. It is equivalent to
`Math.floor(video.time())`.

Technically this is a subset of the "timechange" event, and thus will always
fire _after_ "timechange" events but _before_ "seek" events.

{% codeblock wistia_js.js %}
video.bind("secondchange", function(s) {
  if (s === 30) {
    // do something at exactly 30 seconds
  }
});
{% endcodeblock %}

### seek

Our player will compare `currentTime` to `lastTime` once every 300ms and fire
this event if the difference is greater than 1.5 seconds.

Technically this is a subset of the "timechange" event, and thus will always
fire _after_ both "timechange" and "secondchange".

{% codeblock wistia_js.js %}
video.bind("seek", function(currentTime, lastTime) {
  console.log("Whoa, you jumped " + Math.abs(lastTime - currentTime) + " seconds!");
});
{% endcodeblock %}

### timechange

Our player will compare `currentTime` and `lastTime` once every 300ms and fire
this event if they are different.

Both "secondchange" and "seek" key off this event, and thus "timechange" will
always fire _before_ both "secondchange" and "seek".

{% codeblock wistia_js.js %}
video.bind("timechange", function(t) {
  updateCustomPlayHead(t);
});
{% endcodeblock %}

### volumechange

Fired when the volume changes.

{% codeblock wistia_js.js %}
video.bind("volumechange", function(v) {
  console.log("The volume changed to " + Math.round(v * 100) + "%");
});
{% endcodeblock %}

### widthchange

Fired whenever the width of the embed changes. If you have element sizes or
positions that depend on the width of the video, you can bind to this event.

{% codeblock wistia_js.js %}
video.bind("widthchange", function() {
  console.log("The width changed to " + video.width());
});
{% endcodeblock %}

<div style="display:none;" class="navigable_end"></div>


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

### Pause Other Videos When Another is Played

Don't like the barage of sound that comes from three different videos playing in the same
page? Sounds like you might need our trusty `pauseAllOthers` function.

{% codeblock wistia_js.js %}
<div id="wistia_9kksns1ede" class="wistia_embed" style="width:480px;height:270px;">&nbsp;</div>
<div id="wistia_oh34zbesuh" class="wistia_embed" style="width:480px;height:270px;">&nbsp;</div>
<div id="wistia_2jvt3wqkye" class="wistia_embed" style="width:480px;height:270px;">&nbsp;</div>

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>

<script>
wistiaEmbedA = Wistia.embed("9kksns1ede");
wistiaEmbedB = Wistia.embed("oh34zbesuh");
wistiaEmbedC = Wistia.embed("2jvt3wqkye");
</script>

<script>
// grabs all other embeds on the page and pauses them
var i;
function pauseAllOthers(thisId) {
  for (i = 0; i < wistiaEmbeds.length; i++) {
    if (wistiaEmbeds[i].hashedId() != thisId) {
      wistiaEmbeds[i].pause();
    }
  }
}
// binds pauseAllOthers() to the play() event for every embed
wistiaEmbeds.onFind(function(video) {
  video.bind('play', function() {
    pauseAllOthers(this.hashedId());
  });
});
</script>
{% endcodeblock %}


The `pauseAllOthers` function runs through the array of Wistia embeds on a page and pauses
everything except for the video currently playing. It does this by comparing the `hashedId` of 
`wistiaEmbed[i]` to the `hashedId` of the video that just started playing (which the function knows
as `thisId`).

The second half of the code binds this function to the play event for each video by passing in the 
`hashedId` of that video. This way, your video doesn't pause the second it's played. Yippee!

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

With [Wistia Turnstile]({{ '/turnstile' | post_url }}), you can require
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
