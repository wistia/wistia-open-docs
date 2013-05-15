---
layout: post
title: Turnstile Params
description: Want access to the parameters for the Turnstile feature? Ask and ye shall receive. 
footer: 'for_developers'
---

<div id="wistia_4d8229898d" style="width:660px;height:371px;" data-video-width="660" data-video-height="371">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/E-v1.js"></script>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/concat/E-v1-gridify%2CrequireEmail-v1.js"></script>

<script>/*<![CDATA[*/
wistiaEmbed = Wistia.embed("4d8229898d", {
    videoWidth: "660",
    videoHeight: "371",
    controlsVisibleOnLoad: true
});
Wistia.plugin.requireEmail(wistiaEmbed, {
    version: "v1",
    topText: "Enter your email address\nto view this video.",
    bottomText: "",
    style: {
    backgroundColor: "#303030"
    }
});
/*]]*/</script>

Turnstile slides an extremely simple form over the video as soon as it's ready to play. The sizing of the top 
and bottom text is determined by the height of the video by default. If you specify the fontSize property in the 
style option, you can override the default sizing.

## Turnstile Options

 Option Name      | Type   | Description                                                                                         
 -----------      | ----   | ----------------------------------------------------------------------------------------------------
 bottomText       | string | The text displayed below the input field. Usually information about what you'll do with the email.   
 buttonBackground | string | The hex color of the button. Defaults to the player color.                                           
 errorColor       | string | The hex color of the error text that can displayed. Yellow by default.                               
 exampleText      | string | The text that is displayed when the input field is empty.                                            
 style            | object | The styles to be applied to the root turnstile element.                                              
 topText          | string | The text displayed above the input field. Usually a request to enter the email.                      
 version          | string | Must be "v1".                                                                                        

## Iframe Example

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

## API Embed Example

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
