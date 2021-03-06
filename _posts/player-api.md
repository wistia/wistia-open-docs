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

## Get started

To use the Player API, you need a "handle" to it. When we use the term
"handle", we mean a javascript variable that is associated with a Wistia video
and defines the Player API methods. You'll see the variable `video`--and other
similar variables--used frequently in examples in these docs; these are all
Player API handles. Since Wistia embeds are initialized asynchronously, we
recommend the following patterns to acquire player API handles for your videos.

### Use window._wq to get a video handle

The first and easiest way is to push a function onto the initialization queue.
The handle will be given as an argument of the callback function.

#### With Standard embeds

We push an object of the form `{ matcher: callback }` onto the queue. Embeds
that match--as described in the
[`Wistia.api(matcher)`]({{ '/player-api#wistiaapimatcher' | post_url }})
section below--will run the function.

{% codeblock wistia_html.html %}
<script src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_abcde12345" style="width:640px;height:360px;"></div>
<script>
window._wq = window._wq || [];
_wq.push({ "abc": function(video) {
  console.log("I got a handle to the video!", video);
}});
</script>
{% endcodeblock %}

#### With iframe embeds

The exact same syntax will work with iframe embeds too:

{% codeblock wistia_html.html %}
<iframe src="//fast.wistia.net/embed/iframe/abcde12345" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" allowfullscreen mozallowfullscreen webkitallowfullscreen oallowfullscreen msallowfullscreen width="640" height="360"></iframe>
<script src="//fast.wistia.net/assets/external/E-v1.js" async></script>
<script>
window._wq = window._wq || [];
_wq.push({ "abc": function(video) {
  console.log("I got a handle to the video!", video);
}});
</script>
{% endcodeblock %}

#### Here's what's happening:

1. We make sure `window._wq` is defined as an array.
2. We push a matcher ("abc") associated with a callback function onto the
   queue.
3. E-v1.js loads and the video data is fetched in the background.
4. The callback function runs when the video has data.

Note that you can push functions onto `window._wq` at any time&mdash;including after
`E-v1.js` has loaded&mdash;and expect it to be quickly executed.

#### You can also target all videos on the page

If you'd like to run your function on all videos on the page, you can use the
special "_all" matcher:

{% codeblock wistia_js.js %}
window._wq = window._wq || [];
_wq.push({ "_all": function(video) {
  console.log("This will run for every video on the page. Right now I'm on this one:", video);
}});
{% endcodeblock %}

This will run immediately on any videos that are currently on the page. It will
also be run immediately on videos injected after the page loads.

### Wistia.api(matcher)

If you're quite sure your video code will be running after the video has
already loaded, you can use `Wistia.api(matcher)` to get a handle
synchronously. If no match is found, `Wistia.api(matcher)` will return `null`.

{% codeblock wistia_js.js %}
var video = Wistia.api("abc");
console.log("I got a handle to the video!", video);
{% endcodeblock %}

The `matcher` argument is compared to the container ID or the hashed ID of the
video.

{% codeblock wistia_html.html %}
<script src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div id="my_video" class="wistia_embed wistia_async_abcde12345" style="width:640px;height:360px;"></div>
{% endcodeblock %}

To access it, you can reference a portion of the video's container ID or hashed
ID. For example, any of the following calls would get the same handle to the
video:

{% codeblock wistia_js.js %}
var video1 = Wistia.api("my_video");
var video2 = Wistia.api("abcde12345");
var video3 = Wistia.api("my_");
var video4 = Wistia.api("abc");

console.log(video1 === video2); // true
console.log(video2 === video3); // true
console.log(video3 === video4); // true
{% endcodeblock %}

If the same video appears several times on the page, `Wistia.api("hashedid")`
will only return the first instance. If you need a handle for each instance,
you'll need to assign unique container IDs and reference those.

If the first 3 letters of the hashed ID are used, there is a 1 in 46,656 chance
that you will have a collision with another video on the page. To be safe, if
you have many videos on a page, you may want to be more verbose. For example,
increasing your matcher to 4 characters decreases the chance of collision to 1
in 1,679,616. But short access is convenient and can be used on most pages
where the number of videos is small.

---

## Methods

<div style="display:none;" class="navigable_start"></div>

### addToPlaylist(hashedId, [options], [position])

