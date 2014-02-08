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
functionality and adding new interfaces. Turnstile, for example, is an email
collector you can add to your video by including the plugin.

## A Note on Embeds and Customize

With the addition of [customize]({{ '/data-api#customizations' | post_url }}),
plugins and embed options enabled in the Account GUI are not visible in embed
codes.

When you add embed options or plugins to your embed code using the approach
outlined below, it will *override* any conflicting customizations (i.e. if you
set `playerColor` inline, and if you've already set it in the GUI, your inline
attribute will be used).

## Embed Options List

These options are for use with both the
[Customize API]({{ '/customize-api' | post_url }}) and
[Construct an Embed Code]({{ '/construct-an-embed-code' | post_url }}) guide.

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
videoQuality          | string  | Specify the starting video quality. sd-only/hd-only/auto
videoWidth            | integer | The original width of the video.
videoHeight           | integer | The original height of the video.
volume                | float   | Set a starting volume for the video on load.
volumeControl         | boolean | Show volume control. Default is false.
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
* Post-Roll Call-to-Action -
* Socialbar - 
* Captions - 




## Turnstile Plugin






## Post-Roll Call-to-Action Plugin

The Post-Roll Call-to-Action plugin adds an interactive screen of your design,
which slides into view *after* the video has finished playing.

### Plugin Options

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

### Using the Call-to-Action Plugin

{% codeblock postRoll-api-embed.html %}
<script>
  wistiaEmbed = Wistia.embed("abcde12345");
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




## Socialbar Plugin

The Socialbar Plugin adds social sharing buttons to your video player. Choose
the buttons included, and set specific sharing options, using the Plugin
options.

### Plugin Options

Option Name | Type    | Description                                                                                   
----------- | ----    | -------------------------------------------
badgeImg    | string  | The src attribute of the logo image.                                                           
badgeUrl    | string  | The URL that the logo launches when you click on it.                                           
buttons     | string  | Dash-delimited list of buttons to display. Button options: **digg**, **email**, **embed**, **facebook**, **googlePlus**, **linkedIn**, **reddit**, **stumbleUpon**, **tumblr**, **twitter**, **videoStats**
logo        | boolean | When true, float the badge to the right side of the socialbar.
pageTitle   | string  | The specific pageTitle to be promoted when liked or shared.
pageUrl     | string  | The specific pageUrl to be promoted when liked or shared.
position    | string  | The grid location of the Social Bar. Default value is **below**, but **above** also acceptable.
tweetText   | string  | The text that will be tweeted with the link. Defaults to the name of the video in Wistia.
version     | string  | The version of the socialbar to use. Must be "v1".

### Using the Socialbar Plugin

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


## Captions Plugins


## Using Embed Plugins



### API and SEO Embed Codes

Given a video with the hashed ID `abcde12345`, we can build an API embed code
and include a plugin (like the social bar) as follows.

First, here is what the embed code should look like:

{% codeblock example_api_embed.html %}
<div id="wistia_abcde12345" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script> wistiaEmbed = Wistia.embed("abcde12345"); </script>
{% endcodeblock %}

We will be adding a nested plugin object to the embed parameters, referring to
the [social bar plugin options documentation]({{ '/socialbar-params' | post_url }}).



### iframe Embed Codes

Let's go through the same example (video with hashed ID `abcde12345`) as an iframe.

First the embed code:

{% codeblock example_iframe_embed.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345"
  allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"> </iframe>
{% endcodeblock %}

Now we append the plugin using URL-encoded bracket notation:

{% codeblock example_iframe_embed.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345?plugin%5Bsocialbar%5D%5Bversion%5D=v1&plugin%5Bsocialbar%5D%5Bbuttons%5D=embed-twitter-facebook"
  allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="360"></iframe>
{% endcodeblock %}

## Embed Plugin Options Guides

### Post-roll Call-to-Action

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




### Social Sharing Bar

### Example

<div id="wistia_acg32qioez" class="wistia_embed" style="width:640px;height:388px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("acg32qioez");
</script>


### Socialbar Options

                                         

Button order can be changed. Possible buttons are:



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

### Captions and Transcripts

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

### Turnstile (Email Gate)

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
