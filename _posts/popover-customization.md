---
title: Popover Embed Customization
layout: post
category: Developers
api_warning: true
description: Customize your 'popover' embeds with these tips.
footer: 'for_developers'
post_intro: <p>Wistia's popover (lightbox) implementation is custom designed to make sure your viewers have the best playback experience possible. It has many options to make it comfortably fit it into your site.</p>
---

## Popover Embeds

In their most basic form, popover embeds look like this:

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5 popover=true" style="width:300px;height:150px;">&nbsp;</div>
{% endcodeblock %}

That is, they are like [Standard Inline Embeds]({{ '/embedding#inline_embeds' | post_url }}),
but with the option `popover=true`.
The popover options defined below would all be added into the `class`
attribute, right after `popover=true`. For example, if I wanted a thin border on
my popovers, I'd modify the embed code to look like this:

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5
popover=true popoverBorderWidth=2" style="width:300px;height:150px;">&nbsp;</div>
{% endcodeblock %}

You can set any of the options listed below in exactly the same way.

## Options

For a list of all generic options, refer to the
[Embed Options]({{ '/embed-options' | post_url }}) documentation.
The options listed here are the ones specific to popovers or with special
popover behavior.

<div style="display:none;" class="navigable_start"></div>

### autoPlay

The `autoPlay` option is true by default for popovers. Setting it to false will
have no effect.

### popover=true

The `popover` option is important, but the value should always be the same.
Setting the `popover=true` will tell the embed code that it should behave like
a popover.

### popoverShowOnLoad

Set this to true and the popover will immediately open the video as if it was
clicked. This may be useful for landing pages where you want the video to be
front and center but don't otherwise have the space.

### playButton

If `popoverContent` is set to "thumbnail", then `playButton` determines whether
the big play button shows up over the thumbnail.

This option also controls whether the big play button will show up over the
video when the video loads, though it is usually not relevant to popovers in
that form since they autoplay.

### popoverContent

When `popoverContent` is not set or explicitly set to "thumbnail", the video
thumbnail will be rendered in the container, cropped to fit with no black bars.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5
popover=true popoverContent=thumbnail" style="width:300px;height:150px;">&nbsp;</div>
{% endcodeblock %}

When `popoverContent` is set to "html", the HTML inside the container is not
modified. Clicking inside the container, however, will still launch the popover
video.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5 popover=true popoverContent=html"
style="display:inline-block; white-space:nowrap;">
  <a href="#">Launch the popover!</a>
</div>
{% endcodeblock %}

Note that you do not need to use an `<a>` tag inside the popover, but it is
used here because it conveniently uses native link styles.

Here's a similar version where a custom image is also defined:

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5 popover=true popoverContent=html"
style="display:inline-block; white-space:nowrap;">
  <a href="#">
    <img src="http://wistia.com/doc/custom-image-for-example-purposes.jpg" alt="" />
  </a>
</div>
{% endcodeblock %}

### popoverOverlayColor

Use this to change the overlay's background color in RGB hexadecimal. By
default this is set to "000000". To change it to white, use "ffffff".

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5
popover=true popoverOverlayColor=ffffff" style="width:300px;height:150px;">&nbsp;</div>
{% endcodeblock %}

### popoverOverlayOpacity

Use this to change the overlay's opacity. This expects a decimal value between
0 and 1. The default value us 0.5.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5
popover=true popoverOverlayOpacity=0.8" style="width:300px;height:150px;">&nbsp;</div>
{% endcodeblock %}

### popoverAnimateThumbnail

Set this to `true` if you want the play button to expand to cover the thumbnail
on hover, while also displaying the duration of the video. Set to `false` if
you want no special behavior on hover.

If not specified, the default is `false`, though this option is explicitly set
to `true` by default in the embed codes you'll get from the Wistia App UI.

### popoverAnimation

Currently popovers have a few different launch animations. Possible values are:

- none: Shows the popover with no animation and no delay.
- fade: Fades in the popover along with the overlay.
- slide: Fades in the overlay and slides/fades the video up into place.

The default is "slide", though because of graphics card interaction issues,
it will default to "fade" if the video uses the Flash player.

### popoverPreventScroll

By default, popovers render an overlay covering the entire document. But they
do not stop the user from scrolling the content behind the video. Set this to
true if you would like to prevent the user from scrolling content.

Note: It accomplishes this by setting `height:100%;overflow:hidden` CSS
properties on the `<body>` element. If you have a custom scrolling
implementation, this will not prevent scrolling in it. To implement a custom
solution, you may want to bind to the "popovershow" and "popoverhide" events.

