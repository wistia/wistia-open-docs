---
special_category_link: developers
api: true
layout: post
title: Embed Links
description: Learn how to use Embed Links to setup playlists, chaptering, "watch another video", and "choose your own adventure" without any javascript.
category: Developers
---

Embed Links give you a framework to easily replace a video or control its time
using specially formatted links. These links will work anywhere on the page,
including in Wistia CTAs and Annotations.

## Simple Video Replacement Example

Embed Links are best illustrated by example. Check out the markup below.

{% codeblock example_embed_link.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_30q7n48g4f" style="height:360px;width:640px">&nbsp;</div>
<a href="#wistia_30q7n48g4f">Make French Toast</a><br/>
<a href="#wistia_342jss6yh5">Wistia Team Intro</a><br/>
{% endcodeblock %}

Here we have a Standard inline embed code followed by two links. The links have
a particular format. They start with a `#`, which makes them "anchor tags".
The `#` is followed by a video's 10 character hashed ID. A `?` separates the
hashed ID from a list of optional
[embed options]({{ '/embed-options' | post_url }}) in the same format as our
iframe embeds.


{% codeblock embed_link_anatomy.html %}
<a href="#wistia_30q7n48g4f?time=30">Make French Toast</a>
    <!-- prefix  hashed ID  embed options -->
{% endcodeblock %}

Check out a live example!

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_30q7n48g4f" style="height:360px;width:640px">&nbsp;</div>
<a href="#wistia_30q7n48g4f?replace=closestAbove">Make French Toast</a><br/>
<a href="#wistia_342jss6yh5?replace=closestAbove">Wistia Team Intro</a><br/>

"Make French Toast" is embedded by default by the Standard (or async) embed code.
When you click a link below that code, it replaces the video with another and
automatically plays it.

## Simple Playlist Link Example

The previous example shows you how you can set up links to replace a video. But
playlists are, by definition, sequential. That is, when one ends, another
begins, in a well-defined order.

We can easily modify the markup of that code to add that functionality. Let's
try it!

{% codeblock example_playlist_link.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_30q7n48g4f playlistLinks=auto" style="height:360px;width:640px">&nbsp;</div>
<a href="#wistia_30q7n48g4f">Make French Toast</a><br/>
<a href="#wistia_342jss6yh5?time=30">Wistia Team Intro</a><br/>
{% endcodeblock %}

I've added the embed option "playlistLinks" and set it to "auto". This will
find all the embed links on the page and make them part of a playlist. The
order of the playlist is the same as the order that the links appear in the
markup.

If you watch to the end of "Make French Toast", then the "Wistia Team Intro"
should start playing immediately.

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_30q7n48g4f playlistLinks=playlist_links_1" style="height:360px;width:640px">&nbsp;</div>
<p id="playlist_links_1" class="wistia_playlist_links">
  <a href="#wistia_30q7n48g4f">Make French Toast</a><br/>
  <a href="#wistia_342jss6yh5">Wistia Team Intro</a><br/>
</p>

## Simple Chaptering Example

If I only have one video but want to link to various parts of it, I can use the
same format as Embed Links. Just make sure the hashed ID is the same as the
embedded video. Check it out!

{% codeblock example_embed_link.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_30q7n48g4f" style="height:360px;width:640px">&nbsp;</div>
<a href="#wistia_30q7n48g4f?time=0">Make French Toast @ 0</a><br/>
<a href="#wistia_30q7n48g4f?time=10">Make French Toast @ 10</a><br/>
<a href="#wistia_30q7n48g4f?time=20">Make French Toast @ 20</a><br/>
<a href="#wistia_30q7n48g4f?time=30">Make French Toast @ 30</a><br/>
{% endcodeblock %}

Note that I've just modified the "time" embed option for each link, and the
hashed ID __30q7n48g4f__ is the same as the video I initially embedded.

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_30q7n48g4f" style="height:360px;width:640px">&nbsp;</div>
<a href="#wistia_30q7n48g4f?time=0">Make French Toast @ 0</a><br/>
<a href="#wistia_30q7n48g4f?time=10">Make French Toast @ 10</a><br/>
<a href="#wistia_30q7n48g4f?time=20">Make French Toast @ 20</a><br/>
<a href="#wistia_30q7n48g4f?time=30">Make French Toast @ 30</a><br/>

## Watch Another Video in CTA/Annotation

You can easily add "Watch Another Video" functionality using embed links. In a
CTA or annotation, just make the URL `#wistia_{hashedid}`, where "{hashedid}"
is the video you want to play next.

<img src="https://embed-ssl.wistia.com/deliveries/e7303526447445f6d0f74283ea5771e3c7c65161.jpg?image_resize=294" style="vertical-align:top;width:294px;" />
<img src="https://embed-ssl.wistia.com/deliveries/c7ad228d79d0ffd834a64887331902f9bc7815e8.jpg?image_resize=293" style="vertical-align:top;width:293px;" />

To get the hashed ID for a video, refer to the URL of the page in Wistia. The
alphanumeric characters following "/medias/" are what you want. For example, in
the example below, the hashed ID is `z1fxq584qr`.

<img src="https://embed-ssl.wistia.com/deliveries/49a921c8ed5e0978f80aca37a59836f91871cca7.jpg?image_resize=367" style="width:367px;" />

Here's an example:

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_cox77memhr" style="width:640px;height:360px;">&nbsp;</div>

Beware: Testing this while the Customize Panel is open confuses things quite a
bit. To make sure it works, you'll need to save your customization then reload
the page.

## Special Embed Link Options

### autoPlay

For embed links, this is `true` by default; that's why they play on click. If
you just want to replace the video on click, but not play, set it to false.

{% codeblock disable_autoplay.html %}
<a href="#wistia_30q7n48g4f?autoPlay=false">Make French Toast</a>
{% endcodeblock %}    

### container

Set the specific video this embed link should connect to. This overrides all
other strategies for connecting embed links to videos.

{% codeblock set_embed_link_container.html %}
<a href="#wistia_lkjer09098?container=the_other_video">Other Video</a>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<div id="the_video" class="wistia_async_986fe34j56 wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<div id="the_other_video" class="wistia_async_30q7n48g4f wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
{% endcodeblock %}

### includeInPlaylist

Default is true. If an embed link is included in a playlist, but you don't want
it to be included, use this option.

### transition

When switching between videos, you can specify a transition animation. Allowed
values are `fade`, `slide`, `crossfade`, and `none`. The default is `fade`.

{% codeblock set_transition_type.html %}
<a href="#wistia_30q7n48g4f?transition=slide">Make French Toast</a>
<a href="#wistia_lkjer09098?transition=crossfade">Another Video</a>
{% endcodeblock %}

### transitionTime

To be used in conjunction with `transition`, set the total time in milliseconds
it takes to perform the animation.

{% codeblock set_transition_time.html %}
<a href="#wistia_30q7n48g4f?transition=slide&transitionTime=2000">Super Slow Slide</a>
<a href="#wistia_30q7n48g4f?transition=crossfade&transitionTime=150">Quick Crossfade</a>
{% endcodeblock %}

## Special Playlist Options

### playlistLinks

This allows you to associate embed links on the page with a video, thereby
turning it into a playlist. Accepts any string, but "auto" and "manual" are
special values. Refer to the Advanced Embed Links Targeting section below to
learn how to use this effectively.

### playlistLoop

When the last video finishes, embed and play the first video again. Default is
false.

{% codeblock loop_that_playlist.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_30q7n48g4f playlistLinks=auto playlistLoop=true" style="height:360px;width:640px">&nbsp;</div>
{% endcodeblock %}

## Advanced Embed Links Targeting

__WARNING: The information below is technical, and is only relevant if you have
multiple videos/playlists on your page.__

All this is really cool, but what happens when you have multiple video embeds
on a page? How does the Embed Link know which one to replace? Good question.
There are a few different strategies that can be employed: auto, container,
manual, and closest.

Generally, we advise switching strategies if you have trouble with "auto". If
you don't have trouble with "auto", then you can ignore this.

### "auto" Targeting Strategy

When you see "playlistLinks=auto", it is saying that the playlist should use
this strategy. With this strategy, we say "for each video on the page, look for
links after the video, until we come to another Wistia video." Usually links
appear after the video, so this is a sane default.

{% codeblock playlist_links_auto_strategy1.html %}
<div id="playlist1" class="wistia_async_30q7n48g4f wistia_embed playlistLinks=auto" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<!-- these link to playlist1 -->
<a href="#wistia_abcde12345">link 1</a><br/>
<a href="#wistia_ghijk67890">link 2</a><br/>

<div id="playlist2" class="wistia_async_30q7n48g4f wistia_embed playlistLinks=auto" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<!-- these link to playlist2 -->
<a href="#wistia_sdlkj34985">link 3</a><br/>
<a href="#wistia_lkjer09098">link 4</a><br/>
{% endcodeblock %}

There is one situation where we flip things around. That is, if embed links
exist _before_ any Wistia videos on your page, then we invert the strategy and
say "for each video on the page, look for links _before_ the video, until we
come to another Wistia video." If you have a playlist where links appear before
the video, this logic will handle that.

{% codeblock playlist_links_auto_strategy2.html %}
<!-- these link to playlist1 -->
<a href="#wistia_abcde12345">link 1</a><br/>
<a href="#wistia_ghijk67890">link 2</a><br/>
<div id="playlist1" class="wistia_async_30q7n48g4f wistia_embed playlistLinks=auto" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>

<!-- these link to playlist2 -->
<a href="#wistia_sdlkj34985">link 3</a><br/>
<a href="#wistia_lkjer09098">link 4</a><br/>
<div id="playlist2" class="wistia_async_30q7n48g4f wistia_embed playlistLinks=auto" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
{% endcodeblock %}

### "manual" Targeting Strategy

The "manual" strategy is the most specific of all strategies. It says, "given
each link element, look at its 'container' option to determine which video it
should connect to."

This strategy allows you to scatter your links across the DOM and still have
them target the video you care about. It can be used with either embed links or
playlist links.

{% codeblock playlist_links_manual_strategy.html %}
<div id="playlist1" class="wistia_async_30q7n48g4f wistia_embed playlistLinks=manual" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<a href="#wistia_abcde12345?container=playlist2">link 1</a><br/>
<a href="#wistia_ghijk67890?container=playlist1">link 2</a><br/>

<div id="playlist2" class="wistia_async_30q7n48g4f wistia_embed playlistLinks=manual" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<a href="#wistia_sdlkj34985?container=playlist2">link 3</a><br/>
<a href="#wistia_lkjer09098?container=playlist1">link 4</a><br/>
{% endcodeblock %}

In the above example, link 1 and link 3 would be in playlist2, while link 2 and
link 4 would be in playlist 1.

Note that, for this strategy to be employed, each target video container must
have a unique ID attribute set.

### "container" Targeting Strategy

The "container" strategy is what you'd use if you were building your own
playlist and wanted more control than the "auto" strategy provides. It says,
"for all embed links in this container, connect them to this specific video."

When you use the "container" strategy, you set `playlistLinks` equal to the ID
of the DOM element that contains your links.

{% codeblock playlist_links_container_strategy.html %}
<div id="playlist1" class="wistia_async_30q7n48g4f wistia_embed playlistLinks=links1" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<div id="links1" class="wistia_playlist_links">
  <!-- these link to playlist1 -->
  <a href="#wistia_abcde12345">link 1</a><br/>
  <a href="#wistia_ghijk67890">link 2</a><br/>
</div>

<div id="playlist2" class="wistia_async_30q7n48g4f wistia_embed playlistLinks=links2" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<div id="links2" class="wistia_playlist_links">
  <!-- these link to playlist2 -->
  <a href="#wistia_sdlkj34985">link 3</a><br/>
  <a href="#wistia_lkjer09098">link 4</a><br/>
</div>
{% endcodeblock %}

Note that, for this strategy to work, the ID attribute must be set to a unique
value for both the video container and the link container. Also, we advise
adding the `wistia_playlist_links` class to the link container to avoid
conflicts with other strategies.

### "closest" Targeting Strategy

The "closest" strategy means "link to whichever video is closest by DOM
distance." In other words, it counts the number of steps from your video to
the link, and the least number of steps wins.

This is the default strategy for all embed links that are not part of a
playlist. You cannot choose to use this strategy with playlist links because it
conflicts with the "auto" strategy.

{% codeblock playlist_links_closest_strategy.html %}
<!-- two steps to the link: two forward to the link. -->
<div class="wistia_async_30q7n48g4f wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<a href="#wistia_abcde12345">the link</a><br/>
<div class="video_wrapper">
  <!-- three steps to the link: up one to video_wrapper, then two backward to the link. -->
  <div class="wistia_async_30q7n48g4f wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
  <script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
</div>
{% endcodeblock %}

The link above is closest to the first video, so that's the one it connects to.

## Notes

Standard embed codes only. This does not work with iframes (fallback) or popovers.

Embed Links should exist in the DOM within 5 seconds of the video being
embedded. Otherwise, you'll need to run `Wistia.EmbedLink.setupAll()` right
after they're injected so that they work.
