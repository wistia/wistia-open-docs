---
layout: post
title: Embed Plugins Guide
description: Technical guide to embed plugins (like call-to-action, Turnstile)
footer: 'for_developers'
api: true
special_category_link: developers
api_warning: true
category: Developers
post_intro: <p>Wistia embed plugins, like calls-to-action and Turnstile, take
  parameters that can be modified for your needs. Each plugin and it's
  paramaters will be covered in this documentation.</p>
---

## Start Here: Plugins and Customize

With the addition of [customize]({{ '/customize-api' | post_url }}), plugins
enabled in the Account GUI are not visible in embed codes.

If you want to add the plugin on the page, or be able to make changes
to it dynamically, you can build it using the javascript below.

## Post-roll Call-to-Action

### Example

(jump to the end to see the effect)
<div class="video_embed">
<div id="wistia_k4txh7z9c4" class="wistia_embed" style="width:640px;height:360px;"> </div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("k4txh7z9c4");
</script>
</div>

### CTA Options

 Option Name        | Type    | Description
 -----------        | ----    | --------------------------------------------------------
 backgroundOpacity  | float   | A decimal between 0 and 1 to set the overall opacity of the background. Default is 0.91.
 image              | string  | The image src for the call to action.
 link               | string  | The destination URL when you click the postroll.
 raw                | string  | The raw HTML for the call to action.
 style              | object  | The styles to be applied to the root postroll element.
 text               | string  | The text for the call to action.
 version            | string  | The version of the post roll to use. Must be "v1".

The link param can be used with either text or image calls to action. If a raw
param is given, it will be used instead of text/image/link.

Our links use `target="\_blank"` to pop open a new window when you click. This 
is so that iframe embeds don't open a new link inside the iframe! If you're 
using an API embed and raw HTML, you can omit `target="\_blank"` safely.

### Iframe Example

{% codeblock postRoll-params.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345?videoWidth=640&videoHeight=360
&plugin[postRoll][version]=v1&plugin[postRoll][text]=You made it to the end of my video! Now check out my product.
&plugin[postRoll][link]=http://myawesomeproduct.com/awesome
&plugin[postRoll][style][background]=#404040
&plugin[postRoll][style][color]=#ffffff"
 allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"></iframe>
{% endcodeblock %}

### API Embed Example

{% codeblock postRoll-api-embed.html %}
<div id="wistia_abcde12345" style="width:640px;height;360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script src="http://fast.wistia.net/static/E-v1.js"></script>
<script src="http://fast.wistia.net/static/concat/E-v1-gridify,postRoll-v1.js"></script>
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
