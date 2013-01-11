---
title: Embed API
layout: post
api: true
category: For Developers
description: Learn how to construct an embed code starting with just the video ID!
footer: 'for_developers'
post_intro: <p>There are lots of valid use cases for building embed codes dynamically. The embed API covers the best ways to get that done.</p><p>The <a href='#data-api-approach'>Data API approach</a> is good for lots of videos and dynamically updated content.</p><p>The <a href="#oembed-approach">oEmbed approach</a> is best when you have the URL for your video - just plug it in with the params you want and get an embed code!</p>
---

## Data API Approach

The hashed_id is a unique identifier to a video within the Wistia system. You can get hashed_ids for your videos via the <a href="{{ '/data-api' | post_url }}">Data API</a>.

We pass parameters into an iframe embed via the src attribute. They're just simple URL parameters, with any sub-keys namespaced by brackets.

For example, say we have the hashed_id of the video we want to embed, but we
want to change the color of the play button, hide the fullscreen button, and
add a socialbar. Here's how we do it:

{{ "Before you get too deep here, you might want to check out our <a href='/doc/oembed'>oEmbed endpoint</a>. It provides a simple way to generate Wistia embed codes without you having to write much code. The only downside is you'll have to make an extra request to get an embed code." | note }}

### Building an iframe embed code

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


### Building a JavaScript API embed code

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


### Building an SEO embed code

Unfortunately you can't programmatically build an SEO-compatible embed yourself right now.

Google's video search is a bit antiquated in that it can't properly detect videos inside iframes 
(which is our preferred method of embedding video). They only recognize the `<object><embed>` style embed codes.

The good news is you can easily use our <a href="{{ '/oembed' | post_url }}">oEmbed endpoint</a> to generate an SEO embed for you.




---



## oEmbed Approach

### The Endpoint

Our oEmbed endpoint is: `http://fast.wistia.com/oembed`

Currently, our oEmbed endpoint recognizes two URL formats:

Type | Example URL
-----|-------------
iframe embed code URLs | http://fast.wistia.com/embed/iframe/b0767e8ebb?version=v1&controlsVisibleOnLoad=true&playerColor=aae3d8
iframed playlist URLs | http://fast.wistia.com/embed/playlists/fbe3880a4e?theme=trime&version=v1&videoOptions%5BvideoHeight%5D=360&videoOptions%5BvideoWidth%5D=640
Public media URLs | http://home.wistia.com/medias/e4a27b971d

It's likely we'll add more URLs to this list in the future.

### The Regex

If you're looking to automatically detect Wistia URLs and run them against our endpoint, we recommend using this regular expression:

<pre><code class='language-vim'>
/https?:\/\/(.+)?(wistia\.com|wi\.st)\/(medias|embed)\/.*/
</code></pre>


Or if you don't speak regex, here's what we're matching:

<pre><code class="language-vim">
http(s)://*wistia.com/medias/*
http(s)://*wistia.com/embed/*
http(s)://*wi.st/medias/*
http(s)://*wi.st/embed/*
</code></pre>

Note, it's likely we'll add support for more URLs in the future so feel free to use a more general regular expression so you don't miss out on future enhancements! Perhaps this:

<pre><code class="language-vim">
/https?:\/\/(.+)?(wistia\.com|wi\.st)\/.*/
</code></pre>

### An Example

Get the embed code and some information for a video at ''http://home.wistia.com/medias/e4a27b971d'' in JSON format:

<pre><code class="language-vim">
curl "http://fast.wistia.com/oembed?url=http://home.wistia.com/medias/e4a27b971d"
</code></pre>

This returns:

<pre><code class="language-markup">
{
  "version":"1.0",
  "type":"video",
  "html":"&lt;iframe src=\"http://fast.wistia.com/embed/iframe/e4a27b971d?version=v1&videoHeight=360&videoWidth=640\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" class=\"wistia_embed\" name=\"wistia_embed\" width=\"640\" height=\"360\"&gt;&lt;/iframe&gt;",
  "width":640,
  "height":360,
  "provider_name":"Wistia, Inc.",
  "provider_url":"http://wistia.com",
  "title":"Brendan - Make It Clap",
  "thumbnail_url":"http://embed.wistia.com/deliveries/2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg?image_crop_resized=100x60",
  "thumbnail_width":100,
  "thumbnail_height":60
}
</code></pre>

