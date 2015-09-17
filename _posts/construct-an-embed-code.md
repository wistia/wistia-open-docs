---
title: Construct a Wistia Embed Code
layout: post
api: true
special_category_link: developers
category: Developers
api_warning: true
description: Learn to programmatically construct an embed code starting with just the video ID!
footer: 'for_developers'
post_intro: <p>If your use case requires you to build lots of embed codes for your videos dynamically, you will want to live by this guide. We'll break down each embed code type, and the best way to generate them.</p>
---

## Embed Code Types

Before we get started, let's define some jargon around embed code types. At
this time, the three embed code types you can use with Wistia are:

* **iframe** - super simple, supported almost everywhere, and easy to build.
* **javascript player API** - If you want to use the 
  [Player API]({{ '/player-api' | post_url }}) to interact with your video, use
  this embed type.
* **SEO** - We've built an embed code optimized for Google's SEO guidelines.
  This embed code type has the most moving parts, and can be tricky in some
  over-zealous CMS platforms.





## Using the oEmbed Endpoint

Here's a quick primer on using the Wistia oEmbed endpoint, which is the easiest
way to generate each of the Wistia embed code types.


### The Endpoint

Our oEmbed endpoint is: `http://fast.wistia.net/oembed`

By default, the endpoint returns JSON, but use
`http://fast.wistia.net/oembed.xml` to return XML.

Our oEmbed endpoint recognizes two URL formats, *iframe embed URLs*
and *public media URLs*.

**iframe Embed URLs**

You can build these for single videos or playlists, or generate them through 
your account.

**Examples**

* **single video**: `http://fast.wistia.net/embed/iframe/b0767e8ebb`

* **playlist**: `http://fast.wistia.net/embed/playlists/fbe3880a4e`

**Public Media URLs**

Public Media URLs are the address to a video in your account.

* **example**: `http://home.wistia.com/medias/e4a27b971d`



### The Regex

If you're looking to automatically detect Wistia URLs and run them against our
endpoint, we recommend using this regular expression:

<code class="full_width">/https?:\/\/(.+)?(wistia\.com|wi\.st)\/(medias|embed)\/.*/</code>


Or if you don't speak regex, here's what we're matching:

    http(s)://*wistia.com/medias/*
    http(s)://*wistia.com/embed/*
    http(s)://*wi.st/medias/*
    http(s)://*wi.st/embed/*

Note, it's likely we'll add support for more URLs in the future so feel free to 
use a more general regular expression so you don't miss out on future 
enhancements! Perhaps this:

    /https?:\/\/(.+)?(wistia\.com|wi\.st)\/.*/









## oEmbed Parameters

The required url parameter that's passed in supports all the options detailed
in the [Player API]({{ '/player-api' | post_url }}).

We also accept some additional parameters that can change the output of the
embed code:

Name | Type  | Description
-----|-------|------------
callback | string | Only applicable to JSON requests. When specified, json is wrapped in a javascript function given by the callback param. This is to facilitate JSONP requests.
embedType | string | Only applicable to videos and playlists. Accepts **iframe**, **api**, **seo**, **popover**, **playlist_iframe**, **playlist_api**, and **open_graph_tags** (videos only).
width | integer | The requested width of the video embed. Defaults to the native size of the video or 640, whichever is smaller.
height | integer | The requested height of the video embed. Defaults to the native size of the video or 360, whichever is smaller.
handle | string | Only applicable to **api**, **seo**, and **playlist_api** embed types. Sets the javascript handle. Default is **wistiaEmbed** for medias and **wistiaPlaylist** for playlists.
popoverHeight | integer | Only applicable to **popover** embed type. The requested height of the popover. Defaults to maintain the correct aspect ratio, with respect to the width.
popoverWidth | integer | Only applicable to **popover** embed type. The requested width of the popover. Defaults to 150.
ssl | boolean | Determines whether the embed code should use https. Defaults to false.

If given a **width**, **height**, **maxwidth**, or **maxheight** parameter 
(or any combination of those), the other dimensions in the resulting embed 
code may change so that the video's aspect ratio is preserved.


