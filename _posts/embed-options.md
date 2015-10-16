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

## Using Embed Options

When you add embed options to your embed code using the approach outlined
below, it will *override* any conflicting customizations (i.e. if you set
`playerColor` inline, and if you've already set it in the GUI, your inline
attribute will be used).

<div class="navigable_start" style="display:none;"></div>

### Setting options on API, Popover, or SEO embeds

Options can be set in two ways with API. First, the most common method is to
add class in the form `option=value`. Multiple options are separated by spaces.
If an option value has spaces, you can [percent encode](#percent_encoding) it.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5
videoFoam=true playerColor=ff0000"
style="width:640px;height:360px;">&nbsp;</div>
{% endcodeblock %}

If you have more complex options or need to generate them on the client side,
you can use `window._wq` to set them with a javascript object literal:

{% codeblock wistia_html.html %}
<script>
window._wq = window._wq || [];
_wq.push({ "5bb": {
  videoFoam: true,
  playerColor: "ff0000",
  plugin: {
    "requireEmail-v1": {
      lowerText: "Thanks in advance!"
    }
  }
});
</script>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5" style="width:640px;height:360px;">&nbsp;</div>
{% endcodeblock %}

Note that this will only have an effect if the options are defined before the
video is embedded.

### Setting options on iframe embeds

Options can only be set one way with iframe embeds. It is similar to the
`option=value` syntax of API embeds, but every option and value must be [percent
encoded](#percent_encoding) and separated by an `&`. The first character after
the video's hashed ID must be a `?`.

{% codeblock wistia_html.html %}
<iframe src="//fast.wistia.net/embed/iframe/abcde12345?videoFoam=true&playerColor=ff0000" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" allowfullscreen mozallowfullscreen webkitallowfullscreen oallowfullscreen msallowfullscreen width="640" height="360"></iframe>
<script src="//fast.wistia.net/assets/external/E-v1.js" async></script>
{% endcodeblock %}

### Percent encoding

Need a quick way to percent encode some values? Look no further! Type your
value in the box below and copy the percent encoded version.

<textarea id="value_before_percent_encoding" placeholder="Value before percent encoding" rows="5" cols="60">
</textarea>

<textarea id="value_after_percent_encoding" readonly rows="5" cols="60">
Value%20after%20percent%20encoding
</textarea>

Note that, if you have `mykey=myvalue`, you must encode both `mykey` and
`myvalue` separately; you don't want to include the `=` in your percent
encoding!

<script>
$(function() {
  var updateAfterEncoding,
    $beforeEncoding,
    $afterEncoding;

  $beforeEncoding = $("#value_before_percent_encoding");
  $afterEncoding = $("#value_after_percent_encoding");

  updateAfterEncoding = function() {
    $afterEncoding.val(encodeURIComponent($beforeEncoding.val()))
  };

  $beforeEncoding.on('keyup', updateAfterEncoding);
  $beforeEncoding.on('paste', updateAfterEncoding);
});
</script>

### Setting options using the Customize API

You can update embed options saved on Wistia's servers using the API. This way,
wherever you embed your video, it will inherit the customizations you've
defined. Visit the [Customize API documentation](/data-api#customizations) to
see how.

NOTE: When using the Customize API to update embed options, you never need to
percent encode any option names or values.

<div style="display:none" class="navigable_end"></div>


## Options List

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

### playlistsLinks

The `playlistLinks` option lets you associate specially crafted links on your
page with a video, turning them into a playlist. For information about how this
works, check out the
[Embed Links documentation]({{ '/embed-links#special_playlist_options' | post_url }}).

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

To mute the video on load, set this option to 0.

### volumeControl

When set to true, a volume control is available over the video.

NOTE: On mobile devices where we use native controls, this option has no
effect.

### wmode

When set to "transparent", the black background of videos will be removed. When
flash is used, it also sets the "wmode" flash param.

<div style="display:none" class="navigable_end"></div>

## Embed Plugins

The following Embed Plugins are available for Wistia videos:

* [Turnstile](#turnstile) - Add an email gate to your video.
  [Configure it]({{ '/turnstile' | post_url }}) to pass emails to your Email Marketing platform.
* [Post-Roll CTA](#postroll_cta) - Suggest an action after viewing.
* [Socialbar](#socialbar) - Add social sharing buttons to your video player.


## Turnstile

The Turnstile plugin slides an extremely simple form over the video at a time
of your choosing. The sizing of the top and bottom text is determined by the
height of the video by default.

Turnstile also tries to avoid asking for the viewers email if it has already
been collected. It does this by saving the email in local storage for the
specific `location.href` where it was collected. You can turn off this
functionality by setting `alwaysShow` to true.

### Turnstile Plugin Example

{% codeblock wistia_html.html %}
<script>
window._wq = window._wq || [];
_wq.push({ "5bb": {
  plugin: {
    "requireEmail-v1": {
      topText: "Please enter your email below.",
      bottomText: "We may use this email to contact you about the product, but we won't be too pushy.",
      time: 30,
      askName: true
    }
  }
});
</script>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5" style="width:640px;height:360px;">&nbsp;</div>
{% endcodeblock %}

### Turnstile Plugin Options

<div style="display:none;" class="navigable_start"></div>

### allowSkip

Determines whether to display a "Skip" button in the lower right for a gate at
the beginning or middle. Defaults to false.

### alwaysShow

Determines whether to display the Turnstile gate even if the email has already
been collected. Defaults to false.

### askName

Determines whether to require first and last name in addition to email.
Defaults to false.

### bottomText

The text displayed below the input field. Usually this is information about
what you'll do with the email.

### buttonBackground

The hex color of the button. Defaults to the player color.

### errorColor

The hex color of the error text that can displayed. Yellow by default.

### emailExampleText

The text that is displayed when the email input field is empty.

### firstNameExampleText

The text that is displayed when the first name input field is empty. Only
applicable when `askName` is `true`.

### lastNameExampleText

The text that is displayed when the last name input field is empty. Only
applicable when `askName` is `true`.

### sectionIndex

Only applies to playlists. Used in conjunction with `videoIndex` option to
determine which video to begin gating. Defaults to 0.

### time

The point in the video when Turnstile displays. A value of "before" shows
Turnstile before the video starts. "end" shows it at the end. You can also
supply a time in seconds (e.g. 130) and it will appear when the viewer reaches
that point in the video (or tries to skip past that point).

### topText

The text displayed above the input field. Usually a request to enter the email.

### videoIndex

Only applies to playlists. Used in conjunction with `sectionIndex` option to
determine which video to begin gating. Defaults to 0.

<div style="display:none;" class="navigable_end"></div>


## Post-Roll CTA

The Post-Roll Call-to-Action plugin adds an interactive screen of your design,
which slides into view *after* the video has finished playing.

### Post-Roll CTA Plugin Example

{% codeblock wistia_html.html %}
<script>
window._wq = window._wq || [];
_wq.push({ "4d8": {
  plugin: {
    "postRoll-v1": {
      text: "This clickable message\n will appear after your\n video ends!",
      link: "http://wistia.com"
    }
}
});
</script>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_4d8229898d" style="width:640px;height:360px;">&nbsp;</div>
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

### Post-Roll CTA Plugin Options

<div style="display:none;" class="navigable_start"></div>

### autoSize

When true, sets a font-size and line-height for the call to action based on the
height of the video. Default is false.

### backgroundOpacity

A decimal between 0 and 1 to set the overall opacity of the background. Default
is 0.91.

### image

The image src for the call to action.

### link

The destination URL when you click the post-roll.

This param can be used with either text or image calls to action. If a raw
param is given, it will be used instead of text/image/link.

Links use `target="\_blank"` to pop open a new window when you click. This
is so that iframe embeds don't open a new link inside the iframe! If you're
using an API embed and raw HTML, you can omit `target="\_blank"` safely.

### on

Whether to show the post-roll. Default is true. Can be set to false to override
Customize options.

### raw

The raw HTML for the call to action.

### rewatch

Whether to show "Rewatch" button in lower left. Defaults to true for text calls
to action, false for image or HTML.

### text

The text for the call to action.

<div style="display:none;" class="navigable_end"></div>

## Socialbar

The Socialbar Plugin adds social sharing buttons to your video player. Choose
the buttons included, and set specific sharing options, using the Plugin
options.

### Socialbar Plugin Example

Here's a pretty simple example, invoking the socialbar and adding several
buttons.

{% codeblock wistia_html.html %}
<script>
window._wq = window._wq || [];
_wq.push({ "4d8": {
  plugin: {
    "socialbar-v1": {
      buttons: "embed-twitter-facebook"
    }
  }
});
</script>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_4d8229898d" style="width:640px;height:360px;">&nbsp;</div>
{% endcodeblock %}

This example is a bit more involved - it specifies the `pageUrl` and
`pageTitle` attributes as well.

{% codeblock wistia_html.html %}
<script>
window._wq = window._wq || [];
_wq.push({ "4d8": {
  plugin: {
    "socialbar-v1": {
      buttons: "playCount-embed-email-videoStats-twitter-tumblr-facebook",
      pageUrl: "http://wistia.com/blog",
      pageTitle: "Wistia's Blog"
    }
  }
});
</script>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_4d8229898d" style="width:640px;height:360px;">&nbsp;</div>
{% endcodeblock %}

### Socialbar Plugin Options

<div style="display:none;" class="navigable_start"></div>

### badgeImage

The src attribute of the logo image.

### badgeUrl

The URL that the logo launches when you click on it.

### buttons

Dash-delimited list of buttons to display, e.g.
"playCount-embed-facebook-twitter".

### downloadType

If the download button is available, this determines the quality of video that
is downloaded. Possible values are "sd_mp4", "hd_mp4", and "original".
"hd_mp4" will only be used if it exists for the video. If it does not, it falls
back to "sd_mp4".

### height

The height of the socialbar. Not required, but simplifies resizing operations.
Defaults to 23. The total height of the socialbar is always this value plus 5
(for margin and padding).

### ignoreQueryParams

If pageUrl is not specified, this determines if we should include the query
params in the pageUrl. Defaults to true.

### includeLinkback

When set to true, embed codes produced by the Embed button will also include a
link.

### logo

When true, float the badge to the right side of the socialbar.

### on

Whether to show the social bar. Default is true. Can be set to false to
override Customize options.

### pageTitle

The specific pageTitle to be promoted when liked or shared.

### pageUrl

The specific pageUrl to be promoted when liked or shared.

### tweetText

The text that will be tweeted with the link. Defaults to the title of the page.
The keyword substitutions `{page_title}` and `{video_name}` can be used in the
tweet text.

<div style="display:none;" class="navigable_end"></div>
