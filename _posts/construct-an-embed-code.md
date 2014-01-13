---
title: Construct a Wistia Embed Code
layout: post
api: true
special_category_link: developers
category: Developers
api_warning: true
description: Learn to programmatically construct an embed code starting with just the video ID!
footer: 'for_developers'
post_intro: <p>If your use case requires you to build lots of embed codes for your videos dynamically, you will want to live by this guide.</p><p>The best way to accomplish programmatic generation of embed codes is using the <a href="#oembed_approach">oEmbed approach</a>, but you can also use a <a href='#data_api_approach'>Data API-based approach</a>.</p>
---

## oEmbed Approach

### The Endpoint

Our oEmbed endpoint is: `http://fast.wistia.net/oembed`

Currently, our oEmbed endpoint recognizes two URL formats.

### iframe embed code URLs

You can build these for single videos or playlists, or generate them through 
your account.

**example:** http://fast.wistia.net/embed/iframe/
b0767e8ebb?version=v1&controlsVisibleOnLoad=true&playerColor=aae3d8

**playlist example:** http://fast.wistia.net/embed/playlists/fbe3880a4e?theme=trim
&version=v1&videoOptions%5BvideoHeight%5D=360&videoOptions%5BvideoWidth%5D=640

### Public Media URLs

Public Media URLs are the address to a video in your account.

**example:** http://home.wistia.com/medias/e4a27b971d

It's likely we'll add more URLs to this list in the future.

### The Regex

If you're looking to automatically detect Wistia URLs and run them against our
endpoint, we recommend using this regular expression:

<code class="full_width">/https?:\/\/(.+)?(wistia\.com|wi\.st)\/(medias|embed)\/.*/</code>


Or if you don't speak regex, here's what we're matching:

{% codeblock thumbnail.html %}
http(s)://*wistia.com/medias/*
http(s)://*wistia.com/embed/*
http(s)://*wi.st/medias/*
http(s)://*wi.st/embed/*
{% endcodeblock %}

Note, it's likely we'll add support for more URLs in the future so feel free to 
use a more general regular expression so you don't miss out on future 
enhancements! Perhaps this:

<code class="full_width">/https?:\/\/(.+)?(wistia\.com|wi\.st)\/.*/</code>

### An Example

Get the embed code and some information for a video at ''http://home.wistia.com/medias/e4a27b971d'' in JSON format:

<code class="full_width">curl "http://fast.wistia.net/oembed?url=http://home.wistia.com/medias/e4a27b971d"</code>

This returns:

{% codeblock return.json %}
{
  "version":"1.0",
  "type":"video",
  "html":"&lt;iframe src=\"http://fast.wistia.net/embed/iframe/e4a27b971d?version=v1&videoHeight=360&videoWidth=640\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" class=\"wistia_embed\" name=\"wistia_embed\" width=\"640\" height=\"360\"&gt;&lt;/iframe&gt;",
  "width":640,
  "height":360,
  "provider_name":"Wistia, Inc.",
  "provider_url":"http://wistia.com",
  "title":"Brendan - Make It Clap",
  "thumbnail_url":"http://embed.wistia.com/deliveries/2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg?image_crop_resized=100x60",
  "thumbnail_width":100,
  "thumbnail_height":60
}
{% endcodeblock %}

If you're looking for XML instead of JSON, use: `http://fast.wistia.net/oembed.xml`

