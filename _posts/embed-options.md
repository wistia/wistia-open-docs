---
special_category_link: developers
api: true
layout: post
title: Embed Options and Plugins
description: Learn more about the embed options and plugins available for your embedded videos.
category: Developers
---

Embed options and Plugins are useful when building an embed code or customizing your embeds
programmatically.

*Embed Options* are essentially attributes for the behavior of your video -
`fullscreenButton`, for example, is a boolean that controls whether the
fullscreen button is shown on your player or not.

*Plugins* are additional scripts you can add to your video, giving it new
functionality and adding new interfaces. [Turnstile](#turnstile_plugin), for
example, is an email collector you can add to your video by including the
plugin.

## Using Embed Options / Plugins and Customize

With the addition of [customize]({{ '/data-api#customizations' | post_url }}),
plugins and embed options enabled in the Account GUI are not visible in embed
codes.

When you add embed options or plugins to your embed code using the approach
outlined below, it will *override* any conflicting customizations (i.e. if you
set `playerColor` inline, and if you've already set it in the GUI, your inline
attribute will be used).

## Embed Options List

These options are for use with the [Customize API](http://wistia.com/doc/data-api#customizations) and
[Construct an Embed Code]({{ '/construct-an-embed-code' | post_url }}) guide.

Option Name           | Type    | Description
-----------           | ----    | -----------
autoPlay              | boolean | flash/html5 only. Doesn't work on mobile. When true, the video plays as soon as it's ready.
canonicalTitle        | string  | The title of the page, used for social features.
canonicalUrl          | string  | The url of the page, used for social features.
chromeless            | boolean | flash only. When true, player is created without controls.
container             | string  | The element that should container the embed. Defaults to wistia_{hashed_id}
controlsVisibleOnLoad | boolean | When true, controls are visible before you click play.
doNotTrack            | boolean | When true, embed will not track views.
endVideoBehavior      | string  | flash only. Behavior when the video ends: default/reset/loop.
fullscreenButton      | boolean | Show fullscreen button. Default is true.
pageUrl               | string  | The page that the embed thinks it's embedded on. Defaults to the current page.
playerPreference    | string  | Accepts: 'flash', 'html5', or 'auto'. This specifies the preferred underlying video embed mechanism. If your specified type is not supported by a client it will seamlessly fallback to the other types. Defaults to 'auto'.
playButton            | boolean | flash/external only. When true, display play button over video poster.
playbar               | boolean | Show playbar. Default is true.
playerColor           | string  | Set custom color on play button/controls. HTML5 player has access to custom play button color only.
smallPlayButton       | boolean | Show small playbutton in the bottom left. Default is true.
stillUrl              | string  | The still image that should appear before the video is played.
stillSnap             | boolean | For thumbnails that are different aspect ratio than the video, set to *false*. Default is *true*.
time                  | float   | Set a starting time for the video on load. If you'd like the video to also play immediately, use the autoPlay parameter.
trackEmail            | string  | flash/html5 only. The email address to associate with the viewing session.
videoFoam             | boolean | The embed will conform to the width of the parent element, resizing to maintain the correct aspect ratio. For iframes, requires the iframe API scripts. API/SEO embeds don't need any modifications. [Check out the demo!](http://wistia.com/labs/videofoam)
videoQuality          | string  | Specify the starting video quality. options: **sd-only**, **md**, **hd-only**, **auto** (default)
videoWidth            | integer | The original width of the video.
videoHeight           | integer | The original height of the video.
volume                | float   | Set a starting volume for the video on load.
volumeControl         | boolean | Show volume control. Default is true.
wmode                 | string  | flash only. The flash window mode of the embed. window/direct/opaque/transparent/gpu.


## Using Embed Options

Given a video with hashed ID `g5pnf59ala`, we can build an API embed
code (using either the in-app embed workflow, or a [dynamic embed building
approach]({{ '/construct-an-embed-code' | post_url }}).

Here is what the embed code should look like:

{% codeblock example_api_embed.html %}
<div id="wistia_g5pnf59ala" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script> wistiaEmbed = Wistia.embed("g5pnf59ala"); </script>
{% endcodeblock %}

To use our embed options, we will append them as a hash to the `wistiaEmbed`
declaration. 

For example, let's make this video autoplay on page load, and change the color
of the player to <span style="color:#ff69b4;">hot pink</span> (#ff69b4):

{% codeblock example_api_embed_with_videofoam.js %}
<script>
  wistiaEmbed = Wistia.embed("g5pnf59ala", {
    autoPlay: true,
    playerColor: '#ff69b4'
  });
</script>
{% endcodeblock %}







## Embed Plugins

The following Embed Plugins are available for Wistia videos:

* [Turnstile](#turnstile_plugin) - Add an email gate to your video. [Configure
  it]({{ '/turnstile' | post_url }}) to pass emails to your Email Marketing platform.
* [Post-Roll Call-to-Action](#postroll_calltoaction_plugin) - Suggest an action after viewing.
* [Socialbar](#socialbar_plugin) - Add social sharing buttons to your video player.
* [Captions](#captions_plugin) - Enable captions for your video.








## Turnstile Plugin

The Turnstile plugin slides an extremely simple form over the video at a time
of your choosing. The sizing of the top and bottom text is determined by the
height of the video by default. If you specify the `fontSize` property in the
style option, you can override the default sizing.

Turnstile also tries to avoid asking for the viewers email if it has already
been collected. It does this by saving the email in local storage for the
specific `location.href` where it was collected. You can turn off this
functionality by setting `alwaysShow` to true.


Option Name        | Type      | Description
-----------        | ----      | ----------------------------------------------------------------------------------------------------
allowSkip          | boolean   | Determines whether to display a "Skip" button in the lower right for a gate at the beginning or middle. Defaults to false.
alwaysShow         | boolean   | Determines whether to display the Turnstile gate even if the email has already been collected. Defaults to false.
bottomText         | string    | The text displayed below the input field. Usually information about what you'll do with the email
buttonBackground   | string    | The hex color of the button. Defaults to the player color.
errorColor         | string    | The hex color of the error text that can displayed. Yellow by default.
exampleText        | string    | The text that is displayed when the input field is empty.
sectionIndex       | integer   | Only applies to playlists. Used in conjunction with `videoIndex` option to determine which video to begin gating. Defaults to 0.
style              | object    | The styles to be applied to the root turnstile element.
time               | string    | The point in the video when Turnstile displays. A value of "before" shows Turnstile before the video starts. "end" shows it at the end. You can also supply a time in seconds (e.g. 130) and it will appear when the viewer reaches that point in the video (or tries to skip past that point).
topText            | string    | The text displayed above the input field. Usually a request to enter the email.
videoIndex         | integer   | Only applies to playlists. Used in conjunction with `sectionIndex` option to determine which video to begin gating. Defaults to 0.


### Turnstile Plugin Example

{% codeblock turnstile-params.html %}
<script>
  wistiaEmbed = Wistia.embed("abcde12345", {
    plugin: {
      "requireEmail-v1": {
        topText: "Please enter your email below.",
        bottomText: "We may use this email to contact you about the product, but we won't be too pushy.",
        style: {
          background: "#660000",
          color: "#eeffee"
        }
      }
    }
  });
</script>
{% endcodeblock %}







## Post-Roll Call-to-Action Plugin

The Post-Roll Call-to-Action plugin adds an interactive screen of your design,
which slides into view *after* the video has finished playing.

Option Name        | Type    | Description
-----------        | ----    | --------------------------------------------------------
autoSize           | boolean | When true, sets a font-size and line-height for the call to action based on the height of the video. Default is false.
backgroundOpacity  | float   | A decimal between 0 and 1 to set the overall opacity of the background. Default is 0.91.
image              | string  | The image src for the call to action.
link               | string  | The destination URL when you click the post-roll.
on                 | boolean | Whether to show the post-roll. Default is true. Can be set to false to override Customize options.
raw                | string  | The raw HTML for the call to action.
rewatch            | boolean | Whether to show "Rewatch" button in lower left. Defaults to true for text calls to action, false for image or HTML.
style              | object  | The styles to be applied to the root post-roll element.
text               | string  | The text for the call to action.

The link param can be used with either text or image calls to action. If a raw
param is given, it will be used instead of text/image/link.

Our links use `target="\_blank"` to pop open a new window when you click. This 
is so that iframe embeds don't open a new link inside the iframe! If you're 
using an API embed and raw HTML, you can omit `target="\_blank"` safely.

### Call-to-Action Plugin Example

{% codeblock postRoll-api-embed.html %}
<script>
  wistiaEmbed = Wistia.embed("4d8229898d", {
    controlsVisibleOnLoad: true,
    playerColor: "688AAD",
    plugin: {
      "postRoll-v1": {
        text: "This clickable message\n will appear after your\n video ends!",
        link: "http://wistia.com",
        style: {
          backgroundColor: "#616161",
          color: "#ffffff",
          fontSize: "36px",
          fontFamily: "Gill Sans, Helvetica, Arial, sans-serif"
        }
      }
    }
  });
</script>
{% endcodeblock %}

### Scripts and CSS in Post-Rolls

`<script>`, `<style>`, and `<link rel="stylesheet">` tags __are__ allowed in
the `raw` option, but have some special rules around them for security.

1. When saved via the Customize API, `<style>` tags and `style` attributes will be sanitized to
prevent XSS vectors.
2. `<script>` and `<link rel="stylesheet">` tags will not be executed when your
embed is in a wistia.com domain. This includes the video that's visible in your
account. However, if you embed the video on a different domain, the scripts
will execute in order.
3. Assuming you are on a non-wistia.com domain, `<script>`, `<style>`, and
`<link rel="stylesheet">` tags will be injected onto the page immediately after
your HTML has been rendered to the page.





## Socialbar Plugin

The Socialbar Plugin adds social sharing buttons to your video player. Choose
the buttons included, and set specific sharing options, using the Plugin
options.


Option Name        | Type      | Description
-----------        | ----      | ------------------------------
badgeImg           | string    | The src attribute of the logo image.
badgeUrl           | string    | The URL that the logo launches when you click on it.
buttons            | string    | Dash-delimited list of buttons to display, e.g. "playCount-embed-facebook-twitter".
downloadType       | string    | If the download button is available, this determines the quality of video that is downloaded. Possible values are **sd_mp4**, **hd_mp4**, and **original**. **hd_mp4** will only be used if it exists for the video. If it does not, it falls back to **sd_mp4**.
height             | integer   | The height of the socialbar. Not required, but simplifies resizing operations. Defaults to 23. The total height of the socialbar is always this value plus 5 (for margin and padding).
ignoreQueryParams  | boolean   | If pageUrl is not specified, this determines if we should include the query params in the pageUrl. Defaults to false.
includeLinkback    | boolean   | When set to true, embed codes produced by the Embed button will also include a link 
logo               | boolean   | When true, float the badge to the right side of the socialbar.
on                 | boolean   | Whether to show the social bar. Default is true. Can be set to false to override Customize options.
pageTitle          | string    | The specific pageTitle to be promoted when liked or shared.
pageUrl            | string    | The specific pageUrl to be promoted when liked or shared.
position           | string    | The grid location of the Social Bar. Default value is **below**, but **above** is also acceptable.
tweetText          | string    | The text that will be tweeted with the link. Defaults to the title of the page. The keyword substitutions `{page_title}` and `{video_name}` can be used in the tweet text.



### Socialbar Plugin Example

Here's a pretty simple example, invoking the socialbar and adding several
buttons.

{% codeblock plugin_options_for_api_embeds.js %}
<script>
  wistiaEmbed = Wistia.embed("abcde12345", {
    plugin: {
      "socialbar-v1": {
        buttons: "embed-twitter-facebook"
      }
    }
  });
</script>
{% endcodeblock %}

This example is a bit more involved - it specifies the `pageUrl` and
`pageTitle` attributes as well.

{% codeblock socialbar-params.html %}
<script>
  wistiaEmbed = Wistia.embed("4d8229898d", {
    plugin: {
      "socialbar-v1": {
        buttons: "playCount-embed-email-videoStats-twitter-tumblr-facebook",
        pageUrl: "http://wistia.com/blog",
        pageTitle: "Wistia's Blog"
      }
    }
  });
</script>
{% endcodeblock %}


## Captions Plugin

The Captions plugin enables the Wistia captions functionality for your player.

If you want to programmatically set the text for the captions of a video, check
out the [Captions API]({{ '/data-api#captions' | post_url }})

Option Name    | Type    | Description
-----------    | ----    | ----------------------------------------------------------------------------------------------------------------------------
onByDefault    | boolean | Determines whether captions should be visible by default, or if they need to click the CC button first to see them. Defaults to false--they need to click the CC button, which is visible when the mouse is over the video.   

Note that, for `onloadCollapse` to work, `canCollapse` must also be true.

### Using the Captions Plugin

{% codeblock captions-params.html %}
<script>
  wistiaEmbed = Wistia.embed("abcde12345", {
    plugin: {
      "captions-v1": {
        onByDefault: false
      }
    }
  });
</script>
{% endcodeblock %}

### iOS Oddities

The iPhone and iPad use a slightly different mechanism to show captions. For the iphone, captions can only be turned on when the video is already playing and it's in landscape mode. For the iPad, captions can only be turned on when the video is in fullscreen mode, though they will continue to show when not in fullscreen.


