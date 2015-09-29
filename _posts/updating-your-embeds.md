---
title: Keeping Your Embeds Up To Date
layout: post
description: Are your embedded Wistia videos looking a little dusty? Using an old version of the Wistia Javascript library? Here's how to keep your Wistia embeds fresh with the latest & greatest Wistia player technology.
post_intro: Are your embedded Wistia videos looking a little dusty? Using an old version of the Wistia Javascript library? Here's how to keep your Wistia embeds fresh with the latest & greatest Wistia player technology.
category: Embed & Share
---

## Updating embeds created before 2012

Have a Wistia video embedded on your website with a player that looks like this?

<object id="wistia_66057" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="460" height="247" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="wmode" value="opaque" /><param name="flashvars" value="playButtonVisible=true&amp;unbufferedSeek=true&amp;controlsVisibleOnLoad=false&amp;autoPlay=false&amp;videoUrl=http://embed.wistia.com/deliveries/0248b3a9024a12ea54b36861b174d032d86b8b36.bin&amp;stillUrl=http://embed.wistia.com/deliveries/fdf3838c9663c3de575e5feadcf7a2605b818a75.bin&amp;embedServiceURL=http://distillery.wistia.com/x&amp;accountKey=wistia-production_97&amp;mediaID=wistia-production_66057&amp;mediaDuration=110" /><param name="src" value="http://embed.wistia.com/flash/embed_player_v1.1.swf" /><embed id="wistia_66057" type="application/x-shockwave-flash" width="460" height="247" src="http://embed.wistia.com/flash/embed_player_v1.1.swf" flashvars="playButtonVisible=true&amp;unbufferedSeek=true&amp;controlsVisibleOnLoad=false&amp;autoPlay=false&amp;videoUrl=http://embed.wistia.com/deliveries/0248b3a9024a12ea54b36861b174d032d86b8b36.bin&amp;stillUrl=http://embed.wistia.com/deliveries/fdf3838c9663c3de575e5feadcf7a2605b818a75.bin&amp;embedServiceURL=http://distillery.wistia.com/x&amp;accountKey=wistia-production_97&amp;mediaID=wistia-production_66057&amp;mediaDuration=110" wmode="opaque" allowscriptaccess="always" allowfullscreen="true"></embed></object>

Here's the embed code behind that video:

<pre><code class="language-html" style="white-space: pre-wrap; white-space: -moz-pre-wrap; ">&lt;object id=&quot;wistia_66057&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; width=&quot;460&quot; height=&quot;247&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0&quot;&gt;&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;&lt;param name=&quot;allowscriptaccess&quot; value=&quot;always&quot; /&gt;&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot; /&gt;&lt;param name=&quot;flashvars&quot; value=&quot;playButtonVisible=true&amp;amp;unbufferedSeek=true&amp;amp;controlsVisibleOnLoad=false&amp;amp;autoPlay=false&amp;amp;videoUrl=http://embed.wistia.com/deliveries/0248b3a9024a12ea54b36861b174d032d86b8b36.bin&amp;amp;stillUrl=http://embed.wistia.com/deliveries/fdf3838c9663c3de575e5feadcf7a2605b818a75.bin&amp;amp;embedServiceURL=http://distillery.wistia.com/x&amp;amp;accountKey=wistia-production_97&amp;amp;mediaID=wistia-production_66057&amp;amp;mediaDuration=110&quot; /&gt;&lt;param name=&quot;src&quot; value=&quot;http://embed.wistia.com/flash/embed_player_v1.1.swf&quot; /&gt;&lt;embed id=&quot;wistia_66057&quot; type=&quot;application/x-shockwave-flash&quot; width=&quot;460&quot; height=&quot;247&quot; src=&quot;http://embed.wistia.com/flash/embed_player_v1.1.swf&quot; flashvars=&quot;playButtonVisible=true&amp;amp;unbufferedSeek=true&amp;amp;controlsVisibleOnLoad=false&amp;amp;autoPlay=false&amp;amp;videoUrl=http://embed.wistia.com/deliveries/0248b3a9024a12ea54b36861b174d032d86b8b36.bin&amp;amp;stillUrl=http://embed.wistia.com/deliveries/fdf3838c9663c3de575e5feadcf7a2605b818a75.bin&amp;amp;embedServiceURL=http://distillery.wistia.com/x&amp;amp;accountKey=wistia-production_97&amp;amp;mediaID=wistia-production_66057&amp;amp;mediaDuration=110&quot; wmode=&quot;opaque&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot;&gt;&lt;/embed&gt;&lt;/object&gt;
</code></pre>

