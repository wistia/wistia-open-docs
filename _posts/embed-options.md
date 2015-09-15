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

These options are for use with the
[Customize API](http://wistia.com/doc/data-api#customizations) and
[Construct an Embed Code]({{ '/construct-an-embed-code' | post_url }}) guide.

<div style="display:none" class="navigable_start"></div>

### autoPlay

If set to true, the video will play as soon as it's ready.

NOTE: `autoPlay` will not work on iOS and other mobile devices due to
restrictions on bandwidth on cellular networks. You can find more information
on these restrictions in the
[Player API Documentation]({{ '/player-api#play' | post_url }}).

### controlsVisibleOnLoad

If set to true, controls like the big play button, playbar, volume, etc. will
be visible as soon as the video is embedded. Default is true.

On mobile devices, this option has no effect (beyond hiding/showing the big
play button) because the player will be using native controls.

### doNotTrack

By default, data for each viewing session is tracked and reported back to the
Wistia servers for display in heatmaps and aggregation graphs. If you do not
want to track viewing sessions, set `doNotTrack` to true.

### endVideoBehavior

This option determines what happens when the video ends.

Possible values are:

- "default": The video stays on the last frame.
- "reset": The video shows the thumbnail and controls if they are set to be
  visible on load.
- "loop": The video plays again from the beginning.

### fullscreenButton

If set to true, the fullscreen button will be available as a video control.

NOTE: iframe embeds must have "allowfullscreen" attributes for this option to
be meaningful. If "allowfullscreen" attributes are missing, then the fullscreen
button will not appear.

NOTE: On mobile devices where we use native controls, this option has no
effect.

### playerPreference

Possible values are "flash", "html5", and "auto". Default is "auto", which will
use information about the video, device, and browser to determine the best
option.

For all options, if the desired preference cannot be used, the logic will
default to "auto".

### playButton

If set to true, the big play button control will appear in the center of the
video before play.

### playbar

If set to true, the playbar--which includes the playhead, current time, and
scrubbing functionality--will be available. If set to false, it is hidden.

NOTE: On mobile devices where we use native controls, this option has no
effect.

### playerColor

Changes the base color of the player. Expects a hexadecimal rgb string like
"ff0000" (red), "000000" (black), "ffffff" (white), or "0000ff" (blue).

### playlistLoop

When set to true and this video has a playlist, it will embed the first video
once the last video has finished.

### preload

For html5 players, sets the video's preload property. Possible values are
"metadata", "auto", and "none", true, and false. The values true and false are
synonyms for "auto" and "none", respectively.

### smallPlayButton

If set to true, the small play button control will be available.

NOTE: On mobile devices where we use native controls, this option has no
effect.

### stillUrl

Overrides the image that appears before the video plays. Expects an absolute
URL to an image. For best results, the image should match the exact aspect
ratio of the video.

### time

Set the time at which the video should start. Expects an integer value in
seconds or string values like "5m45s". This is equivalent to running
`video.time(t)` immediately after initialization.

### email

Associate an email with this video's viewing session. This is equivalent to
running `video.email(email)` immediately after initialization.

### videoFoam

When set to true, the video will monitor the width of its parent element. When
that width changes, the video will match that width and modify its height to
maintain the correct aspect ratio.

### videoQuality

Changes the default playback quality on load. Accepted values are:

- "sd-only": Only play back the 640 width video asset.
- "md": Default to the 960 width video asset when not in fullscreen.
- "hd-only": Only play back the 1280 width video asset.
- "auto": Determines the best asset to use based on heuristics and available
  bandwidth.

### volume

Set the volume of the video. Expects an integer value between 0 and 1. This is
equivalent to running `video.volume(v)` immediately after initialization.

### volumeControl

When set to true, a volume control is available over the video.

NOTE: On mobile devices where we use native controls, this option has no
effect.

### wmode

When set to "transparent", the black background of videos will be removed. When
flash is used, it also sets the "wmode" flash param.

<div style="display:none" class="navigable_end"></div>


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
    playerColor: 'ff69b4'
  });
</script>
{% endcodeblock %}


## Embed Plugins

The following Embed Plugins are available for Wistia videos:

* [Turnstile](#turnstile_plugin) - Add an email gate to your video. [Configure
  it]({{ '/turnstile' | post_url }}) to pass emails to your Email Marketing platform.
* [Post-Roll Call-to-Action](#postroll_calltoaction_plugin) - Suggest an action after viewing.
* [Socialbar](#socialbar_plugin) - Add social sharing buttons to your video player.








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
askName            | boolean   | Determines whether to require first and last name in addition to email. Defaults to false.
bottomText         | string    | The text displayed below the input field. Usually information about what you'll do with the email
buttonBackground   | string    | The hex color of the button. Defaults to the player color.
errorColor         | string    | The hex color of the error text that can displayed. Yellow by default.
emailExampleText   | string    | The text that is displayed when the email input field is empty.
firstNameExampleText | string    | The text that is displayed when the first name input field is empty. Only applicable when `askName` is `true`.
lastNameExampleText | string    | The text that is displayed when the last name input field is empty. Only applicable when `askName` is `true`.
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
          color: "ffffff",
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
badgeImage         | string    | The src attribute of the logo image.
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