## Troubleshooting

  1. If an invalid URL (one that doesn't match our regular expression above) is
     given, the endpoint will return **404 Not Found**.
  2. If an unparseable URL is given in the url param, the endpoint will return
     **404 Not Found**.
  3. If a media is found but has no available embed code, the endpoint will
     return **501 Not Implemented**. Video, Image, Audio, and Document files all currently implement oEmbeds.
  4. If a playlist is found but has no videos, the endpoint will return **501 Not Implemented**.



## iframe Embed Tutorial

### Using the oEmbed

Here is how we can get the embed code and some information for a video at
`http://home.wistia.com/medias/e4a27b971d` in JSON format:

    curl "http://fast.wistia.net/oembed?url=http%3A%2F%2Fhome.wistia.com%2Fmedias%2Fe4a27b971d"

This returns:

{% codeblock return.json %}
{
  "version":"1.0",
  "type":"video",
  "html":"<iframe src=\"http://fast.wistia.net/embed/iframe/e4a27b971d?version=v1&videoHeight=360&videoWidth=640\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" class=\"wistia_embed\" name=\"wistia_embed\" width=\"640\" height=\"360\"></iframe>",
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

Note the `html` returned in the JSON body is the iframe embed code you can use
to add this video to your website.

For all the fine details about the options supported, see the official
[oEmbed spec](http://oembed.com).

### Using a Template Approach

If you want to avoid making the additional request against the oEmbed endpoint,
you can also build an iframe embed code template, and then add in the video's
`hashed ID`.

For this example we'll be using a hashed ID of `'abcde12345'`.

The basic iframe embed code looks like this:

{% codeblock building_an_iframe_embed_code.html %}
<iframe src="http://fast.wistia.net/embed/iframe/<media-hashed-id>" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"></iframe>
{% endcodeblock %}

So to use this template with the hashed ID `'abcde12345'`, we insert it in
place of `<media-hashed-id>`:

{% codeblock building_an_iframe_embed_code.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"></iframe>
{% endcodeblock %}

{{ "Because height and width will change based on your video's content, the template approach is probably best when your entire library uses a consistent size." | note }}

---



## Javascript API Embed Tutorial

### oEmbed Approach

In this example, we'll request an `API` embed code type, with the javascript 
handle `oEmbedVideo`:

First, the media URL we'll request:

    http://home.wistia.com/medias/e4a27b971d

Next, we'll add the parameters for our request:

    http://home.wistia.com/medias/e4a27b971d?embedType=api&handle=oEmbedVideo

We'll URL-encode this request:

    http%3A%2F%2Fhome.wistia.com%2Fmedias%2Fe4a27b971d%3FembedType%3Dapi%26handle%3DoEmbedVideo

{{ "We URL-encoded this request, because we want the parameters `embedType` and `handle` passed along to Wistia, not to the oEmbed endpoint." | note }}

And now use the oEmbed endpoint:

<code class="full_width">curl "http://fast.wistia.com/oembed.json?url=http%3A%2F%2Fhome.wistia.com%2Fmedias%2Fe4a27b971d%3FembedType%3Dapi%26handle%3DoEmbedVideo"</code>

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

Note the `html` returned in the JSON body is the embed code you would use to
add this video to your website.

### Template Approach

In this case we do the following:

First, add a div container to the page with a unique ID attribute. In our
standard embeds, we use the video's hashed ID as the unique ID.

{% codeblock wistia_html.html %}
<div class="wistia_embed wistia_async_abcde12345" style="height:387px;width:640px">
  this is displayed if javascript is disabled
</div>
{% endcodeblock %}

Next, include the Wistia library:

{% codeblock wistia_html.html %}
<script src="//fast.wistia.net/assets/external/E-v1.js" async></script>
{% endcodeblock %}

Now let's set a few options on the embed code:

{% codeblock wistia_html.html %}
<div class="wistia_embed wistia_async_abcde12345
playerColor=ff0000 fullscreenButton=false" style="height:387px;width:640px">
  this is displayed if javascript is disabled
</div>
{% endcodeblock %}

Let's also include the socialbar in the embed code:

{% codeblock wistia_html.html %}
<div class="wistia_embed wistia_async_abcde12345 playerColor=ff0000
fullscreenButton=false plugin[socialbar-v1][buttons]=embed-twitter-facebook"
style="height:387px;width:640px">
  this is displayed if javascript is disabled
</div>
{% endcodeblock %}

---


## Video SEO Embed Tutorial

In this example, we'll request an `SEO` embed code type.

First, the media URL we'll request:

    http://home.wistia.com/medias/e4a27b971d

Next, we'll add the parameters for our request:

    http://home.wistia.com/medias/e4a27b971d?embedType=seo

We'll URL-encode this request:

    http%3A%2F%2Fhome.wistia.com%2Fmedias%2Fe4a27b971d%3FembedType%3Dseo

{{ "We URL-encoded this request, because we want the parameter `embedType` passed along to Wistia, not to the oEmbed endpoint." | note }}

And now use the oEmbed endpoint:

<code class="full_width">curl "http://fast.wistia.com/oembed.json?url=http%3A%2F%2Fhome.wistia.com%2Fmedias%2Fe4a27b971d%3FembedType%3Dseo"</code>

This returns:

{% codeblock return.json %}
{
    "duration": 16.43,
    "height": 360,
    "html": "<div id=\"wistia_e4a27b971d\" class=\"wistia_embed\" style=\"width:640px;height:360px;\"><div itemprop=\"video\" itemscope itemtype=\"http://schema.org/VideoObject\"><meta itemprop=\"name\" content=\"Brendan - Make It Clap\" /><meta itemprop=\"duration\" content=\"PT16S\" /><meta itemprop=\"thumbnailUrl\" content=\"https://embed-ssl.wistia.com/deliveries/2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.bin\" /><meta itemprop=\"contentURL\" content=\"https://embed-ssl.wistia.com/deliveries/fc8d44e971b21883eab861a56ce783052bb9fd42.bin\" /><meta itemprop=\"embedURL\" content=\"https://embed-ssl.wistia.com/flash/embed_player_v2.0.swf?2013-10-04&controlsVisibleOnLoad=true&customColor=7b796a&fullscreenDisabled=true&hdUrl%5Bext%5D=flv&hdUrl%5Bheight%5D=720&hdUrl%5Bsize%5D=4370055&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2Ff6df0d2748d9388ed25d2f019081c4581f5d3d54.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=16.43&showVolume=true&stillUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2F2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg%3Fimage_crop_resized%3D640x360&unbufferedSeek=true&videoUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2Ffc8d44e971b21883eab861a56ce783052bb9fd42.bin\" /><meta itemprop=\"uploadDate\" content=\"2012-07-25T16:47:44Z\" /><object id=\"wistia_e4a27b971d_seo\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" style=\"display:block;height:360px;position:relative;width:640px;\"><param name=\"movie\" value=\"https://embed-ssl.wistia.com/flash/embed_player_v2.0.swf?2013-10-04\"></param><param name=\"allowfullscreen\" value=\"true\"></param><param name=\"allowscriptaccess\" value=\"always\"></param><param name=\"bgcolor\" value=\"#000000\"></param><param name=\"wmode\" value=\"opaque\"></param><param name=\"flashvars\" value=\"controlsVisibleOnLoad=true&customColor=7b796a&fullscreenDisabled=true&hdUrl%5Bext%5D=flv&hdUrl%5Bheight%5D=720&hdUrl%5Bsize%5D=4370055&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2Ff6df0d2748d9388ed25d2f019081c4581f5d3d54.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=16.43&showVolume=true&stillUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2F2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg%3Fimage_crop_resized%3D640x360&unbufferedSeek=true&videoUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2Ffc8d44e971b21883eab861a56ce783052bb9fd42.bin\"></param><embed src=\"https://embed-ssl.wistia.com/flash/embed_player_v2.0.swf?2013-10-04\" allowfullscreen=\"true\" allowscriptaccess=\"always\" bgcolor=#000000 flashvars=\"controlsVisibleOnLoad=true&customColor=7b796a&fullscreenDisabled=true&hdUrl%5Bext%5D=flv&hdUrl%5Bheight%5D=720&hdUrl%5Bsize%5D=4370055&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2Ff6df0d2748d9388ed25d2f019081c4581f5d3d54.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=16.43&showVolume=true&stillUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2F2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg%3Fimage_crop_resized%3D640x360&unbufferedSeek=true&videoUrl=https%3A%2F%2Fembed-ssl.wistia.com%2Fdeliveries%2Ffc8d44e971b21883eab861a56ce783052bb9fd42.bin\" name=\"wistia_e4a27b971d_html\" style=\"display:block;height:100%;position:relative;width:100%;\" type=\"application/x-shockwave-flash\" wmode=\"opaque\"></embed></object><noscript itemprop=\"description\">Brendan - Make It Clap</noscript></div></div>\n<script charset=\"ISO-8859-1\" src=\"//fast.wistia.com/assets/external/E-v1.js\"></script>\n<script>\nwistiaEmbed = Wistia.embed(\"e4a27b971d\");\n</script>\n<script charset=\"ISO-8859-1\" src=\"//fast.wistia.com/embed/medias/e4a27b971d/metadata.js\"></script>",
    "provider_name": "Wistia, Inc.",
    "provider_url": "http://wistia.com",
    "thumbnail_height": 360,
    "thumbnail_url": "https://embed-ssl.wistia.com/deliveries/2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg?image_crop_resized=640x360",
    "thumbnail_width": 640,
    "title": "Brendan - Make It Clap",
    "type": "video",
    "version": "1.0",
    "width": 640
}
{% endcodeblock %}

Note the `html` returned in the JSON body is the embed code you would use to
add this video to your website.


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
var accountUrl = encodeURIComponent("http://home.wistia.com/medias/");
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

---


## Embedding Options and Plugins

Once you have your embed code built, you probably want to tailor the appearance
and behavior to your wishes. You may also want to add a plugin like Turnstile
or a Call-to-Action.

For a list of available embedding options to be used with the Customize API,
check our [Embedding Options Documentation]({{ '/embed-options' | post_url }}).
