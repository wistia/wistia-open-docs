---
title: Video SEO Troubleshooting
layout: post
description: Having trouble getting your Video SEO functionality up and running? Follow our simple troubleshooting guide to cure what ails you!
category: Troubleshooting
---

Want a quick overview of the Video SEO workflow? Check out this video:

<div id="the_video" class="video_embed">
<div id="wistia_38bcf1939d" class="wistia_embed" style="width:660px;height:371px;" data-video-width="660" data-video-height="371"><object id="wistia_38bcf1939d_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:371px;position:relative;width:660px;"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01"></param><param name="allowfullscreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="bgcolor" value="#000000"></param><param name="wmode" value="opaque"></param><param name="flashvars" value="controlsVisibleOnLoad=true&customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F627b601639c5d0410350b3179bc44530656a4633.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=120.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fbb74d2c14c0cb97e71481a2afa205910c6c4aed8.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F8b99db5070ccaa006bfa668c21c8d1957f97a1a8.bin"></param><embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01" allowfullscreen="true" allowscriptaccess="always" bgcolor=#000000 flashvars="controlsVisibleOnLoad=true&customColor=4991C4&hdUrl%5Bheight%5D=720&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F627b601639c5d0410350b3179bc44530656a4633.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=120.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fbb74d2c14c0cb97e71481a2afa205910c6c4aed8.jpg%3Fimage_crop_resized%3D660x371&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F8b99db5070ccaa006bfa668c21c8d1957f97a1a8.bin" name="wistia_38bcf1939d_html" style="display:block;height:100%;position:relative;width:100%;" type="application/x-shockwave-flash" wmode="opaque"></embed></object></div>
<script charset="ISO-8859-1" src="http://fast.wistia.net/static/concat/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("38bcf1939d", {
  version: "v1",
  videoWidth: 660,
  videoHeight: 371,
  controlsVisibleOnLoad: true,
  playerColor: "4991C4"
});
</script>
<script charset="ISO-8859-1" src="http://fast.wistia.net/embed/medias/38bcf1939d/metadata.js"></script>

<script>
var url = window.location.href.toString();
var playInterval;
if (url.indexOf('hf') != -1)
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
</div>

---

## Still Having Trouble?

Nothing ruins your mood like an error message you can't fix. We're here to help! The suggested changes below will resolve the issues you're running into with Video SEO.

## Error Message 1:

{% post_image hashed_id: '53192a004d5a60f6ea53d3f45347a4c6a5ed8432', class: 'center' %}

**1. The video is embedded with the wrong embed type**

*  *issue:* you embedded the video correctly, but with an unsupported embed code type.

*  *to solve:* make sure that the video has been embedded on your site using the "SEO" embed type. Note that popovers, iframes, and playlists are not supported. You can find the SEO embed type on the Embed & Share modal under the Embed Type option for an Inline Embed.

**2. The video hasn't been embedded on the page specified**

*  *issue:* our system cannot locate your video embedded at that location.

*  *to solve:* make sure that the video you're trying to add to your sitemap has been embedded on that page.

---

## Error Message 2

{% post_image hashed_id: '8f1dfd0539f21e06e2d614b008d42b3ff535644d', class: 'center' %}

**1. The video isn't embedded on the proper domain**

*  *issue:* your sitemap doesn't point to that location.

*  *to solve:* make sure that the a video sitemap has been created for the target domain. You can see a drop down list for all of your video sitemaps in the Video SEO tool.

**2. The wrong domain has been selected**

*  *issue:* the video is not embedded on the target domain.

*  *to solve:* select the appropriate domain from the drop down menu for the target location.

**Still no luck? [Contact us](http://wistia.com/support/contact). We're happy to help you out!**