If you're looking for XML instead of JSON, use: `http://fast.wistia.com/oembed.xml`

For all the fine details about the options supported, see the official [oEmbed spec](http://oembed.com).

### Parameters

Our endpoint supports all the options detailed at oembed.com.

The required url parameter that's passed in supports all the options detailed in the [Player API]({{ '/player-api' | post_url }}).

We also accept some additional parameters that can change the output of the embed code:

Name | Type  | Description
-----|-------|------------
callback | string | Only application to JSON requests. When specified, json is wrapped in a javascript function given by the callback param. This is to facilitate JSONP requests.
embedType | string | Only applicable to videos and playlists. Accepts "iframe", "api", "seo", "popover", "playlist_iframe", and "playlist_api".
width | integer | The requested width of the video embed. Defaults to the native size of the video or 360, whichever is smaller.
height | integer | The requested height of the video embed. Defaults to the native size of the video or 640, whichever is smaller.
handle | string | Only applicable to "api", "seo", and "playlist_api" embed types. Sets the javascript handle. Default is "wistiaEmbed" for medias and "wistiaPlaylist" for playlists.
popoverHeight | integer | Only applicable to "popover" embed type. The requested height of the popover. Defaults to maintain the correct aspect ratio, with respect to the width.
popoverWidth | integer | Only applicable to "popover" embed type. The requested width of the popover. Defaults to 150.
ssl | boolean | Determines whether the embed code should use https. Defaults to false.

### Working With The Thumbnail

Part of the JSON returned by the oEmbed is the `thumbnail_url`. This URL is a direct link to the thumbnail image asset. If your implementation involves using the thumbnail image (i.e. building your own 'popover' embeds, displaying your own play button, etc.) you should use this thumbnail image, which by default has no Wistia play button overlaid on it.

See our [working with Wistia images]({{ '/working-with-images' | post_url }}) guide for more info!

### Troubleshooting

  1. If an invalid URL (one that doesn't match our regular expression above) is given, the endpoint will return <span class="code">404 Not Found</span>.
  2. If an unparseable URL is given in the url param, the endpoint will return <span class="code">404 Not Found</span>.
  3. If a media is found but has no available embed code, the endpoint will return <span class="code">501 Not Implemented</span>. Video, Image, Audio, and Document files all currently implement oembeds.
  4. If a playlist is found but has no videos, the endpoint will return <span class="code">501 Not Implemented</span>.

---

### Make Your Life Easier

If you're contemplating doing an oEmbed implementation with Wistia (or any oEmbed provider for that matter), we strongly recommend checking out [Embedly](http://embed.ly). By integrating with them you'll have immediate access to over 100 oEmbed providers. They also have great documentation and ready-made libraries for every popular language, plus they're just nice guys!

---

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
time                  | float   | Set a starting time for the video on load. If you'd like the video to also play immediately, use the autoPlay parameter.
trackEmail            | string  | flash/html5 only. The email address to associate with the viewing session.
videoFoam             | boolean | The embed will conform to the width of the parent element, resizing to maintain the correct aspect ratio. For iframes, requires the iframe API scripts. API/SEO embeds don't need any modifications. [Check out the demo!](http://wistia.github.com/demobin/video-foam)
videoQuality          | string  | Specify the starting video quality. sd-only/hd-only/auto
videoWidth            | integer | The original width of the video.
videoHeight           | integer | The original height of the video.
volume                | float   | Set a starting volume for the video on load.
volumeControl         | boolean | Show volume control. Default is false.
wmode                 | string  | flash only. The flash window mode of the embed. window/direct/opaque/transparent/gpu.

### Adding ID Tagging to your embeds

If you are looking to enable ID tagging for your embeds, have the 
[ID Tagging]({{ '/identity-tagging' | post_url }}) article open alongside this one!

## Plugin Options

Our plugins have a lot of options too! Check them out:

*  [Socialbar]({{ '/socialbar-params' | post_url }})
*  [Post-Roll Call To Action]({{ '/postroll-params' | post_url }})
*  [Interactive Transcript]({{ '/transcript-params' | post_url }})
*  [Turnstile Email Capturing]({{ '/turnstile-params' | post_url }})