A video has a "playlist", which is a list of videos to play in sequence. Each
playlist must have a unique list of hashed IDs; a hashed ID cannot appear twice
within the same playlist.

Use `addToPlaylist` to push more videos onto the queue. When a video is
finished playing, it will play the next one in its playlist.

{% codeblock wistia_js.js %}
video.addToPlaylist("abcde12345", {
  playerColor: "00ff00"
});
{% endcodeblock %}

The `position` argument lets you define where in the playlist the video should
be added. It can take any of these forms:

{% codeblock wistia_js.js %}
// Play abcde12345 before hashedid
video.addToPlaylist("abcde12345", {}, { before: "hashedid" });

// Play abcde12345 after hashedid
video.addToPlaylist("abcde12345", {}, { after: "hashedid" });

// Put abcde12345 in the first position
// Note that this will not automatically replace the video too. To do that, you
// should make use of `replaceWith`. See the pre-roll video example below.
video.addToPlaylist("abcde12345", {}, { index: 0 });
{% endcodeblock %}

Before using this, you might want to see if
[embed and playlist links]({{ '/embed-links#simple_playlist_link_example' | post_url }})
covers your use case.

NOTE: This method currently does not work with iframe embeds.

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

### bind(eventType, callbackFn)

Runs a callback function when a specific event is triggered. [Refer to the
Events section](#events) to see how to respond to the different types events.

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
associated, it will return `null`.

An email can be associated with a viewing session by:

- calling `video.email('the@email.com')`
- setting the `email` embed option
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


### eventKey()

Returns the `event_key` for the current viewing session. You can get all events
for your account from the [Stats API]({{ '/stats-api#events' | post_url }}).

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

{% codeblock wistia_js.js %}
recordPlayedVideo(video.hashedId(), video.name());
{% endcodeblock %}

### height()

Returns the current height of the video container in pixels.

{% codeblock wistia_js.js %}
// e.g. set the height of <div id="next_to_video"> to match the video.
$("#next_to_video").height(video.height());
{% endcodeblock %}

### height(val, [options])

Sets the height of the video container to `val` in pixels. It is expected that
`val` is an integer. Decimal or string values will be truncated.

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
  if (video.percentWatched() > 0.9 && video.percentWatched() < 0.99) {
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
[Apple's Documentation](https://developer.apple.com/library/safari/documentation/AudioVideo/Conceptual/Using_HTML5_Audio_Video/Device-SpecificConsiderations/Device-SpecificConsiderations.html#//apple_ref/doc/uid/TP40009523-CH5-SW4)
for the reasons behind this behavior.

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
which are reliable if the video is simply removed from the DOM, e.g.
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

Before using this, you might want to see if
[embed and playlist links]({{ '/embed-links#simple_video_replacement_example' | post_url }})
covers your use case.

NOTE: This method currently does not work with iframe embeds.

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

NOTE: On iOS, when seeking from the "beforeplay" state, `video.time(val)` is
subject to the same restrictions as `video.play()`. However, there is a bit of
nuance.  If you call `video.time(30)` before play, the video will not play per
the restrictions. But once the viewer clicks the video to play it, it will
begin playing 30 seconds in.

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

### videoHeight()

Returns the height of the video itself in pixels, without anything extra. For
example, if the socialbar is enabled and `video.height()` returns 388, then
`video.videoHeight()` will return 360 because the height of the Social Bar is
28px.

{% codeblock wistia_js.js %}
$("#video_matcher").height(video.videoHeight());
{% endcodeblock %}

### videoHeight(val, [options])

Sets the height of the video to `val` in pixels. It is expected that `val` is
an integer.  Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the width of the video will
also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.videoHeight(360);
video.videoHeight(400, { constrain: true });
{% endcodeblock %}

### videoWidth()

Returns the width of the video itself in pixels, without anything extra. For
example, if the Presentation Sync lab is enabled and `video.width()` returns
1166, then `video.videoWidth()` will return 640 because the width of the
presentation is 526px.

{% codeblock wistia_js.js %}
$("#video_matcher").width(video.videoWidth());
{% endcodeblock %}

### videoWidth(val, [options])

Sets the width of the video to `val` in pixels. It is expected that `val` is an
integer.  Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the height of the video will
also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.videoWidth(640);
video.videoWidth(640, { constrain: true });
{% endcodeblock %}

### visitorKey()

Returns the `visitor_key` of the person watching the video. This is
used to associate multiple viewing sessions with a single person. You can use it
to filter [events]({{'/stats-api#events' | post_url }}) in the Stats API.

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

Returns the current width of the video container in pixels.

{% codeblock wistia_js.js %}
// e.g. set the width of <div id="next_to_video"> to match the video.
$("#next_to_video").width(video.width());
{% endcodeblock %}

### width(val)

Sets the width of the video container to `val` in pixels. It is expected that
`val` is an integer. Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the width of the video will
also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.width(640);
video.width(700, { constrain: true });
{% endcodeblock %}

<div style="display:none;" class="navigable_end"></div>

---

## Events

Use these events when working with the `bind` and `unbind` methods.

<div style="display:none;" class="navigable_start"></div>

### betweentimes

Fired once when the playhead enters the interval and once when it leaves it.
This can run multiple times if the viewer leaves the time interval and
re-enters it, either by seeking or by playing through. This event is useful if
you have page elements that should be visible only for a specific time
interval.

{% codeblock wistia_js.js %}
video.bind("betweentimes", 30, 60, function(withinInterval) {
  if (withinInterval) {
    showMyElement();
  } else {
    hideMyElement();
  }
});
{% endcodeblock %}

To only show it once using anonymous function unbinding:

{% codeblock wistia_js.js %}
video.bind("betweentimes", 30, 60, function(withinInterval) {
  if (withinInterval) {
    showMyElement();
  } else {
    hideMyElement();
    return video.unbind;
  }
});
{% endcodeblock %}

To only show it once using explicit unbinding:

{% codeblock wistia_js.js %}
var showMyElementOnce = function() {
  showMyElement();
  video.unbind('betweentimes', 30, 60, showMyElementOnce);
};
video.bind("betweentimes", 30, 60, showMyElementOnce);
{% endcodeblock %}

NOTE: This event currently does not fire on iframe embeds.

### conversion

Fired when an email is entered in Turnstile. The `type` argument can be
"pre-roll-email", "mid-roll-email", or "post-roll-email".

{% codeblock wistia_js.js %}
video.bind("conversion", function(type, email, firstName, lastName) {
  recordMyOwnData(email, firstName, lastName);
})
{% endcodeblock %}

### crosstime

Runs the callback function when the time of the video moves from _before_ `time`
to _after_ `time`. It is expected that `time` is a decimal value specified in
seconds.

This event is meant to be used with "gates" or CTAs. For example, perhaps you
have a call to action that should appear after the 30 second mark in your
video. Code to show that might look like this:

{% codeblock wistia_js.js %}
video.bind("crosstime", 30, function() {
  showMyCustomCTA();
});
{% endcodeblock %}

To only show it once using anonymous function unbinding:

{% codeblock wistia_js.js %}
video.bind("crosstime", 30, function() {
  showMyCustomCTA();
  return video.unbind;
});
{% endcodeblock %}

To only show it once using explicit unbinding:

{% codeblock wistia_js.js %}
var showMyCustomCTAOnce = function() {
  showMyCustomCTA();
  video.unbind('crosstime', 30, showMyCustomCTAOnce);
};
video.bind("crosstime", 30, showMyCustomCTAOnce);
{% endcodeblock %}

NOTE: This event currently does not fire on iframe embeds.

### end

Fired when the video's state changes to "ended".

{% codeblock wistia_js.js %}
video.bind("end", function() {
  console.log("Lenny was here.");
});
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

## Options

Many behaviors can be defined by setting options instead of using Player API
methods. Check out the [Embed Options]({{ '/embed-options' | post_url }}) page
for a full list.


---

## Examples

To get you making video magic as fast as possible, here are some examples of
common JavaScript player API projects.

### Start Video Playback at a Specific Time

In this example, you want the video to skip ahead a certain amount of time when
the viewer presses 'play'. This utilizes the `bind on play` functionality built
into the API.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_29b0fbf547" style="width:640px;height:360px;">&nbsp;</div>
<script>
window._wq = window._wq || [];

// target our video by the first 3 characters of the hashed ID
_wq.push({ "29b": function(video) {

  // on play, seek the video to 10 seconds, then unbind so it
  // only happens once.
  video.bind('play', function() {
    video.time(10);
    return video.unbind;
  });

}});
</script>
{% endcodeblock %}

---

### Trigger an event at a specific time

In this example, let's assume that we want to run some javascript when
the viewer gets 60 seconds into the video. In order to accomplish this, we only
need the bind method from the API.

{% codeblock wistia_js.js %}
<script>
window._wq = window._wq || [];

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

Don't like the barrage of sound that comes from three different videos playing
in the same page? This snippet will pause all videos that aren't currently
playing:

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_9kksns1ede" style="width:480px;height:270px;">&nbsp;</div>
<div class="wistia_embed wistia_async_oh34zbesuh" style="width:480px;height:270px;">&nbsp;</div>
<div class="wistia_embed wistia_async_2jvt3wqkye" style="width:480px;height:270px;">&nbsp;</div>

<script>
window._wq = window._wq || [];
_wq.push({ "_all": function(video) {
  // for all existing and future videos, run this function
  video.bind('play', function() {
    // when one video plays, iterate over all the videos and pause each,
    // unless it's the video that just started playing.
    var allVideos = Wistia.api.all();
    for (var i = 0; i < allVideos.length; i++) {
      if (allVideos[i].hashedId() !== video.hashedId()) {
        allVideos[i].pause();
      }
    }
  });
}});
</script>
{% endcodeblock %}

---

### A/B testing videos against each other

Using a Standard embed code as a template, we can switch out hashed ID's for multiple
videos easily. Comparing the viewer analytics in the background will tell you
which video reigned supreme!

In this example, we create an array of hashed IDs for possible videos to embed,
then randomly select one and embed the video with that hashed ID by adding to
the class name of the embed's container. The Wistia library will monitor the DOM
for changes like this, and automatically embed a video where it sees an element
with the right class.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div id="thumbnail_test" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>

<script>
  var hashedIds = ["wfu7q0s0pf", "ck7avcilwk"];
  var rand = Math.floor(Math.random() * hashedIds.length);
  var autoPlay = false;
  var hashedId = hashedIds[rand];

  document.getElementById("thumbnail_test").className += " wistia_async_" + hashedId;
</script>
{% endcodeblock %}

---


### Add Chaptering Links to your Embedded Video

You can do this yourself using the `time(val)` method described above, OR you
could make your life easier and use
[embed links]({{ '/embed-links' | post_url }}), which handles chaptering
automatically!

---

### Mute the Video on Load

You can do this by setting the `volume`
[embed option]({{ '/embed-options' | post_url }}) to 0, like so:

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5 volume=0" style="width:640px;height:360px;">&nbsp;</div>
{% endcodeblock %}

---

### Selective Autoplay

Selective Autoplay will automatically play your embedded video based on the
presence of a query string you specify.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5" style="width:640px;height:360px;">&nbsp;</div>
<script>
_wq.push(function(W) {
  var playedOnce = false;
  W.api(function(video) {
    if (!playedOnce && /[&?]autoplay/i.test(location.href)) {
      playedOnce = true;
      video.play();
    }
  });
});
</script>
{% endcodeblock %}

In this example, if "?autoplay" or "&autoplay" appears in the page URL, the
first video that initializes will autoplay.

---

### Alert on play just once

With the bind method, every time "play" is triggered, your function will be
executed. But sometimes a user will scroll back to the beginning and hit Play
again. If you want to avoid your function being executed again, you need to
unbind it.

Our library contains a special unbinding pattern for convenience. In the
callback function, just return `video.unbind`.

{% codeblock wistia_js.js %}
<script>
video.bind("play", function() {
  alert("Played the first time!");
  return video.unbind;
});
</script>
{% endcodeblock %}

If you are performing asynchronous operations or need more control over
unbinding, you can use the `unbind` method as shown below.

{% codeblock wistia_html.html %}
<script>
function playFunc() {
  alert("Played the first time!");
  video.unbind("play", playFunc);
}

video.bind("play", playFunc);
</script>
{% endcodeblock %}

---

### Add Custom Pre-Roll to Your Videos

You can leverage the `replaceWith` and `addToPlaylist` methods to add a
pre-roll to any video.

First we add the pre-roll to the playlist in the first position. We pass in
`null` because we don't want to specify any plugin options, but we do want to
pass position options.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5" style="width:640px;height:360px;">&nbsp;</div>
<script>
window._wq = window._wq || [];
_wq.push({ "5bb": function(video) {
  video.addToPlaylist("oefj398m6q", {}, { index: 0 });
  video.bind('play', function() {
    video.replaceWith("oefj398m6q", { autoPlay: true });
  });
}});
</script>
{% endcodeblock %}

---

### Playing a second video on Post Roll click

You can now handle this behavior by using
[embed links]({{ '/embed-links#watch_another_video_in_ctaannotation' | post_url }}).

---


### Make the video background transparent

If you are embedding a Wistia video on a website with a white background, the
natural black background of the Wistia player can look a little out of place.
Instead, using a `wmode=transparent` string parameter, the background of the
player loading can be set to transparent.

So a finished iframe embed code would look something like this:

{% codeblock iframe_example.html %}
<iframe src="http://fast.wistia.net/embed/iframe/e4a27b971d?
controlsVisibleOnLoad=true&playerColor=688AAD&version=v1&wmode=transparent"
allowtransparency="true" frameborder="0" scrolling="no"
class="wistia_embed" name="wistia_embed" width="640"
height="360"></iframe>
{% endcodeblock %}

Or a Standard inline embed would look like this:

{% codeblock wistia_html.html %}
<script src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_abcde12345 wmode=transparent"
style="width:640px;height:360px;"></div>
{% endcodeblock %}


## Legacy API Embeds

This section exists to help customers transition from our Legacy API embeds to
Standard (a.k.a. "async") embeds.

If you have an embed code which look like this, then you have a Legacy API
embed:

{% codeblock wistia_html.html %}
<div id="wistia_abcde12345" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("abcde12345");
</script>
{% endcodeblock %}

An equivalent Standard (a.k.a. "async") embed would look like this:

{% codeblock wistia_html.html %}
<script src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_abcde12345" style="width:640px;height:360px;"></div>
{% endcodeblock %}

Going forward, it is recommended that you switch to a "Standard" (a.k.a.
"async") embed for all new embed codes. Async embeds can do everything Legacy
API embeds can do, but they never block page load, they are less susceptible to
mangling, and they are easier to inject dynamically into html.

There are no plans to remove the Legacy API embed syntax; if you have existing
Legacy API embeds, they do not need to be re-embedded.

### Embed Options Comparison

In Legacy API embeds, options passed to the embed code might look like this:

{% codeblock wistia_html.html %}
<div id="wistia_abcde12345" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("abcde12345", {
  autoPlay: true,
  controlsVisibleOnLoad: false
});
</script>
{% endcodeblock %}

The options there are specified as part of the `Wistia.embed` function call.

With Standard (a.k.a. "async") embeds, an equivalent embed code would be:

{% codeblock wistia_html.html %}
<script src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_abcde12345 autoPlay=true
controlsVisibleOnLoad=false" style="width:640px;height:360px;"></div>
{% endcodeblock %}

The options there are specified as key/val pairs in the container's `class`
attribute.

For more information on setting options, check out the
[docs on embed options]({{ '/embed-options' | post_url }}).

### Player API Usage Comparison

With Legacy API embeds, each embed code is assigned the `wistiaEmbed` variable
by default. You could use this variable to set up bindings, play on load, etc.
You can do the same things with Standard embeds, but they are always loaded
asynchronously, so the flow to get Player API access is slightly different.

Setting up bindings with a Legacy API embed:

{% codeblock wistia_html.html %}
<div id="wistia_abcde12345" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("abcde12345");
wistiaEmbed.hasData(function() {
  wistiaEmbed.bind("play", function() {
    console.log("video played", wistiaEmbed.name());
  });
});
</script>
{% endcodeblock %}

Equivalent code for Standard embeds:

{% codeblock wistia_html.html %}
<script src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_abcde12345" style="width:640px;height:360px;"></div>
<script>
window._wq = window._wq || [];
_wq.push({ "abcde12345": function(video) {
  video.bind("play", function() {
    console.log("video played", video.name());
  });
}});
</script>
{% endcodeblock %}

The inline script syntax for Standard embeds makes it easier for javascript in
external files to get a handle to each video. That is, instead of setting a global
variable when the video is embedded, you can access the Player API by hashed ID
or DOM ID. It also implicitly waits for data to be returned from the server, so
you are guaranteed methods like `name()` and `duration()` will return
meaningful values.

For more information on using the Player API, scroll to the top of this page.
