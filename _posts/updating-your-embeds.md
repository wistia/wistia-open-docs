---
title: Keeping Your Embeds Up To Date
layout: post
description: Are your embedded Wistia videos looking a little dusty? Here's how to keep them updated to make use of the latest & greatest player technology Wistia has to offer.
category: embedding
---

## Updating embeds created before 2012

Have a video embedded on your website that looks a bit like this one?

<object id="wistia_66057" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="460" height="247" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="wmode" value="opaque" /><param name="flashvars" value="playButtonVisible=true&amp;unbufferedSeek=true&amp;controlsVisibleOnLoad=false&amp;autoPlay=false&amp;videoUrl=http://embed.wistia.com/deliveries/0248b3a9024a12ea54b36861b174d032d86b8b36.bin&amp;stillUrl=http://embed.wistia.com/deliveries/fdf3838c9663c3de575e5feadcf7a2605b818a75.bin&amp;embedServiceURL=http://distillery.wistia.com/x&amp;accountKey=wistia-production_97&amp;mediaID=wistia-production_66057&amp;mediaDuration=110" /><param name="src" value="http://embed.wistia.com/flash/embed_player_v1.1.swf" /><embed id="wistia_66057" type="application/x-shockwave-flash" width="460" height="247" src="http://embed.wistia.com/flash/embed_player_v1.1.swf" flashvars="playButtonVisible=true&amp;unbufferedSeek=true&amp;controlsVisibleOnLoad=false&amp;autoPlay=false&amp;videoUrl=http://embed.wistia.com/deliveries/0248b3a9024a12ea54b36861b174d032d86b8b36.bin&amp;stillUrl=http://embed.wistia.com/deliveries/fdf3838c9663c3de575e5feadcf7a2605b818a75.bin&amp;embedServiceURL=http://distillery.wistia.com/x&amp;accountKey=wistia-production_97&amp;mediaID=wistia-production_66057&amp;mediaDuration=110" wmode="opaque" allowscriptaccess="always" allowfullscreen="true"></embed></object>

Here's what the embed code for that video looks like:

<pre><code class="language-html" style="white-space: pre-wrap; white-space: -moz-pre-wrap; ">&lt;object id=&quot;wistia_66057&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot; width=&quot;460&quot; height=&quot;247&quot; codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0&quot;&gt;&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;&lt;param name=&quot;allowscriptaccess&quot; value=&quot;always&quot; /&gt;&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot; /&gt;&lt;param name=&quot;flashvars&quot; value=&quot;playButtonVisible=true&amp;amp;unbufferedSeek=true&amp;amp;controlsVisibleOnLoad=false&amp;amp;autoPlay=false&amp;amp;videoUrl=http://embed.wistia.com/deliveries/0248b3a9024a12ea54b36861b174d032d86b8b36.bin&amp;amp;stillUrl=http://embed.wistia.com/deliveries/fdf3838c9663c3de575e5feadcf7a2605b818a75.bin&amp;amp;embedServiceURL=http://distillery.wistia.com/x&amp;amp;accountKey=wistia-production_97&amp;amp;mediaID=wistia-production_66057&amp;amp;mediaDuration=110&quot; /&gt;&lt;param name=&quot;src&quot; value=&quot;http://embed.wistia.com/flash/embed_player_v1.1.swf&quot; /&gt;&lt;embed id=&quot;wistia_66057&quot; type=&quot;application/x-shockwave-flash&quot; width=&quot;460&quot; height=&quot;247&quot; src=&quot;http://embed.wistia.com/flash/embed_player_v1.1.swf&quot; flashvars=&quot;playButtonVisible=true&amp;amp;unbufferedSeek=true&amp;amp;controlsVisibleOnLoad=false&amp;amp;autoPlay=false&amp;amp;videoUrl=http://embed.wistia.com/deliveries/0248b3a9024a12ea54b36861b174d032d86b8b36.bin&amp;amp;stillUrl=http://embed.wistia.com/deliveries/fdf3838c9663c3de575e5feadcf7a2605b818a75.bin&amp;amp;embedServiceURL=http://distillery.wistia.com/x&amp;amp;accountKey=wistia-production_97&amp;amp;mediaID=wistia-production_66057&amp;amp;mediaDuration=110&quot; wmode=&quot;opaque&quot; allowscriptaccess=&quot;always&quot; allowfullscreen=&quot;true&quot;&gt;&lt;/embed&gt;&lt;/object&gt;
</code></pre>

That embed code is from the good ol' days. Ben used to type those by hand and email them to some of our first customers. Nice work, Ben!

{% post_image hashed_id: '02b568bde97cdfa45f67870ff766d406fbbc53fd', width: 400, class: 'float_left' %}

If you have a video on your website that looks like the one above, and an embed code to match, your video will stop generating stats on December 12th, 2015 to make way for new & improved stats functionality. But fear not, your videos' historical stats will always be available, and you can continue generating _new_ stats by updating your embed codes.

INSERT PIECE ABOUT HOW TO FIND THE VIDEO IN YOUR ACCOUNT AND MAKE A NEW EMBED CODE.

## Keeping E-v1.js up to date

E-v1.js is the Wistia Javascript library. It's responsible for pretty much everything Wistia can do on a website, from building the player, playing a video, and sending stats back to your Wistia account.

It's important to keep the Wistia Javascript library up to date because... (REASONS LIKE: we make bugfixes and improvements all the time)

Normally, E-v1.js is automatically kept up to date within (HOW LONG IS THE EXPIRY TIME?) seconds. If your embed codes use a version of E-v1.js that _isn't_ hosted by Wistia though (like if you made a copy of it and are hosting it yourself), then it's guaranteed to be out of date. The change we're making on Dec 12th will not be compatible with old versions of E-v1.js, so you'll need to switch to the Wistia-hosted version. You can do that by replacing your existing copy of E-v1.js with this:
<pre><code class="langauge-html">&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot;</code></pre>

Or, just replace your existing embed code with a new embed code from Wistia. It'll include the Wistia-hosted E-v1.js automatically.