### popoverSize

By default, popover videos will automatically take over most of the browser
window, leaving a comfortable space between the video and the edge of the window
on all sides.

If you would instead prefer to define specific dimensions for the video, you
can set `popoverSize` to `widthxheight`. For example, to make the popover
video display at 640px by 360px, you would use `popoverSize=640x360`.

Note: If the specified dimensions would be too large to display on the viewer's
screen, the video will instead revert to the responsive default.

### popoverBorderWidth

Popovers have no borders by default. Use this option to add a border around the
video. It expects the width to be an integer defined in pixels.

### popoverBorderColor

Use this option to change the popover border color. By default this is set to
"ffffff". To change it to black, use "000000".

### popoverBorderRadius

Popovers have 0 border radius&mdash;square borders&mdash;by default. If your
website uses round borders, use this option to set a matching border radius. It
expects a value in pixels.

### popoverBoxShadow

Popovers have a diffuse box shadow by default. If you don't want any box
shadow, set this option to false.

### popoverCaption

Use this option to add some short text directly below the video. If there are
spaces, the value must be percent-encoded, which you can do with the browser's
`encodeURIComponent` function.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5
popover=true popoverCaption=This%20is%20a%20caption." style="width:300px;height:150px;">&nbsp;</div>
{% endcodeblock %}

### popoverCaptionContainer

If you need longer text or more complex behavior and styling, use this option
instead of `popoverCaption`. With `popoverCaptionContainer`, you specify the ID
of a DOM element that should be shown below the caption. This DOM element will
be moved&mdash;_not_ cloned&mdash; and displayed when the popover is launched,
so any bindings or styles that target it will stay in tact.

{% codeblock wistia_html.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_5bbw8l7kl5
popover=true popoverCaptionContainer=caption_content1" style="width:300px;height:150px;">&nbsp;</div>
<div id="caption_content1" style="display:none;">
  I can have <em>complex markup</em> here,
  <a href="#" onclick="alert('hi!'); return false;">setup bindings</a>, or
  even define other embed codes to accompany it.
</div>
{% endcodeblock %}

<div style="display:none;" class="navigable_end"></div>

## Methods

For a list of all methods, refer to the
[Player API]({{ '/player-api#methods' | post_url }}).  The methods listed here
are the ones specific to popovers. Popover methods are defined in the `popover`
namespace of each player API handle.

<div style="display:none;" class="navigable_start"></div>

### height()

Returns the current height of the popover container (usually the thumbnail) in
pixels.

{% codeblock wistia_js.js %}
// e.g. set the height of <div id="next_to_video"> to match the video.
$("#next_to_video").height(video.popover.height());
{% endcodeblock %}

### height(val, [options])

Sets the height of the popover container to `val` in pixels. It is expected
that `val` is an integer. Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the width of the container
will also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.popover.height(100);
video.popover.height(150, { constrain: true });
{% endcodeblock %}

### hide()

If the popover is open, this will hide it.

{% codeblock wistia_js.js %}
video.popover.hide()
{% endcodeblock %}

### show()

If the popover is hidden, this will show it.

{% codeblock wistia_js.js %}
video.popover.show()
{% endcodeblock %}


### width()

Returns the current width of the popover container (usually the thumbnail) in
pixels.

{% codeblock wistia_js.js %}
// e.g. set the width of <div id="next_to_video"> to match the video.
$("#next_to_video").width(video.popover.width());
{% endcodeblock %}

### width(val, [options])

Sets the width of the popover container to `val` in pixels. It is expected
that `val` is an integer. Decimal or string values will be truncated.

If `constrain: true` is passed as an option, then the height of the container
will also be updated to maintain the correct aspect ratio.

{% codeblock wistia_js.js %}
video.popover.width(100);
video.popover.width(150, { constrain: true });
{% endcodeblock %}

<div style="display:none;" class="navigable_end"></div>

## Events

For a list of all generic events, refer to the
[Player API]({{ '/player-api#events' | post_url }}). The events listed here are
the ones specific to popovers.


<div style="display:none;" class="navigable_start"></div>

### popovershow

Fired when the popover becomes visible.

{% codeblock wistia_js.js %}
video.bind("popovershow", function() {
  console.log("The popover for ", video.hashedId(), " is visible!");
});
{% endcodeblock %}

### popoverhide

Fired when the popover is hidden.

{% codeblock wistia_js.js %}
video.bind("popoverhide", function() {
  console.log("The popover for ", video.hashedId(), " is hidden!");
});
{% endcodeblock %}

<div style="display:none;" class="navigable_end"></div>
