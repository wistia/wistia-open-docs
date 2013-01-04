---
title: Integrating with 3Play Media
layout: post
category: no_index
---

## Interactive Transcripts

Wistia will let you order and embed transcripts from in your account, but if you have your own personal 3play Media account, you may want to do a more technical integration. Below are the steps you'll need to take to get your Wistia embeds working with 3play's embed codes.

1. Use the SuperEmbed Builder to create an embed code. Make sure you use the API or SEO embed type.
2. Paste the embed code on your page.
3. Modify the embed code. In the embed options hash, specify a custom `uuid` string.
4. [Follow the steps from 3play](http://support.3playmedia.com/entries/21278772-publish-a-video-with-an-interactive-transcript-on-your-webpage) to embed an interactive transcript on your page. Your Video Object ID should match the custom `uuid` string.

That's it! Here's an example:

<pre><code class="language-javascript">
&lt;div id="wistia_e9daad32af" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360"&gt;&nbsp;&lt;/div&gt;
&lt;script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"&gt;&lt;/script&gt;
&lt;script&gt;
wistiaEmbed = Wistia.embed("e9daad32af", {
  version: "v1",
  videoWidth: 640,
  videoHeight: 360,
  controlsVisibleOnLoad: true,
  playerColor: "aae3d8",
  uuid: "my_custom_uuid" // this can be whatever you want
});
&lt;/script&gt;

&lt;!-- Begin 3Play Media Embed
 By use of this code snippet, I agree to the 3Play Media Terms and Conditions
 found at http://www.3playmedia.com/account-terms/ and http://p3.3playmedia.com/p3.js --&gt;
&lt;div id="transcript1"&gt;&lt;/div&gt;
&lt;script type="text/javascript"&gt;
// replace "{USE_YOUR_VIDEO_OBJECT_ID}" with the player ID from your video embed.
// set player_type to the player type you are using.
window.p3_async_init = function(){
P3.init({
"my_custom_uuid" : {
  "player_type": "wistia",
  "file_id": 45773,
  "transcript": {
    "skin": "frost",
    "can_collapse": false,
    "collapse_onload": false,
    "can_print": false,
    "can_download": false,
    "scan_view": false,
    "width": "640px",
    "height": "200px",
    "target": "transcript1"
  }
}
},"QFw8XoMxO_MfSx5HgIUNDY0qaXtqyzmo");
}
&lt;/script&gt;
&lt;script type="text/javascript" src="http://p3.3playmedia.com/p3.js"&gt;&lt;/script&gt;
&lt;!-- End 3Play Media Embed --&gt;
</code></pre>


<div id="wistia_e9daad32af" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("e9daad32af", {
  version: "v1",
  videoWidth: 640,
  videoHeight: 360,
  controlsVisibleOnLoad: true,
  playerColor: "aae3d8",
  uuid: "my_custom_uuid" // this can be whatever you want
});
</script>
 
<!-- Begin 3Play Media Embed
 By use of this code snippet, I agree to the 3Play Media Terms and Conditions
 found at http://www.3playmedia.com/account-terms/ and http://p3.3playmedia.com/p3.js -->
<div id="transcript1"></div>

## Captions

Wistia does not currently have a way to add captions to your video. But you can do it with your 3play media account! Just follow the steps below.

1. Use the SuperEmbed Builder to create an embed code. Make sure you use the API or SEO embed type.
2. Paste the embed code on your page.
3. Modify the embed code. In the embed options hash, specify a custom `uuid` string.
4. [Follow the steps from 3play](http://support.3playmedia.com/entries/21385681-publish-a-video-with-the-captions-plugin-on-your-webpage) to embed an interactive transcript on your page. Your Video Object ID should match the custom `uuid` string.

Note that the overlay option currently puts the captions over our player controls, so you should make sure overlay is set to false.

<pre><code class="language-javascript">
&lt;div id="wistia_e9daad32af_1" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360"&gt;&nbsp;&lt;/div&gt;
&lt;script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"&gt;&lt;/script&gt;
&lt;script&gt;
wistiaEmbed = Wistia.embed("e9daad32af", {
  version: "v1",
  container: "wistia_e9daad32af_1",
  videoWidth: 640,
  videoHeight: 360,
  controlsVisibleOnLoad: true,
  playerColor: "aae3d8",
  uuid: "my_custom_uuid_for_captions" // this can be whatever you want
});
&lt;/script&gt;

&lt;!-- Begin 3Play Media Embed
 By use of this code snippet, I agree to the 3Play Media Terms and Conditions
 found at http://www.3playmedia.com/account-terms/ and http://p3.3playmedia.com/p3.js --&gt;
&lt;div id="captions1"&gt;&lt;/div&gt;
&lt;script type="text/javascript"&gt;
// replace "{USE_YOUR_VIDEO_OBJECT_ID}" with the player ID from your video embed.
// set player_type to the player type you are using.
window.p3_async_init = function(){
P3.init({
"my_custom_uuid_for_captions" : {
  "player_type": "wistia",
  "file_id": 45773,
  "captions": {
    "skin": "dark",
    "overlay": false,
    "overlay_draggable": false,
    "minimize_onload": false,
    "searchbar": true,
    "width": "640px",
    "target": "captions1"
  }
}
},"QFw8XoMxO_MfSx5HgIUNDY0qaXtqyzmo");
}
&lt;/script&gt;
&lt;script type="text/javascript" src="http://p3.3playmedia.com/p3.js"&gt;&lt;/script&gt;
&lt;!-- End 3Play Media Embed --&gt;
</code></pre>

<div id="wistia_e9daad32af_1" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("e9daad32af", {
  version: "v1",
  container: "wistia_e9daad32af_1",
  videoWidth: 640,
  videoHeight: 360,
  controlsVisibleOnLoad: true,
  playerColor: "aae3d8",
  uuid: "my_custom_uuid_for_captions" // this can be whatever you want
});
</script>

<div id="captions1"></div>

<script type="text/javascript">
window.p3_async_init = function(){
P3.init({
"my_custom_uuid" : {
  "player_type": "wistia",
  "file_id": 45773,
  "transcript": {
    "skin": "frost",
    "can_collapse": false,
    "collapse_onload": false,
    "can_print": false,
    "can_download": false,
    "scan_view": false,
    "width": "640px",
    "height": "200px",
    "target": "transcript1"
  }
},
"my_custom_uuid_for_captions" : {
  "player_type": "wistia",
  "file_id": 45773,
  "captions": {
    "skin": "dark",
    "overlay": false,
    "overlay_draggable": false,
    "minimize_onload": false,
    "searchbar": true,
    "width": "640px",
    "target": "captions1"
  }
}
},"QFw8XoMxO_MfSx5HgIUNDY0qaXtqyzmo");
}
</script>
<script type="text/javascript" src="http://p3.3playmedia.com/p3.js"></script>
<!-- End 3Play Media Embed -->


## With iframe Embeds

3play now supports integrating with our iframe style embeds too! Just include
the [iframe-api]({{ '/player-api#using_iframes_and_the_player_api' | post_url }}) on the page.
The embedding process is similar to above, except it uses `"wistia_iframe"` as the player type.
For the video object ID, you must set an ID attribute on the iframe, and make sure
the 3play javascript targets that ID. Check out this example:

<pre><code class="language-javascript">
&lt;iframe src="http://fast.wistia.com/embed/iframe/e9daad32af?controlsVisibleOnLoad=true&playerColor=aae3d8&version=v1&videoHeight=360&videoWidth=640" allowtransparency="true" frameborder="0" scrolling="no" id="my_custom_uuid" class="wistia_embed" name="my_custom_uuid" width="640" height="360"&gt;&lt;/iframe&gt;
&lt;script src="http://fast.wistia.com/static/iframe-api-v1.js"&gt;&lt;/script&gt;

&lt;!-- Begin 3Play Media Embed
 By use of this code snippet, I agree to the 3Play Media Terms and Conditions
 found at http://www.3playmedia.com/account-terms/ and http://p3.3playmedia.com/p3.js --&gt;
&lt;div id="transcript1"&gt;&lt;/div&gt;
&lt;script type="text/javascript"&gt;
// replace "{USE_YOUR_VIDEO_OBJECT_ID}" with the player ID from your video embed.
// set player_type to the player type you are using.
window.p3_async_init = function(){
P3.init({
"my_custom_uuid" : {
  "player_type": "wistia_iframe",
  "file_id": 45773,
  "transcript": {
    "skin": "frost",
    "can_collapse": false,
    "collapse_onload": false,
    "can_print": false,
    "can_download": false,
    "scan_view": false,
    "width": "640px",
    "height": "200px",
    "target": "transcript1"
  }
}
},"QFw8XoMxO_MfSx5HgIUNDY0qaXtqyzmo");
}
&lt;/script&gt;
&lt;script type="text/javascript" src="http://p3.3playmedia.com/p3.js"&gt;&lt;/script&gt;
&lt;!-- End 3Play Media Embed --&gt;
</code></pre>
