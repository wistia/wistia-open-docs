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


## Social Sharing Bar

### Example

<div id="wistia_acg32qioez" class="wistia_embed" style="width:640px;height:388px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("acg32qioez");
</script>


### Socialbar Options

 Option Name | Type    | Description                                                                                   
 ----------- | ----    | ----------------------------------------------------------------------------------------------
 badgeImg    | string  | The src attribute of the logo image.                                                           
 badgeUrl    | string  | The URL that the logo launches when you click on it.                                           
 buttons     | string  | Dash-delimited list of buttons to display.                                                     
 logo        | boolean | When true, float the badge to the right side of the socialbar.                                 
 pageTitle   | string  | The specific pageTitle to be promoted when liked or shared.                                    
 pageUrl     | string  | The specific pageUrl to be promoted when liked or shared.                                      
 position    | string  | The grid location of the Social Bar. Default value is "below", but "above" also acceptable.    
 tweetText   | string  | The text that will be tweeted with the link. Defaults to the name of the video in Wistia.      
 version     | string  | The version of the socialbar to use. Must be "v1".                                             

Button order can be changed. Possible buttons are:

*  digg
*  email
*  embed
*  facebook
*  googlePlus
*  linkedIn
*  reddit
*  stumbleUpon
*  tumblr
*  twitter
*  videoStats

### iframe Embed Example

{% codeblock socialbar-params.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345
?videoWidth=640&videoHeight=360&plugin[socialbar][version]=v1
&plugin[socialbar][buttons]=embed-twitter-facebook&plugin[socialbar][pageUrl]=
http://wistia.com&pageTitle=The best in online video hosting." 
allowtransparency="true" frameborder="0" scrolling="no" 
class="wistia_embed" name="wistia_embed" width="640" height="387">
</iframe>
{% endcodeblock %}

### API Embed Example

{% codeblock socialbar-params.html %}
<div id="wistia_abcde12345" style="width:640px;height;387px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script src="http://fast.wistia.net/static/E-v1.js"></script>
<script src="http://fast.wistia.net/static/concat/E-v1-gridify,socialbar-v1.js"></script>
<script>
  wistiaEmbed = Wistia.embed("abcde12345", {
    videoWidth: 640,
    videoHeight: 360
  });
  Wistia.plugin.socialbar(wistiaEmbed, {
    version: "v1"
    buttons: "embed-twitter-facebook",
    pageUrl: "http://wistia.com",
    pageTitle: "The best in online video hosting."
  });
</script>
{% endcodeblock %}

## Captions and Transcripts

### Example

<div id="wistia_rbhxsdm1rc" class="wistia_embed" style="width:640px;height:360px;"> </div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("rbhxsdm1rc");
</script>

### Transcript Options

 Option Name    | Type    | Description                                                                                                                 
 -----------    | ----    | ----------------------------------------------------------------------------------------------------------------------------
 canCollapse    | boolean | Determines whether the transcript can be toggled open/closed. Defaults to false.                                             
 canDownload    | boolean | Determines whether a download link is provided on the interactive transcript. Defaults to false.                             
 canPrint       | boolean | Determines whether a print link is provided on the interactive transcript. Defaults to true.                                 
 container      | string  | The container ID where we will place the interactive transcript. Only useful for API embed.                                  
 height         | integer | The height of the interactive transcript. Defaults to 200px if below the video, or the height of the video if on the side.   
 collapseOnload | boolean | Determines whether the transcript starts out collapsed. Defaults to false.                                                   
 position       | string  | The grid location where the transcript should live. Can be above/below/left/right.                                           
 version        | string  | Must be "v2".                                                                                                                
 width          | integer | The width of the interactive transcript. Defaults to the width of the embed if below the video, or 275px if on the side.     

Note that, for `onloadCollapse` to work, `canCollapse` must also be true.

### iframe Example

{% codeblock transcript-params.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345
  ?videoWidth=640&videoHeight=360&plugin[transcript][version]=v2
  &plugin[transcript][position]=below&plugin[transcript][height]=300
  &plugin[transcript][canDownload]=true" 
  allowtransparency="true" frameborder="0" scrolling="no" 
  class="wistia_embed" name="wistia_embed" width="640" height="560">
</iframe>
{% endcodeblock %}

### API Embed Example

{% codeblock transcript-params.html %}
<div id="wistia_abcde12345" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/concat/E-v1.js"></script>
<script>
  wistiaEmbed = Wistia.embed("abcde12345", {
    version: "v1",
    videoWidth: 640,
    videoHeight: 360,
    controlsVisibleOnLoad: true,
    playerColor: "aae3d8"
  });
  Wistia.plugin.transcript(wistiaEmbed, {
    version: "v2",
    position: "below",
    height: 300,
    canDownload: true
  });
</script>
{% endcodeblock %}

## Turnstile (Email Gate)

### Example

<div id="wistia_2pg2ssc7uk" class="wistia_embed" style="width:640px;height:427px;"> </div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("2pg2ssc7uk");
</script>

Turnstile slides an extremely simple form over the video as soon as it's ready
to play. The sizing of the top and bottom text is determined by the height of
the video by default. If you specify the `fontSize` property in the style
option, you can override the default sizing.

### Turnstile Options

 Option Name      | Type   | Description                                                                                         
 -----------      | ----   | ----------------------------------------------------------------------------------------------------
 bottomText       | string | The text displayed below the input field. Usually information about what you'll do with the email.   
 buttonBackground | string | The hex color of the button. Defaults to the player color.                                           
 errorColor       | string | The hex color of the error text that can displayed. Yellow by default.                               
 exampleText      | string | The text that is displayed when the input field is empty.                                            
 style            | object | The styles to be applied to the root turnstile element.                                              
 topText          | string | The text displayed above the input field. Usually a request to enter the email.                      
 version          | string | Must be "v1".                                                                                        

### iframe Example

{% codeblock turnstile-params.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345
  ?videoWidth=640&videoHeight=360&plugin[requireEmail][version]=v1
  &plugin[requireEmail][topText]=Please enter your email below.
  &plugin[requireEmail][bottomText]=We may use this email to contact you about the product, but we won't be too pushy.
  &plugin[requireEmail][style][background]=#660000&plugin[requireEmail][style][color]=#eeffee" 
  allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" 
  name="wistia_embed" width="640" height="360">
</iframe>
{% endcodeblock %}

### API Embed Example

{% codeblock turnstile-params.html %}
<div id="wistia_abcde12345" style="width:640px;height;360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script src="http://fast.wistia.net/static/E-v1.js"></script>
<script src="http://fast.wistia.net/static/concat/E-v1-gridify,requireEmail-v1.js"></script>
<script>
  wistiaEmbed = Wistia.embed("abcde12345", {
    videoWidth: 640,
    videoHeight: 360
  });
  Wistia.plugin.requireEmail(wistiaEmbed, {
    version: "v1",
    topText: "Please enter your email below.",
    bottomText: "We may use this email to contact you about the product, but we won't be too pushy.",
    style: {
      background: "#660000",
      color: "#eeffee"
    }
  });
</script>
{% endcodeblock %}
