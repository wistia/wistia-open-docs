---
title: Identity Tagging
layout: post
category: Analytics
description: Want to tag a heat map with an email automatically? Or manually enter a name? Learn how here!
post_intro: <p><b>Identity Tagging</b> is all about who is watching your videos, and watching their behavior over time.  Using emails and names, Wistia makes it easy to identify your most engaged viewers.</p>
---

<div class="video_embed">
<div id="wistia_36ad88ccb0" class="wistia_embed" style="width:660px;height:495px;" data-video-width="660" data-video-height="495"><object id="wistia_36ad88ccb0_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:480px;position:relative;width:640px;"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01"></param><param name="allowfullscreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="bgcolor" value="#000000"></param><param name="wmode" value="opaque"></param><param name="flashvars" value="customColor=688AAD&hdUrl%5Bheight%5D=960&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Ff416273e09d09a93aa1af71b26b136720cc2ebb4.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=26.527&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F2f363a7fc2d70d8051a9ace07ff42bece899adb6.jpg%3Fimage_crop_resized%3D640x480&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fa68a12b5db766c0ed78d0b7db47d169c46fb6865.bin"></param><embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01" allowfullscreen="true" allowscriptaccess="always" bgcolor=#000000 flashvars="customColor=688AAD&hdUrl%5Bheight%5D=960&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Ff416273e09d09a93aa1af71b26b136720cc2ebb4.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=26.527&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F2f363a7fc2d70d8051a9ace07ff42bece899adb6.jpg%3Fimage_crop_resized%3D640x480&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fa68a12b5db766c0ed78d0b7db47d169c46fb6865.bin" name="wistia_36ad88ccb0_html" style="display:block;height:100%;position:relative;width:100%;" type="application/x-shockwave-flash" wmode="opaque"></embed></object></div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("36ad88ccb0", {
  version: "v1",
  videoWidth: 660,
  videoFoam: true,
  videoHeight: 495,
  playerColor: "688AAD"
});
</script>
<script charset="ISO-8859-1" src="http://fast.wistia.com/embed/medias/36ad88ccb0/metadata.js"></script>
</div>

---

## Tagging Viewers by Email

Using [email marketing embeds]({{ '/email_marketing' | post_url }}), your viewers can be tagged by email in your account.  Using special embed codes, viewers who click through from an email can be tagged, and this email tag will follow the viewer into the future.

For Wistia customers with advanced web design know-how and resources, there are also programmatic options for tagging viewers by email.  Refer to the [ID tagging player API]({{ '/player-id-tag' | post_url }}) documentation for more assistance.

## Tagging Viewers by Name

<div class="post_image center"><img src="http://embed.wistia.com/deliveries/6c1f8ce3a1b55fd528903c7fe7c172816a601164.png" alt="id_media_stats_page" /></div>

Sometimes, you know who is viewing your videos.  Maybe you sent a client a link through an email, or you speak to a progressive customer by phone and recommend they review a video.  Opening the [analytics for that video]({{ '/embedded-video-analytics' | post_url }}), you see an IP, location, and time that makes sense to be someone you recognize.

<div class="post_image center"><img src="http://embed.wistia.com/deliveries/414795a39fb1cfaef24874c56b2355fdb3ad94af.png" alt="id_media_stats_page_viewer" /></div>

<div class="post_image float_right"><img src="http://embed.wistia.com/deliveries/e4342b916b739158f578fe1b545f51eb2670dc3f.png" alt="single_viewer" /></div>

Clicking through the name (currently "Verizon Internet Services") will bring you to this viewer's page.  Once they are named, this page will accumulate their future video viewings as well.

<div class="post_image float_right"><img src="http://embed.wistia.com/deliveries/aec09549631ba0450c630c5c2bcaf5c9bc9fb4bd.png" alt="lenny_viewer" /></div>

Next to the current name is a green "edit" tag.  Selecting that (or clicking anywhere in the name) will allow you to re-name the viewer.  Enter their name, and press 'return'.

In the future, you can check in on your viewer by opening the [viewer stream]({{ '/embedded-video-analytics#viewer_stream' | post_url }}) and searching for their name on the sorting bar.  You can also sort by "named" viewer.

<div class="post_image center"><img src="http://embed.wistia.com/deliveries/9624d8a4e4b3c484c72d04bfa2bde57b89813437.png" alt="stream_w_lenny" /></div>

