---
layout: post
title: Wistia and Social Sharing
category: Embedding
description: Want to get social with your Wistia videos? We make it simple to share and track your videos on your favorite social media sites, such as Facebook and Twitter.
post_intro: <p>Social Media can drive some serious ROI if done right.  Vehicles like Facebook and Twitter can be used to spread a business message effectively, especially if delivered in an easy to consume and share way.  The best way to do that is with video - it's perfect for social media attention spans, so it tends to 'travel' better than blocks of text.</p><p>Now that you've got your video uploaded to Wistia, how do you share it and track the performance on Social Media sites?  This tutorial will help.  The two services we're focused on here are Facebook and Twitter.</p>
---

<div class="video_embed">
  <div id="wistia_d4df1638dd" class="wistia_embed" style="width:660px;height:413px;" data-video-width="660" data-video-height="413"><object id="wistia_d4df1638dd_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:413px;position:relative;width:660px;"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01"></param><param name="allowfullscreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="bgcolor" value="#000000"></param><param name="wmode" value="opaque"></param><param name="flashvars" value="customColor=4991C4&hdUrl%5Bheight%5D=800&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F791fb3ae1d3e77c570607cfd3057a7edba037fb5.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=124.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Feff83d5780a75785bc2c732ebfe539efc5b8093b.jpg%3Fimage_crop_resized%3D660x413&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fad5ec82be1be83f96e26463cc8cce1800d647385.bin"></param><embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01" allowfullscreen="true" allowscriptaccess="always" bgcolor=#000000 flashvars="customColor=4991C4&hdUrl%5Bheight%5D=800&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F791fb3ae1d3e77c570607cfd3057a7edba037fb5.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=124.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Feff83d5780a75785bc2c732ebfe539efc5b8093b.jpg%3Fimage_crop_resized%3D660x413&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fad5ec82be1be83f96e26463cc8cce1800d647385.bin" name="wistia_d4df1638dd_html" style="display:block;height:100%;position:relative;width:100%;" type="application/x-shockwave-flash" wmode="opaque"></embed></object></div>
  <script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
  <script>
  wistiaEmbed = Wistia.embed("d4df1638dd", {
    version: "v1",
    videoWidth: 660,
    videoHeight: 413,
    playerColor: "4991C4"
  });
  </script>
  <script charset="ISO-8859-1" src="http://fast.wistia.com/embed/medias/d4df1638dd/metadata.js"></script>
</div>

## Facebook

<div class="post_image" style="margin: 0 20px; float:right;border:none;"><img src="http://embed.wistia.com/deliveries/d135791934d06deb1e7e5d5894e71a12019ecad4.png" alt="facebook_logo_small" /></div>

Facebook embeds show up right in your news feed.  Your followers can click to play the video in the feed, or click through the link to watch the video in your Wistia account.

To embed your video into Facebook:

*  In your account, open up the video you'd like to embed.
*  Select "Add Description" under the <span class="action_menu">Media Actions</span> menu.  This description will be showing up in the Facebook news feed.
*  Back under the <span class="action_menu">Media Actions</span> menu, select “share by link”.
*  Copy the share link, paste it into your Facebook status box and click “share”.
*  Your friends will be able to see the video in their News Feed, and even play it within the Feed - how neat is that!?

<div class="post_image center"><img src="http://embed.wistia.com/deliveries/27e43f133e7e090c2d698413ccadf2df1451ecb1.png" alt="description" /></div>

### How it looks

<div class="post_image center" style="border:none;"><img src="http://embed.wistia.com/deliveries/1901fdc9b3c4eb617604817f88beb5028c72ae92.png" alt="fb_embed_steps" /></div>

## Posting to Facebook from your website

Maybe you want to post to Facebook, but you want it to point back to your website?  If so, you can use the OpenGraph tags we produce for 'public' videos to accomplish this. Facebook uses the OpenGraph tags to specify which media/content from the website should be posted.

To do this, first embed the video on your website.  Next, make the Project your video is contained in a "Public" project, and add a description (as detailed in the video above).

View the source on the media page, and look for all of the tags of the form

<span class="code">&lt;meta content="..." property='og:xxxxxx'&gt;</span> (there should be ~8 of these tags)

These are the OpenGraph tags we have created for your video! You will need to change the og:url tag to be the URL of the page where you have embedded the video (and are putting the OpenGraph tags).

Add these to the <span class="code">&lt;head&gt;</span> of your external website, and then share the URL of that page on Facebook.

You're good to go!

## Twitter

<div class="post_image" style="margin: 0 20px; float:right; border:none;"><img src="http://embed.wistia.com/deliveries/3a67076d7972f84eebc61d1eb890300e6850e9c3.png" alt="tweetie" /></div>

Adding your video to a tweet is easy:

*  In your account, open up the video you'd like to embed.
*  Under the Media Actions menu, select “Share by Link”.
*  Copy the share link, paste it into your tweet editor and click “tweet”.
*  The re-tweeting shall commence :)


