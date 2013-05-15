---
layout: post
title: Postroll Parameters
description: Need to find the parameters for the post roll call to action feature? Look no further, they're all here!
footer: 'for_developers'
---

### Postroll Example (jump to the end!)

<div class="video_embed">
<div id="wistia_4d8229898d" style="width:660px;height:371px;" data-video-width="660" data-video-height="371">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/E-v1.js"></script>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/concat/E-v1-gridify%2CpostRoll-v1.js"></script>

<script>/*<![CDATA[*/
wistiaEmbed = Wistia.embed("4d8229898d", {
    videoWidth: "660",
    videoHeight: "371",
    controlsVisibleOnLoad: true,
    playerColor: "688AAD"
});
Wistia.plugin.postRoll(wistiaEmbed, {
    version: "v1",
    text: "This clickable message<br/> will appear after your<br/> video ends!",
    link: "http://wistia.com",
    style: {
    backgroundColor: "#616161",
    color: "#ffffff",
    fontSize: "36px",
    fontFamily: "Gill Sans, Helvetica, Arial, sans-serif"
    }
});
/*]]*/</script>
</div>

### Postroll Options

 Option Name        | Type    | Description
 -----------        | ----    | --------------------------------------------------------
 backgroundOpacity  | float   | A decimal between 0 and 1 to set the overall opacity of the background. Default is 0.91.
 image              | string  | The image src for the call to action.
 link               | string  | The destination URL when you click the postroll.
 raw                | string  | The raw HTML for the call to action.
 style              | object  | The styles to be applied to the root postroll element.
 text               | string  | The text for the call to action.
 version            | string  | The version of the post roll to use. Must be "v1".

The link param can be used with either text or image calls to action. If a raw param 
is given, it will be used instead of text/image/link.

Our links use <span class="code">target="\_blank"</span> to pop open a new window when you click. This is so that iframe embeds don't open a new link inside the iframe! If you're using an API embed and raw HTML, you can omit <span class="code">target="\_blank"</span> safely.

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
version: "v1"
text: "You made it to the end of my video! Now check out my product."
link: "http://myawesomeproduct.com/awesome"
style: {
  background: "#404040",
  color: "#ffffff"
}
});
</script>
{% endcodeblock %}
