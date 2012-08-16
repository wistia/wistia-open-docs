---
title: Social Bar Params
layout: post
description: Want access to the social button parameters? Here they are in all of their glory. 
for_developers: true
---

## Social Sharing Example

<div class="video_embed">
  <div id="wistia_4d8229898d" style="width:640px;height:388px;" data-video-width="640" data-video-height="360">&nbsp;</div>
  <script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js"></script>
  <script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1-gridify%2CW-v1-wistia_url_min%2Csocialbar-v1.js"></script>

  <script>/*<![CDATA[*/
  wistiaEmbed = Wistia.embed("4d8229898d", {
      videoWidth: "640",
      videoHeight: "360",
      controlsVisibleOnLoad: true
  });
  Wistia.plugin.socialbar(wistiaEmbed, {
      version: "v1",
      buttons: "embed-email-videoStats-twitter-googlePlus-facebook",
      logo: true,
      tweetText: "Super Embed - How it Works",
      badgeUrl: "http://wistia.com",
      badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png",
      pageUrl: "http://wistia.com"
  });
  /*]]*/</script>
</div>

## Socialbar Options

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

## Iframe Embed Example

<div class="code"><pre><iframe src="http://fast.wistia.com/embed/iframe/abcde12345?videoWidth=640&videoHeight=360&plugin[socialbar][version]=v1&plugin[socialbar][buttons]=embed-twitter-facebook&plugin[socialbar][pageUrl]=http://wistia.com&pageTitle=The best in online video hosting." allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="387"></iframe></pre></div>

## API Embed Example:

<div class="code"><pre><div id="wistia_abcde12345" style="width:640px;height;387px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script src="http://fast.wistia.com/static/E-v1.js"></script>
<script src="http://fast.wistia.com/static/concat/E-v1-gridify,socialbar-v1.js"></script>
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
</script></pre></div>
