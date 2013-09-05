---
special_category_link: developers
api: true
layout: post
title: Embedding Options
description: Learn more about the embed options available for your embedded videos.
category: Developers
---

When building an embed code, embed options can be included to customize the
appearance/behavior of the embedded video. First, we'll cover the options
themselves, then, we'll show you some examples of how you can use them for your
embeds!

## Embed Options List

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
stillSnap             | boolean | For thumbnails that are different aspect ratio than the video, set to *false*. Default is *true*.
time                  | float   | Set a starting time for the video on load. If you'd like the video to also play immediately, use the autoPlay parameter.
trackEmail            | string  | flash/html5 only. The email address to associate with the viewing session.
videoFoam             | boolean | The embed will conform to the width of the parent element, resizing to maintain the correct aspect ratio. For iframes, requires the iframe API scripts. API/SEO embeds don't need any modifications. [Check out the demo!](http://wistia.github.com/demobin/video-foam)
videoQuality          | string  | Specify the starting video quality. sd-only/hd-only/auto
videoWidth            | integer | The original width of the video.
videoHeight           | integer | The original height of the video.
volume                | float   | Set a starting volume for the video on load.
volumeControl         | boolean | Show volume control. Default is false.
wmode                 | string  | flash only. The flash window mode of the embed. window/direct/opaque/transparent/gpu.


## Using Embed Options

### API and SEO Embed codes

Given a video with hashed ID `g5pnf59ala`, we can build an API or SEO embed
code (using either the in-app embed workflow, or a [dynamic embed building
approach]({{ '/embed-api' | post_url }}).

Here is what the embed code should look like:

{% codeblock example_api_embed.html %}
<div id="wistia_g5pnf59ala" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script> wistiaEmbed = Wistia.embed("g5pnf59ala"); </script>
{% endcodeblock %}

To use our embed options, we will append them as a hash to the `wistiaEmbed`
declaration. 

For example, let's add Video Foam to our embed (this would probably be easier
to do in the [video foam lab](http://wistia.com/labs/videofoam), but shh I'm
example-ing):

{% codeblock example_api_embed_with_videofoam.js %}
<script>
  wistiaEmbed = Wistia.embed("g5pnf59ala", {
    videoFoam: true
  });
</script>
{% endcodeblock %}

### iframe Embed Codes

For iframe embed codes, our embed options will be appended to the iframe `src` 
as a query string, like `?videoFoam=true`:

{% codeblock example_iframe_embed.html %}
<iframe src="http://fast.wistia.net/embed/iframe/g5pnf59ala?videoFoam=true"
  allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"> </iframe>
{% endcodeblock %}
