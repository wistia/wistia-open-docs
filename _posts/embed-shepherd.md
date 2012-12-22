---
title: Embed Shepherd
layout: post
api: true
category: For Developers
description: Get easy access to all the Wistia embeds on a page.
footer: 'for_developers'
post_intro: <p>If you're integrating with Wistia, you might not know where to start. How do you find all the Wistia embeds on the page? Can I bind to iframes and popovers? What if they're injected asynchronously?</p><p>The Embed Shepherd script provides a global list of all the Wistia embeds on the page, along with convenient functions to bind to all of them.</p>
---


## Including the Embed Shepherd

<pre><code class="language-html">&lt;script src="http://fast.wistia.com/static/embed_shepherd-v1.js"&gt;&lt;/script&gt;</code></pre>

You can include that snippet anywhere on your page. Once it has run, any existing or future Wistia embeds will be included in the global array `window.wistiaEmbeds`.

The script can be included asynchronously, but the `wistiaEmbeds` variable will not exist until execution is complete.

{{ "The Embed Shepherd automatically includes the iframe-api on the page. You do not need to include it separately to access iframe embeds or popovers." | note }}


## The wistiaEmbeds variable

The Embed Shepherd immediately sets up a global variable called `wistiaEmbeds` in the `window` scope. `wistiaEmbeds` is an array containing all active Wistia embed handles on the page. If an embed code is hidden or removed from the page, the corresponding handle will be removed. Similarly, when a new embed is injected into the page--whether iframe, API, SEO, or popover--it will be available in `wistiaEmbeds`.

There are also some convenience functions included, as detailed in the sections below.


## Accessing each embed

The `wistiaEmbeds` variable is based on a normal Javascript Array. As such, you can loop over the embeds, each of which has methods as defined in the [Player API](/player-api).

<pre><code class="language-javascript">console.log("List of Wistia embeds on the page, by name:");
for (var i = 0; i < wistiaEmbeds.length; i++) {
  console.log(wistiaEmbeds[i].name());
}</code></pre>

Often you want to assign separate bindings to each video, so it can be useful to have functional scope. For that, we provide an `each` method.

<pre><code class="language-javascript">
wistiaEmbeds.each(function(video) {
  function onFirstPlay() {
    console.log("I played " + video.name());
    video.unbind("play", onFirstPlay);
  }
  video.bind("play", onFirstPlay);
});
</code></pre>


## Capturing newly embedded videos

The "initembed" event lets you immediately get a handle on any Wistia embeds that are injected after the Embed Shephered is included on the page.

<pre><code class="language-javascript">wistiaEmbeds.bind("initembed", function(video) {
  function onFirstPlay() {
    console.log("I played " + video.name());
    video.unbind("play", onFirstPlay);
  }
  video.bind("play", onFirstPlay);
});</code></pre>


## Binding to all embeds on a page

You might want to capture events such as "play" or "end" for any video on the page. The `wistiaEmbeds` variable provides a `bind` method to do just that.

<pre><code class="language-javascript">wistiaEmbeds.bind("play", function(video) {
  console.log("I played a video: " + video.name() + " (" + video.hashedId() + ")");
});
wistiaEmbeds.bind("end", function(video) {
  console.log("A video ended: " + video.name() + " (" + video.hashedId() + ")");
});</code></pre>

You can unbind too:

<pre><code class="language-javascript">function onFirstVideoPlay(video) {
  console.log("I played one of these videos first. It was this one: " + video.name());
  wistiaEmbeds.unbind("play", onFirstVideoPlay);
}
wistiaEmbeds.bind("play", onFirstVideoPlay);</code></pre>