That embed code is from back in the good ol' days. Ben used to type those by hand and email them to some of our first customers. Nice work, Ben!

{% post_image hashed_id: '02b568bde97cdfa45f67870ff766d406fbbc53fd', width: 400, class: 'float_left' %}

**If you have a video on your website that looks like [the one above](#updating_embeds_created_before_2012) (and an embed code to match), your video will stop generating stats on December 10th, 2015** to make way for new & improved stats functionality. But fear not, your videos' historical stats will always be available, and you can continue generating _new_ stats by updating your embed codes. Here's how:

### Step 1. Identify the embeds you need to update.

If you only have a few Wistia videos embedded, you may know which videos they are already just by looking at them.

If you don't know which videos to update off the top of your head, there are a few things you can do:

1. If you received an email from support@wistia.com with the subject _"[Action needed] An Important Update About Your Wistia Embeds,"_ check out the attachment in that email. The attached list should include most (if not all) of your affected embeds. Didn't receive such an email? No worries! There's another way to find the embeds 👇.
2. Go to the Trends section in your account (found under the Stats menu), and check to see which of your Wistia videos have been played recently. When you click into the stats page for a specific video, you can export the video's stats to a CSV file which will include the URLs of all the pages the video is embedded on. Here's a guide with more info on how to get that data: [Exporting Analytics Data](http://wistia.com/doc/embedded-video-analytics#exporting_analytics_data). Once you have those URLs, you can check them to see if the embed code is outdated – that is, if it looks like the video at the top of this page.

### Step 2. Generate new embed codes.

On each page with an old embed code, you will need to replace the existing embed code with a _new_ embed code for that video from your Wistia account. Find each video in your account, and then [generate an embed code]({{ '/embedding' | post_url }}) for each one. Once those new embed codes are on your website, your videos will all be ready to go.

### Step 3. Celebrate! Or, contact us and then celebrate shortly thereafter.

If you were able to get those embeds updated without much trouble, there's nothing left to do but dance. Your videos are now ready for the wonderful functionality that the future will hold.

If things didn't go smoothly though, please let us know. We're ready to help at support@wistia.com.

## Keeping E-v1.js up to date

E-v1.js is the Wistia Javascript library. It's responsible for pretty much everything Wistia can do on a website, from building the player, to playing a video, to sending stats back to your Wistia account.

It's important to keep the Wistia Javascript library up to date. Our engineering team frequently updates it to ensure that embeds function properly when _other_ things change (for instance, when Google releases an update to the Chrome web browser with an impact on video functionality). Sometimes things _within_ Wistia change too, and E-v1.js must be updated to continue working properly with the rest of the Wistia product. December 10th, 2015 is one of those times.

**If you need your videos to continue generating new stats after December 10th, 2015, your videos must use the up to date version of E-v1.js.**

Normally, E-v1.js is automatically kept up to date within 60 seconds. If your embed codes use a version of E-v1.js that _isn't_ hosted by Wistia though (like if you made a copy of it and are hosting it yourself), then that version of E-v1.js will become out of date as soon as the Wistia engineering team releases updates and improvements to it, which happens daily.

The change we're making on December 10th will not be compatible with old versions of E-v1.js, so you'll need to switch to the Wistia-hosted version. You can do that by replacing your existing copy of E-v1.js with this:
<pre><code class="langauge-html">&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot;&gt;&lt;/script&gt;</code></pre>

{{ "If you want to load E-v1.js asynchronously, be sure to include `async` at the end of that opening script tag." | tip }}

You can always just replace your existing embed code with a [new embed code from Wistia]({{ '/embedding' | post_url }}), too. It'll include the Wistia-hosted E-v1.js automatically.

{{ "If you have any questions about this, or have any difficulty with the transition and need assistance, please contact us at support@wistia.com. We're here to help!" | note }}
