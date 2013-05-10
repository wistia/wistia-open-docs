---
title: Social Bar Params
layout: post
description: Want access to the social button parameters? Here they are in all of their glory. 
footer: 'for_developers'
---

## Social Sharing Example

<div id="wistia_4d8229898d" class="wistia_embed" style="width:660px;height:398px;" data-video-width="660" data-video-height="371"><object id="wistia_4d8229898d_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:398px;position:relative;width:660px;"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01"></param><param name="allowfullscreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="bgcolor" value="#000000"></param><param name="wmode" value="opaque"></param><param name="flashvars" value="controlsVisibleOnLoad=true&customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F9367261919e88f155a325dcd9394977344bea46e.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=77.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fd88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fb0f68b305867f2d052d93795e5f95eefbd5cd9c9.bin"></param><embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01" allowfullscreen="true" allowscriptaccess="always" bgcolor=#000000 flashvars="controlsVisibleOnLoad=true&customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F9367261919e88f155a325dcd9394977344bea46e.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=77.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fd88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fb0f68b305867f2d052d93795e5f95eefbd5cd9c9.bin" name="wistia_4d8229898d_html" style="display:block;height:100%;position:relative;width:100%;" type="application/x-shockwave-flash" wmode="opaque"></embed></object></div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1%2Csocialbar-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("4d8229898d", {
  version: "v1",
  videoWidth: 660,
  videoHeight: 371,
  controlsVisibleOnLoad: true,
  playerColor: "4991C4"
});
Wistia.plugin.socialbar(wistiaEmbed, {
  version: "v1",
  buttons: "embed-email-videoStats-twitter-tumblr-facebook",
  logo: true,
  tweetText: "",
  badgeUrl: "http://wistia.com",
  badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png"
});
</script>
<script charset="ISO-8859-1" src="http://fast.wistia.com/embed/medias/4d8229898d/metadata.js"></script>

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

## iframe Embed Example

{% codeblock socialbar-params.html %}
<iframe src="http://fast.wistia.com/embed/iframe/abcde12345
?videoWidth=640&videoHeight=360&plugin[socialbar][version]=v1
&plugin[socialbar][buttons]=embed-twitter-facebook&plugin[socialbar][pageUrl]=
http://wistia.com&pageTitle=The best in online video hosting." 
allowtransparency="true" frameborder="0" scrolling="no" 
class="wistia_embed" name="wistia_embed" width="640" height="387">
</iframe>
{% endcodeblock %}

## API Embed Example

{% codeblock socialbar-params.html %}
<div id="wistia_abcde12345" style="width:640px;height;387px;" data-video-width="640" data-video-height="360">&nbsp;</div>
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
</script>
{% endcodeblock %}
