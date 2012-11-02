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
(which is our preferred method of embedding video). They only recognize the `<object><embed>` style embed codes.

The good news is you can easily use our <a href="{{ '/oembed' | post_url }}">oEmbed endpoint</a> to generate an SEO embed for you.


## Embedding Options

When building an embed code, it is possible to pass along embedding options which customize the appearance/behavior of your embed.  In our example embed **''Wistia.embed("bfc34aa023", { ... options ... });''** there are two arguments: the media's hashed ID, and a set of embedding options. 

Embedding options can be used with all embed code types to update the video quality, interactive experience, and controls available to viewers.

Here's how use of embedding options works for API and SEO embed codes:

<pre><code class='language-javascript'>
<div id="my_container"></div>
var wistiaEmbed = Wistia.embed("bfc34aa023", {
  platformPreference: "html5",
  autoPlay: true,
  container: "my_container"
});
</code></pre>

For iframe embed codes, these must be added to the *iframe src* using `&embeddingOption=value`, like so:

<pre data-line="2-5"><code class='language-javascript'>
&lt;iframe src="http://fast.wistia.com/embed/iframe/2cf8fbb2c0?
  controlsVisibleOnLoad=true
  &version=v1
  &videoHeight=360&videoWidth=640
  &volumeControl=true" 
  allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"&gt;
&lt;/iframe&gt;
</code></pre>


Here is a list of available options:

Option Name           | Type    | Description
-----------           | ----    | -----------
autoPlay              | boolean | flash/html5 only. Doesn't work on mobile. When true, the video plays as soon as it's ready.
canonicalTitle        | string  | The title of the page, used for social features.
canonicalUrl          | string  | The url of the page, used for social features.
chromeless            | boolean | flash only. When true, player is created without controls.
container             | string  | The element that should container the embed. Defaults to wistia_{hashed_id}
controlsVisibleOnLoad | boolean | flash only. When true, controls are visible before you click play.
doNotTrack            | boolean | When true, embed will not track views.
endVideoBehavior      | string  | flash only. Behavior when the video ends: default/reset/loop.
fullscreenButton      | boolean | Show fullscreen button. Default is true.
pageUrl               | string  | The page that the embed thinks it's embedded on. Defaults to the current page.
platformPreference    | string  | Accepts: 'flash', 'html5', or 'external'. This specifies the preferred underlying video embed mechanism. If your specified type is not supported by a client it will seamlessly fallback to the other types. Defaults to 'flash'.
playButton            | boolean | flash/external only. When true, display play button over video poster.
playbar               | boolean | Show playbar. Default is true.
playerColor           | string  | Set custom color on play button/controls. HTML5 player has access to custom play button color only.
smallPlayButton       | boolean | Show small playbutton in the bottom left. Default is true.
stillUrl              | string  | The still image that should appear before the video is played.
trackEmail            | string  | flash/html5 only. The email address to associate with the viewing session.
videoFoam             | boolean | The embed will conform to the width of the parent element, resizing to maintain the correct aspect ratio. For iframes, requires the iframe API scripts. API/SEO embeds don't need any modifications. [Check out the demo!](http://wistia.github.com/demobin/video-foam)
videoQuality          | string  | Specify the starting video quality. sd-only/hd-only/auto
videoWidth            | integer | The original width of the video.
videoHeight           | integer | The original height of the video.
volumeControl         | boolean | Show volume control. Default is false.
wmode                 | string  | flash only. The flash window mode of the embed. window/direct/opaque/transparent/gpu.

---

## Plugin Options

Our plugins have a lot of options too! Check them out:

*  [Socialbar]({{ '/socialbar-params' | post_url }})
*  [Post-Roll Call To Action]({{ '/postroll-params' | post_url }})
*  [Interactive Transcript]({{ '/transcript-params' | post_url }})
*  [Turnstile Email Capturing]({{ '/turnstile-params' | post_url }})


