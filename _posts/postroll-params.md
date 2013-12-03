---
layout: post
title: Post-Roll Call to Action Parameters
description: Need to find the parameters for the post roll call to action feature? Look no further, they're all here!
footer: 'for_developers'
---

### Post Roll Example (jump to the end!)

<div class="video_embed">
<div id="wistia_4d8229898d" style="width:660px;height:371px;" data-video-width="660" data-video-height="371">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.net/assets/external/E-v1.js"></script>
<script>/*<![CDATA[*/
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
/*]]*/</script>
</div>

### Post Roll Options

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

The link param can be used with either text or image calls to action. If a raw param 
is given, it will be used instead of text/image/link.

Our links use <span class="code">target="\_blank"</span> to pop open a new window when you click. This is so that iframe embeds don't open a new link inside the iframe! If you're using an API embed and raw HTML, you can omit <span class="code">target="\_blank"</span> safely.

### Iframe Example

{% codeblock postRoll-params.html %}
<iframe src="//fast.wistia.net/embed/iframe/abcde12345?
&plugin%5BpostRoll-v1%5D%5Bversion%5D=v1&plugin%5BpostRoll%5D%5Btext%5D=You%20made%20it%20to%20the%20end%20of%20my%20video!%20Now%20check%20out%20my%20product.
&plugin%5BpostRoll-v1%5D%5Blink%5D=http%3A%2F%2Fmyawesomeproduct.com%2Fawesome
&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5Bbackground%5D=%23404040
&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5Bcolor%5D=%23ffffff"
 allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"></iframe>
{% endcodeblock %}

### API Embed Example

{% codeblock postRoll-api-embed.html %}
<div id="wistia_abcde12345" style="width:640px;height;360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("abcde12345", {
  videoWidth: 640,
  videoHeight: 360
});
Wistia.plugin.postRoll(wistiaEmbed, {
  version: "v1",
  text: "You made it to the end of my video! Now check out my product.",
  link: "http://myawesomeproduct.com/awesome",
  style: {
    background: "#404040",
    color: "#ffffff"
  },
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
