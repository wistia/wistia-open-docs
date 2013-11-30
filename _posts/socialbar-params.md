---
title: Social Bar Params
layout: post
description: Want access to the social button parameters? Here they are in all of their glory. 
footer: 'for_developers'
---

## Social Sharing Example

<div id="wistia_4d8229898d" class="wistia_embed" style="width:660px;height:398px;" data-video-width="660" data-video-height="371"><object id="wistia_4d8229898d_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:398px;position:relative;width:660px;"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01"></param><param name="allowfullscreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="bgcolor" value="#000000"></param><param name="wmode" value="opaque"></param><param name="flashvars" value="controlsVisibleOnLoad=true&customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F9367261919e88f155a325dcd9394977344bea46e.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=77.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fd88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fb0f68b305867f2d052d93795e5f95eefbd5cd9c9.bin"></param><embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01" allowfullscreen="true" allowscriptaccess="always" bgcolor=#000000 flashvars="controlsVisibleOnLoad=true&customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F9367261919e88f155a325dcd9394977344bea46e.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=77.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fd88b25fd28dda2795fa3c754f6d08221cfb8b206.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fb0f68b305867f2d052d93795e5f95eefbd5cd9c9.bin" name="wistia_4d8229898d_html" style="display:block;height:100%;position:relative;width:100%;" type="application/x-shockwave-flash" wmode="opaque"></embed></object></div>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/concat/E-v1%2Csocialbar-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("4d8229898d", {
  plugin: {
    "socialbar-v1": {
      buttons: "embed-email-videoStats-twitter-tumblr-facebook",
      logo: true,
      tweetText: "",
      badgeUrl: "http://wistia.com",
      badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png"
    }
  }
});
</script>
<script charset="ISO-8859-1" src="//fast.wistia.net/embed/medias/4d8229898d/metadata.js"></script>

## Socialbar Options

 Option Name        | Type      | Description
 -----------        | ----      | ----------------------------------------------------------------------------------------------
 badgeImg           | string    | The src attribute of the logo image.
 badgeUrl           | string    | The URL that the logo launches when you click on it.
 buttons            | string    | Dash-delimited list of buttons to display, e.g. "playCount-embed-facebook-twitter".
 downloadType       | string    | If the download button is available, this determines the quality of video that is downloaded. Possible values are "sd_mp4", "hd_mp4", and "original". "hd_mp4" will only be used if it exists for the video. If it does not, it falls back to "sd_mp4".
 height             | integer   | The height of the socialbar. Not required, but simplifies resizing operations. Defaults to 23. The total height of the socialbar is always this value plus 5 (for margin and padding).
 ignoreQueryParams  | boolean   | If pageUrl is not specified, this determines if we should include the query params in the pageUrl. Defaults to false.
 includeLinkback    | boolean   | When set to true, embed codes produced by the Embed button will also include a link 
 logo               | boolean   | When true, float the badge to the right side of the socialbar.
 on                 | boolean   | Whether to show the social bar. Default is true. Can be set to false to override Customize options.
 pageTitle          | string    | The specific pageTitle to be promoted when liked or shared.
 pageUrl            | string    | The specific pageUrl to be promoted when liked or shared.
 position           | string    | The grid location of the Social Bar. Default value is "below", but "above" is also acceptable.
 tweetText          | string    | The text that will be tweeted with the link. Defaults to the title of the page. The keyword Substituteions `{page_title}` and `{video_name}` can be used in the tweet text.

Possible buttons are:

* playCount
* embed
* email
* videoStats
* download
* twitter
* reddit
* tumblr
* stumbleUpon
* linkedIn
* googlePlus
* facebook
* wistia

## iframe Embed Example

{% codeblock socialbar-params.html %}
<iframe src="http://fast.wistia.net/embed/iframe/abcde12345
?videoWidth=640&videoHeight=360&plugin%5Bsocialbar%5D%5Bversion%5D=v1
&plugin%5Bsocialbar%5D%5Bbuttons%5D=embed-twitter-facebook&plugin%5Bsocialbar%5D%5BpageUrl%5D=
http%3A%2F%2Fwistia.com&pageTitle=The%20best%20in%20online%20video%20hosting." 
allowtransparency="true" frameborder="0" scrolling="no" 
class="wistia_embed" name="wistia_embed" width="640" height="387">
</iframe>
{% endcodeblock %}

## API Embed Example

{% codeblock socialbar-params.html %}
<div id="wistia_4d8229898d" class="wistia_embed" style="width:640px;height;387px;">&nbsp;</div>
<script src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("4d8229898d", {
  plugin: {
    "socialbar-v1": {
      buttons: "embed-twitter-facebook",
      pageUrl: "http://wistia.com",
      pageTitle: "The best in online video hosting."
    }
  }
});
</script>
{% endcodeblock %}
