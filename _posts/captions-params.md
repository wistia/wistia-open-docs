---
layout: post
for_developers: true
title: Captions Params
description: Want the parameters of the captions? Say no more, here they are!
footer: 'for_developers'
---

## Captions Example:

<div class="video_embed">
  <iframe src="//fast.wistia.net/embed/iframe/e9daad32af?plugin%5Bcaptions-v1%5D%5Bon%5D=true" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="660" height="571" allowfullscreen mozallowfullscreen webkitallowfullscreen oallowfullscreen msallowfullscreen></iframe>
</div>

## Captions Options

 Option Name    | Type    | Description
 -----------    | ----    | ----------------------------------------------------------------------------------------------------------------------------
 onByDefault    | boolean | Determines whether captions should be visible by default, or if they need to click the CC button first to see them. Defaults to false--they need to click the CC button, which is visible when the mouse is over the video.


### iOS Oddities

The iPhone and iPad use a slightly different mechanism to show captions. For the iphone, captions can only be turned on when the video is already playing and it's in landscape mode. For the iPad, captions can only be turned on when the video is in fullscreen mode, though they will continue to show when not in fullscreen.


## iframe Example

{% codeblock captions-params.html %}
<iframe src="//fast.wistia.net/embed/iframe/abcde12345
  ?plugin%5Bcaptions-v1%5D%5Bon%5D=true"
  allowfullscreen mozallowfullscreen webkitallowfullscreen oallowfullscreen msallowfullscreen
  allowtransparency="true" frameborder="0" scrolling="no" 
  class="wistia_embed" name="wistia_embed" width="640" height="560">
</iframe>
{% endcodeblock %}

## API Embed Example

{% codeblock captions-params.html %}
<div id="wistia_abcde12345" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
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
