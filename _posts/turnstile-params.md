---
layout: post
title: Turnstile Params
description: Want access to the parameters for the Turnstile feature? Ask and ye shall receive. 
footer: 'for_developers'
---

<div id="wistia_4d8229898d" style="width:660px;height:371px;" class="wistia_embed">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>

<script>/*<![CDATA[*/
wistiaEmbed = Wistia.embed("4d8229898d", {
  plugin: {
    "requireEmail-v1": {
      topText: "Enter your email address\nto view this video.",
      bottomText: "",
      style: {
        backgroundColor: "#303030"
      }
    }
  }
});
/*]]*/</script>

Turnstile slides an extremely simple form over the video as soon as it's ready to play. The sizing of the top 
and bottom text is determined by the height of the video by default. If you specify the fontSize property in the 
style option, you can override the default sizing.

## Turnstile Options

 Option Name        | Type      | Description
 -----------        | ----      | ----------------------------------------------------------------------------------------------------
 allowSkip          | boolean   | Determines whether to display a "Skip" button in the lower right for a gate at the beginning or middle. Defaults to false.
 alwaysShow         | boolean   | Determines whether to display the Turnstile gate even if the email has already been collected. Defaults to false.
 bottomText         | string    | The text displayed below the input field. Usually information about what you'll do with the email
 buttonBackground   | string    | The hex color of the button. Defaults to the player color.
 errorColor         | string    | The hex color of the error text that can displayed. Yellow by default.
 exampleText        | string    | The text that is displayed when the input field is empty.
 sectionIndex       | integer   | Only applies to playlists. Used in conjunction with `videoIndex` option to determine which video to begin gating. Defaults to 0.
 style              | object    | The styles to be applied to the root turnstile element.
 time               | string    | The point in the video when Turnstile displays. A value of "before" shows Turnstile before the video starts. "end" shows it at the end. You can also supply a time in seconds (e.g. 130) and it will appear when the viewer reaches that point in the video (or tries to skip past that point).
 topText            | string    | The text displayed above the input field. Usually a request to enter the email.
 videoIndex         | integer   | Only applies to playlists. Used in conjunction with `sectionIndex` option to determine which video to begin gating. Defaults to 0.

## Iframe Example

{% codeblock turnstile-params.html %}
<iframe src="//fast.wistia.net/embed/iframe/abcde12345
  ?plugin%5BrequireEmail%5D%5BtopText%5D=Please%20enter%20your%20email%20below.
  &plugin%5BrequireEmail%5D%5BbottomText%5D=We%20may%20use%20this%20email%20to%20contact%20you%20about%20the%20product%2C%20but%20we%20won't%20be%20too%20pushy.
  &plugin%5BrequireEmail%5D%5Bstyle%5D%5Bbackground%5D=%23660000&plugin%5BrequireEmail%5D%5Bstyle%5D%5Bcolor%5D=%23eeffee" 
  allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" 
  name="wistia_embed" width="640" height="360">
</iframe>
{% endcodeblock %}

## API Embed Example

{% codeblock turnstile-params.html %}
<div id="wistia_abcde12345" style="width:640px;height;360px;" class="wistia_embed">&nbsp;</div>
<script src="//fast.wistia.com/assets/external/E-v1.js"></script>
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
