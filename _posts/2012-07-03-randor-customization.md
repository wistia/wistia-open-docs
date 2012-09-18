---
title: Randor Customization
description: Ready to start customizing your Wistia videos? Learn more with the next video in the Randor series!
layout: post
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

<div id="the_video" class="video_embed">
<div id="wistia_01a1d9f97c" class="wistia_embed" style="width:660px;height:371px;" data-video-width="660" data-video-height="371"><object id="wistia_01a1d9f97c_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:371px;position:relative;width:660px;"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01"></param><param name="allowfullscreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="bgcolor" value="#000000"></param><param name="wmode" value="opaque"></param><param name="flashvars" value="customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F4d874dd3babef3047a1076d22dc5bc12418e40f5.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=270.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fa591df2474d642d43e7e7456e6a50156b0142bcd.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F770268024c8a028b542d5fc7010dc3a6d065f0a1.bin"></param><embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01" allowfullscreen="true" allowscriptaccess="always" bgcolor=#000000 flashvars="customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F4d874dd3babef3047a1076d22dc5bc12418e40f5.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=270.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fa591df2474d642d43e7e7456e6a50156b0142bcd.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F770268024c8a028b542d5fc7010dc3a6d065f0a1.bin" name="wistia_01a1d9f97c_html" style="display:block;height:100%;position:relative;width:100%;" type="application/x-shockwave-flash" wmode="opaque"></embed></object></div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("01a1d9f97c", {
  version: "v1",
  videoWidth: 660,
  videoHeight: 371,
  playerColor: "4991C4"
});
Wistia.plugin.postRoll(wistiaEmbed, {
    version: "v1",
    raw: "<style type=\"text/css\">\n#container {\ncolor: white;\ntext-align: center;\n}\n\na.call_to_action {\ntext-decoration: none;\ncolor: white;\n}\n\na.call_to_action:hover {\ncolor: yellow;\n}\n\n</style>\n\n<div id=\"container\">\n<strong>Other Wistia Videos:</strong><br>\n<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_basics\">Wistia Basics</a><br>\n<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_promoting\">Promoting Videos</a><br>\n<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_analytics\">Understanding Analytics</a><br>\n</div>",
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
    tweetText: "Customizing Your Video - Individual Page",
    badgeUrl: "http://wistia.com",
    badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png"
});
</script>
<script charset="ISO-8859-1" src="http://fast.wistia.com/embed/medias/01a1d9f97c/metadata.js"></script>
</div>

<div class="randor_links">
<p style="width:271px;"><em>Customizing Your Wistia Embeds</em> details how to control the Wistia player that appears on your website.<br />
<ul>
<li><a class="chap_link" id="first_chap" href="#" onclick="wistiaEmbed.time(0).play(); return false;">Part I</a></li>
<li><a class="chap_link" id="second_chap" href="#" onclick="wistiaEmbed.time(113).play(); return false;">Part II</a></li>
</div>

## Show Notes

**Part I**

*(0:30)* We're using Wordpress here, but you can use all sorts of website setups / CMS environments with Wistia.  Check out our [list of tested sites](/integration).<br/>
*(0:35)* Normally Alyce sets up the Wordpress blog post, and then tells me what size the video needs to be to fit within the post. We've also chosen a color we use for all our blog embeds.<br/>
*(1:00)* All settings within the SuperEmbed builder apply to **embedded** video only, not video that plays from within your account.  It also doesn't update videos that are already embedded - if you have already embedded the video on your site, and want to change settings in the SuperEmbed builder, you'll need to re-embed the video.<br/>
*(1:11)* When in doubt, use iframe.  API embed codes are useful for interacting with the video using our [Player API](/player-api), and SEO embeds (which appear once you have a validated sitemap) are useful for SEO benefits.<br/>

**Part II**

*(2:40)* In the post-roll menu, you can chose to use a text, image, or custom HTML post-roll.  You can also customize the overlay color to match your video!<br/>
*(3:00)* Pre-roll email capture, or Turnstile, is easy-to-use and super powerful for gathering emails. To read more click [here](http://wistia.com/product/turnstile).<br/>
*(3:30)* One feature we didn't cover in the SuperEmbed builder is [Transcripts](/transcripts).<br/>
*(4:20)* We had a bit too much espresso in the filming of this episode.

## Ready for More?

The next video in the series is **"Promoting Your Video"**.  It covers all the tools Wistia has for making your video available to your viewers, and increasing views. 

Watch it right now: [Promoting Your Video](/randor-promoting).

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
