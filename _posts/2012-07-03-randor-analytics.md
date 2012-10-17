---
title: Randor Analytics
layout: post
description: This video series covers all the basics of Wistia's analytics features!
---

<style type="text/css">
  a.call_to_action {
    color: white !important;
  }

  a.call_to_action:hover {
    text-decoration: none !important;
    color: yellow !important;
  }
</style>

<div id="the_video" class='video_embed'>
<div id="wistia_f13ff05fc3" class="wistia_embed" style="width:660px;height:371px;" data-video-width="660" data-video-height="371"><object id="wistia_f13ff05fc3_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:371px;position:relative;width:660px;"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01"></param><param name="allowfullscreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="bgcolor" value="#000000"></param><param name="wmode" value="opaque"></param><param name="flashvars" value="customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fc88f3d64e779d99c935cd8c57871e8140a52e856.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=258.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F2c3a50684b72641ce3b7a6002d26f7b34af024cd.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F172f8ee7351f6372e48ed35040aed9b5b4f0b6a7.bin"></param><embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01" allowfullscreen="true" allowscriptaccess="always" bgcolor=#000000 flashvars="customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fc88f3d64e779d99c935cd8c57871e8140a52e856.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=258.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F2c3a50684b72641ce3b7a6002d26f7b34af024cd.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F172f8ee7351f6372e48ed35040aed9b5b4f0b6a7.bin" name="wistia_f13ff05fc3_html" style="display:block;height:100%;position:relative;width:100%;" type="application/x-shockwave-flash" wmode="opaque"></embed></object></div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("f13ff05fc3", {
  version: "v1",
  videoWidth: 660,
  videoHeight: 371,
  playerColor: "4991C4"
});

Wistia.plugin.postRoll(wistiaEmbed, {
    version: "v1",
    raw: "<style type=\"text/css\">\n#container {\ncolor: white;\ntext-align: center;\n}\n\na.call_to_action {\ntext-decoration: none;\ncolor: white;\n}\n\na.call_to_action:hover {\ncolor: yellow;\n}\n\n</style>\n\n<div id=\"container\">\n<strong>Other Wistia Videos:</strong><br>\n<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_basics\">Wistia Basics</a><br>\n<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_customizing\">Customizing Your Embed</a><br>\n<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_promoting\">Promoting Your Video</a><br>\n</div>\n",
    style: {
    backgroundColor: "#141314",
    color: "#ffffff",
    fontSize: "36px",
    fontFamily: "Gill Sans, Helvetica, Arial, sans-serif",
    textAlign: "left"
    }
});

Wistia.plugin.socialbar(wistiaEmbed, {
    version: "v1",
    buttons: "embed-twitter-facebook",
    logo: true,
    tweetText: "Understanding Analytics - Individual Page",
    badgeUrl: "http://wistia.com",
    badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png"
});
</script>
<script charset="ISO-8859-1" src="http://fast.wistia.com/embed/medias/f13ff05fc3/metadata.js"></script>
</div>

<div class="randor_links">
<p style="width:325px;"><em>Understanding Analytics</em> is all about Wistia's bread-and-butter: the powerful analytics provided for embedded video plays.</p>
<ul>
<li><a class="chap_link" id="first_chap" href="#" onclick="wistiaEmbed.time(0).play(); return false;">Part I</a></li>
<li><a class="chap_link" id="second_chap" href="#" onclick="wistiaEmbed.time(120).play(); return false;">Part II</a></li>
</div>


## Show Notes

**Part I**

*(0:08)* This quote has been attributed to [Peter Drucker](http://en.wikipedia.org/wiki/Peter_Drucker.html).<br/>
*(0:50)* Check the [Analytics doc page]({{ '/analytics' | post_url }}) for more on both Account Trends and the Viewer Stream.<br/>
*(1:40)* For more on engagement graphs, [head here]({{ '/audience-engagement-graph' | post_url }}).<br/>

**Part II**

*(2:05)* Yes indeed, we are that cheerful!

## Ready for More?

This is (for now) the last video in the series!  You can head back, and check out our [Wistia Basics]({{ '/randor-basics' | post_url }}) video, or [Customizing Your Embed]({{ '/randor-customization' | post_url }}) or [Promoting Your Video]({{ '/randor-promoting' | post_url }}).

What other Wistia training videos would you like to see?

<script>
var url = window.location.href.toString();
var playInterval;
if (url.indexOf('hf') != -1 || url.indexOf('hm') != -1)
{
    playInterval = setInterval(autoPlay, 100);
}
function autoPlay()
{
    try{
    wistiaEmbed.play();
    clearInterval(playInterval);
    } catch (e) {}
}
</script>