For all the fine details about the options supported, see the official
[oEmbed spec](http://oembed.com).

## oEmbed Parameters

Our endpoint supports all the options detailed at oembed.com.

The required url parameter that's passed in supports all the options detailed
in the [Player API]({{ '/player-api' | post_url }}).

We also accept some additional parameters that can change the output of the
embed code:

Name | Type  | Description
-----|-------|------------
callback | string | Only applicable to JSON requests. When specified, json is wrapped in a javascript function given by the callback param. This is to facilitate JSONP requests.
embedType | string | Only applicable to videos and playlists. Accepts "iframe", "api", "seo", "popover", "playlist_iframe", and "playlist_api".
width | integer | The requested width of the video embed. Defaults to the native size of the video or 360, whichever is smaller.
height | integer | The requested height of the video embed. Defaults to the native size of the video or 640, whichever is smaller.
handle | string | Only applicable to "api", "seo", and "playlist_api" embed types. Sets the javascript handle. Default is "wistiaEmbed" for medias and "wistiaPlaylist" for playlists.
popoverHeight | integer | Only applicable to "popover" embed type. The requested height of the popover. Defaults to maintain the correct aspect ratio, with respect to the width.
popoverWidth | integer | Only applicable to "popover" embed type. The requested width of the popover. Defaults to 150.
ssl | boolean | Determines whether the embed code should use https. Defaults to false.

If given a `width`, `height`, `maxwidth`, or `maxheight` parameter 
(or any combination of those), the other dimensions in the resulting embed 
code may change so that the video's aspect ratio is preserved.

{{ "These parameters are attached to the Wistia media URL, and not the oEmbed call. So they must be URL-encoded to travel with the Wistia URL." | note }} 

### Example

In this example, we'll request an `API` embed code type, with the javascript 
handle `oEmbedVideo`:

First, the media URL we'll request:

    http://home.wistia.com/medias/e4a27b971d

Next, we'll add the parameters for our request:

    http://home.wistia.com/medias/e4a27b971d?embedType=api&handle=oEmbedVideo

We'll URL-encode this request:

    http%3A//home.wistia.com/medias/e4a27b971d%3FembedType%3Dapi%26handle%3DoEmbedVideo

{{ "We URL-encoded this request, because we want the parameters `embedType` and `handle` passed along to Wistia, not to the oEmbed endpoint." | note }}

And now use the oEmbed endpoint:

<code class="full_width">curl "http://fast.wistia.com/oembed.json?url=http%3A//home.wistia.com/medias/e4a27b971d%3FembedType%3Dapi%26handle%3DoEmbedVideo"</code>

This returns:

{% codeblock return.json %}
{
  "version":"1.0",
  "type":"video",
  "html":"<div id=\"wistia_e4a27b971d\" class=\"wistia_embed\" style=\"width:640px;height:360px;\" data-video-width=\"640\" data-video-height=\"360\">&nbsp;</div>\n<script charset=\"ISO-8859-1\" src=\"//fast.wistia.com/assets/external/E-v1.js\"></script>\n<script>\noEmbedVideo = Wistia.embed(\"e4a27b971d\", {\n  version: \"v1\",\n  videoWidth: 640,\n  videoHeight: 360\n});\n</script>",
  "width":640,
  "height":360,
  "provider_name":"Wistia, Inc.",
  "provider_url":"http://wistia.com",
  "title":"Brendan - Make It Clap",
  "thumbnail_url":"http://embed.wistia.com/deliveries/2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg?image_crop_resized=640x360",
  "thumbnail_width":640,
  "thumbnail_height":360,
  "duration":16.43
}
{% endcodeblock %}

---

## Using JSONP

[JSONP](http://en.wikipedia.org/wiki/JSONP) is a javascript technique used to
get information from a server that is not the same origin as your current
domain. This means they can avoid cross-domain security issues.

In this example, we'll write some javascript to pull data for our video
against the oEmbed endpoint, utilizing JSONP. Then, we'll manipulate the data
returned to embed the thumbnail image.

Given the oEmbed `base URL`, your `account URL`, and a `media hashed id`, we can 
use the jQuery `getJSON` function to call against the oEmbed endpoint to return
the video data. 

Note this function also takes a callback function as a parameter. We'll set up
that callback function next.

{% codeblock playlist_api.js %}
var baseUrl = "http://fast.wistia.com/oembed/?url=";
var accountUrl = escape("http://home.wistia.com/medias/");
var mediaHashedId = "01a1d9f97c";

function getThumbnailUrl(hashedId, callback) {
  $.getJSON(baseUrl + accountUrl + hashedId + "&format=json&callback=?", callback);
}
{% endcodeblock %}

This function will return a JSON data object, and pass it to our callback
function, which will parse the JSON and log the thumbnail URL. Let's write
that callback function now:

{% codeblock playlist_api.js %}
function parseJSON(json) {
  console.log(json.thumbnail_url);
};
{% endcodeblock %}

Finally, we'll setup something to call these functions for our `media hashed id`:

<code class="full_width">getThumbnailUrl(mediaHashedId, parseJSON);</code>

---

### Working With The Thumbnail

Part of the JSON returned by the oEmbed is the `thumbnail_url`. This URL is a
direct link to the thumbnail image asset. If your implementation involves using
the thumbnail image (i.e. building your own 'popover' embeds, displaying your
own play button, etc.) you should use this thumbnail image, which by default
has no Wistia play button overlaid on it.

See our [working with Wistia images]({{ '/working-with-images' | post_url }})
guide for more info!

### Troubleshooting

  1. If an invalid URL (one that doesn't match our regular expression above) is
     given, the endpoint will return <span class="code">404 Not Found</span>.
  2. If an unparseable URL is given in the url param, the endpoint will return
     <span class="code">404 Not Found</span>.
  3. If a media is found but has no available embed code, the endpoint will
     return <span class="code">501 Not Implemented</span>. Video, Image, Audio,
and Document files all currently implement oembeds.
  4. If a playlist is found but has no videos, the endpoint will return <span
     class="code">501 Not Implemented</span>.

### Make Your Life Easier

If you're contemplating doing an oEmbed implementation with Wistia (or any
oEmbed provider for that matter), we strongly recommend checking out
[Embedly](http://embed.ly). By integrating with them you'll have immediate
access to over 100 oEmbed providers. They also have great documentation and
ready-made libraries for every popular language, plus they're just nice guys!

---

## Data API Approach


{{ "This is totally FYI: We've been recommending the <a href='#oembed_approach'>oEmbed approach</a> as the preferred method. It provides a simple way to generate Wistia embed codes without you having to write much code. The only downside is you'll have to make an extra request to get an embed code." | note }} 

The hashed_id is a unique identifier to a video within the Wistia system. 
You can get hashed IDs for your videos programmatically using the 
[Data API]({{ '/data-api' | post_url }}).

By-and-large, our embed codes are *turnkey* - the most important part is the
hashed ID.

### Building an iframe embed code

For this example we'll be using a hashed ID of `'abcde12345'`. Substitute
your hashed ID anywhere you see `'abcde12345'`.

First, build the base URL:

<code class="full_width">http://fast.wistia.net/embed/iframe/abcde12345</code>

Next, you could customize the video parameters [see more about customization]({{'/customize-api' | post_url}}):

<code class="full_width">http://fast.wistia.net/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false</code>

You can also add plugin parameters. Plugins have parameters in their own 
namespace, using bracket notation:

<code class="full_width">http://fast.wistia.net/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin[socialbar][version]=v1&plugin[socialbar][buttons]=embed-twitter-facebook</code>

It is good practice to URL encode both keys and values:

<code class="full_width">http://fast.wistia.net/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin%5Bsocialbar%5D%5Bversion%5D=v1&plugin%5Bsocialbar%5D%5Bbuttons%5D=embed-twitter-facebook</code>

Finally we drop this src into an iframe, where we also specify the width and
height. 

{{"Width and height should be the size of the entire embed (the video plus the plugins)." | note }}

{% codeblock building_an_iframe_embed_code.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345?playerColor=ff0000&fullscreenButton=false&plugin%5Bsocialbar%5D%5Bversion%5D=v1&plugin%5Bsocialbar%5D%5Bbuttons%5D=embed-twitter-facebook" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="387"></iframe>
{% endcodeblock %}


### Building a JavaScript API embed code

If you are using the [Player API]({{'/player-api' | post_url}}) it's important
to embed a video directly on the page (rather than using an iframe).

In this case we do the following:

First, add a div container to the page with a unique ID attribute. In our
standard embeds, we use the video's hashed ID as the unique ID.

{% codeblock thumbnail.html %}
<div id="wistia_abcde12345" style="height:387px;width:640px" data-video-width="640" data-video-height="360">
  this is displayed if javascript is disabled
</div>
{% endcodeblock %}

Next, include the Wistia library:

{% codeblock playlist_api.js %}
<script src="http://fast.wistia.net/static/E-v1.js"></script>
{% endcodeblock %}

Now initialize the embed and pass in the video parameters:

{% codeblock playlist_api.js %}
<script>
wistiaEmbed = Wistia.embed("abcde12345", {
  playerColor: "ff0000",
  fullscreenButton: false,
  container: "wistia_abcde12345"
});
</script>
{% endcodeblock %}


Let's also include the socialbar in the embed code:

{% codeblock playlist_api.js %}
<script>
wistiaEmbed = Wistia.embed("abcde12345", {
  playerColor: "ff0000",
  fullscreenButton: false,
  container: "wistia_abcde12345",
  plugin: {
    "socialbar-v1": {
      buttons: "embed-twitter-facebook"
    }
  }
});
</script>
{% endcodeblock %}

Now that you've finished your API embed, you can access the [JavaScript API]({{ '/player-api' | post_url }}) and 
do more cool stuff!

{% codeblock playlist_api.js %}
<script>
wistiaEmbed.bind("end", function() {
  alert("The video has ended!");
});
wistiaEmbed.bind("timechange", function(t) {
  if (t > 25 && !highlightedCallToAction) {
    highlightCallToAction();
  }
});
wistiaEmbed.volume(.5);
</script>
{% endcodeblock %}


### Building an SEO embed code

Unfortunately you can't programmatically build an SEO-compatible embed yourself right now.

Google's video search is a bit antiquated in that it can't properly detect 
videos inside iframes (which is our preferred method of embedding video). 
They only recognize the `<object><embed>` style embed codes.

The good news is you can easily use the 
[oEmbed approach]('#oembed_approach') to generate an SEO embed for you.


## Embedding Options and Plugins

Once you have your embed code built, you probably want to tailor the appearance
and behavior to your wishes. You may also want to add a plugin like Turnstile
or a Call-to-Action.

For a list of available embedding options to be used with the Customize API,
check our [Embedding Options Documentation]({{ '/embed-options' | post_url }}).
