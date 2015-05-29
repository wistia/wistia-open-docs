---
layout: post
api: true
api_warning: true
special_category_link: developers
category: Developers
title: Async Embeds
description: Async API embeds have a different syntax than traditional API embeds. It's the future!
post_intro: "<p>Async API embeds work a lot like traditional API embeds, except we have a different way of setting options and getting an API handle. These docs explain how Async API embeds work.</p>"
---

## How to get an Async Embed Code

Async embeds will some day be the default in Wistia. But until that day comes,
here's how you get them. On your video's page in Wistia, go to Video Actions
&gt; Embed. Choose the `Inline Embed` tab and select `API` as the Embed Type.
Open the Advanced Options section and put a check next to `Async [BETA]`.
Simple!

Note that __iframe embeds are already async__ because that's just how iframes
work.

__Popover embeds and playlists will also be made async when the time comes.__

## The Composition of an Async API Embed

Here's an example async API embed, straight out of the embed modal:

{% codeblock wistia_js.js %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div class="wistia_embed wistia_async_g5pnf59ala videoFoam=true" style="width:640px;height:360px;">&nbsp;</div>
{% endcodeblock %}

First, we have an <strong>async script tag for E-v1.js</strong>.

<code class="full_width">
<strong>&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;</strong><br>
&lt;div class=&quot;wistia_embed wistia_async_g5pnf59ala videoFoam=true&quot; style=&quot;width:640px;height:360px;&quot;&gt;&amp;nbsp;&lt;/div&gt;
</code>

This script tag can go anywhere on your page. Header, footer, before the embed,
after the embed, it doesn't matter. That script loads our video embedding
libraries into the `window.Wistia` namespace and
[watches the page for markup that looks like async Wistia embed
codes](#how_async_embeds_are_initialized_for_the_curious).

Next we have the <strong>video container</strong>.

<code class="full_width">
&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;<br>
<strong>&lt;div class=&quot;wistia_embed wistia_async_g5pnf59ala videoFoam=true&quot; style=&quot;width:640px;height:360px;&quot;&gt;&amp;nbsp;&lt;/div&gt;</strong>
</code>

The video container is where your video will be placed when all the
initialization steps are complete. The video container's attributes control how the video is initialized.

As part of the video container, first, the <strong>wistia_embed</strong> class.

<code class="full_width">
&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;<br>
&lt;div class=&quot;<strong>wistia_embed</strong> wistia_async_g5pnf59ala videoFoam=true&quot; style=&quot;width:640px;height:360px;&quot;&gt;&amp;nbsp;&lt;/div&gt;
</code>

The wistia_embed class is a signal to our embedding library that this container
is a Wistia embed. Without this, we cannot get a handle to the API.

Second, the <strong>wistia_async_<em>hashedid</em></strong> class.

<code class="full_width">
&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;<br>
&lt;div class=&quot;wistia_embed <strong>wistia_async_g5pnf59ala</strong> videoFoam=true&quot; style=&quot;width:640px;height:360px;&quot;&gt;&amp;nbsp;&lt;/div&gt;
</code>

This class tells our embedding library two things: (1) it's an async embed, and
(2) it should embed a video with hashed ID g5pnf59ala. When you grab your embed
code from the Embed Modal, it will have its own hashed ID unique to the video.

<a name="option-value-style-classes"></a>
Third, <strong>option=value</strong> style classes.

<code class="full_width">
&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;<br>
&lt;div class=&quot;wistia_embed wistia_async_g5pnf59ala <strong>videoFoam=true</strong>&quot; style=&quot;width:640px;height:360px;&quot;&gt;&amp;nbsp;&lt;/div&gt;
</code>

In this case, we set videoFoam to true. But you could also set any options available
in the [Embedding Options Documentation]({{ '/embed-options' | post_url }}). If
you're setting more than one option, just separate them with spaces. If your
option's value includes spaces, then [percent
encode](http://en.wikipedia.org/wiki/Percent-encoding) it!

> Side note: You might say, "hey, that's not a valid class!" But alas, it is. All
> characters--except the null terminator--are valid in the class attribute. Some
> are just much harder to target with CSS rules, which is not necessary in this
> case. For more info, check out
> [Mathias](https://twitter.com/mathias)'s notes on
> [CSS escapes](http://mathiasbynens.be/notes/css-escapes), the
> [HTML5 id and class attributes](http://mathiasbynens.be/notes/html5-id-class), and
> [his demos of CSS escapes with crazy classes](http://mathiasbynens.be/demo/crazy-class).

We chose to set options in the class attribute because they are less likely
than HTML5 `data-` attributes to be stripped out of CMSes, and the syntax
aligns nicely with options for our iframe embeds.

Fourth, the <strong>style attribute</strong>.

<code class="full_width">
&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;<br>
&lt;div class=&quot;wistia_embed wistia_async_g5pnf59ala videoFoam=true&quot; <strong>style=&quot;width:640px;height:360px;&quot;</strong>&gt;&amp;nbsp;&lt;/div&gt;
</code>

By default, we always define a width and height for the video. We recommend
always using values in px to set the width and height, and using videoFoam if
the video needs to be responsive. Also, to avoid issues with video foam and
fullscreen, we recommend NOT adding borders, padding, or margin directly to
the video container. Instead, you should create a wrapper element and add them
there.

Last, the <strong>contents of the container</strong>.

<code class="full_width">
&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;<br>
&lt;div class=&quot;wistia_embed wistia_async_g5pnf59ala videoFoam=true&quot; style=&quot;width:640px;height:360px;&quot;&gt;<br>
&nbsp;&nbsp;<strong>&amp;nbsp;</strong><br>
&lt;/div&gt;
</code>

By default, we have an invisible space <strong>&amp;nbsp;</strong> as the
content, which means nothing appears in the element until the video is ready.
You can change this to be any HTML. When the video initialization is complete,
this content will be completely replaced by the video. Sidenote: That is how
SEO embeds work.


## Using the Wistia library asynchronously

Because E-v1.js is loaded asynchronously, we need to make sure any code that
references it only runs after `window.Wistia` is defined. There are a few
ways to do that.

The simplest way is as follows:

{% codeblock async_wistia_init.js %}
window.wistiaInit = function(W) {
  console.log("Wistia library loaded and available in the W argument!");
};
{% endcodeblock %}

That function will be called as soon as E-v1.js loads. If E-v1.js is already
loaded when you define the function, it will execute asynchronously in 500ms or
less.

If you are writing code that is supposed to be repeatable--say for your entire
website, or as a snippet for other users--we recommend using the following form
instead:

{% codeblock async_wistia_init.js %}
window.wistiaInitQueue = window.wistiaInitQueue || [];
window.wistiaInitQueue.push(function(W) {
  console.log("Wistia library loaded and available in the W argument!");
});
{% endcodeblock %}

`window.wistiaInitQueue` functions the same way as `window.wistiaInit` except
it will not clobber any other functions that have been defined to run on
initialization.


## Getting an API handle

Traditional API embeds set the `wistiaEmbed` variable right in the embed code.
We can't do that with async embeds, so we need to use a new method: the
`Wistia.api()` function.

{% codeblock async_api_handle.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div id="my_video" class="wistia_embed wistia_async_g5pnf59ala" style="width:640px;height:360px;">&nbsp;</div>
<script>
window.wistiaInit = function(W) {
  W.api("my_video").play();
};
</script>
{% endcodeblock %}

In that snippet, we defined an ID attribute on the video container, then
referenced that ID after the Wistia library was initialized.

<code class="full_width">
&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;<br>
&lt;div <strong>id=&quot;my_video&quot;</strong> class=&quot;wistia_embed wistia_async_g5pnf59ala&quot; style=&quot;width:640px;height:360px;&quot;&gt;&amp;nbsp;&lt;/div&gt;
&lt;script&gt;<br>
window.wistiaInit = function(W) {<br>
&nbsp;&nbsp;<strong>W.api(&quot;my_video&quot;)</strong>.play();<br>
};<br>
&lt;/script&gt;<br>
</code>

Now that you have a handle to the video, you can use it just like a traditional
API embed, with the [Player API]({{ '/player-api' | post_url }}).


## Setting embed options

The <a href="#option-value-style-classes">option=value method</a> is very
simple if you only need to make a few small adjustments. But if you want to set
more complex inline options, it gets a little clunky. In that case, you might
want to use the `Wistia.options` function.

Note that these options only affect videos that are embedded <em>after</em>
`Wistia.options()` is called. Videos that are already embedded will not be
affected.

{% codeblock async_api_options.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script>
<div id="my_video" class="wistia_embed wistia_async_g5pnf59ala" style="width:640px;height:360px;">&nbsp;</div>
<script>
window.wistiaInit = function(W) {
  W.options("my_video", {
    autoPlay: true,
    plugin: {
      "socialbar-v1": {
        buttons: "facebook-twitter"
      }
    }
  });
};
</script>
{% endcodeblock %}

The setup for this is similar to getting an API handle. We define an ID
attribute on the video container, then reference it in the options function.

<code class="full_width">
&lt;script charset=&quot;ISO-8859-1&quot; src=&quot;//fast.wistia.com/assets/external/E-v1.js&quot; async&gt;&lt;/script&gt;<br>
&lt;div <strong>id=&quot;my_video&quot;</strong> class=&quot;wistia_embed wistia_async_g5pnf59ala&quot; style=&quot;width:640px;height:360px;&quot;&gt;&amp;nbsp;&lt;/div&gt;<br>
&lt;script&gt;<br>
window.wistiaInit = function(W) {<br>
&nbsp;&nbsp;<strong>W.options(&quot;my_video&quot;</strong>, {<br>
&nbsp;&nbsp;&nbsp;&nbsp;autoPlay: true,<br>
&nbsp;&nbsp;&nbsp;&nbsp;plugin: {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;socialbar-v1&quot;: {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;buttons: &quot;facebook-twitter&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;});<br>
};<br>
&lt;/script&gt;<br>
</code>

You can also set options globally for all embeds on a page by not specifying
an ID. For example, I can say that all videos on this page should have a red
playerColor:

{% codeblock async_api_options.js %}
window.wistiaInit = function(W) {
  W.options({ playerColor: "ff0000" });
};
{% endcodeblock %}


## Async SEO Embed Codes

The standard Wistia SEO embed codes must be synchronous because they include
a script specific to the video--metadata.js--which must be run synchronously
during page load. This is the best solution for most people because it's a
single Copy &amp; Paste operation. Because alternative workflows are too
complex for most users and environments, we do not allow the async option in
the Wistia user interface.

However, it is possible to get an async SEO embed code via the [oembed
endpoint]({{ '/construct-an-embed-code#using_the_oembed_endpoint' | post_url }}).
To do that, simply make your oembed request with query params
`embedType=seo&async=true`. It will return an SEO embed code with an additional
property: `"meta_tags_for_head"`. You should put these tags in the `<head>` of
the page where the video is embedded. They can technically be modified or
dropped, but we have found that including them improves the speed and accuracy
of being indexed with Google.

The process for fetching and using this kind of embed code is highly technical,
so __if you are not a programmer, we recommend NOT using async SEO embed
codes__.


## How async embeds are initialized (for the curious)

The Wistia library defines `Wistia.embeds.setup()` which finds all (or a
subset of) async video containers on the page and initializes them as Wistia
videos. This function is called as soon as E-v1.js loads for the best
experience. Once E-v1.js is loaded, it will watch the DOM forever for new
Wistia embeds.

To setup that watch, we use a feature of modern browsers called
[mutation observers](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver).
They allow us to efficiently detect whenever a `<div>` with a `wistia_embed`
and `wistia_async_hashedid` class is added to the DOM. Older browsers don't
have mutation observers, so in those, we poll the DOM once every 500ms for any
matching elements that have not been initialized.

<strong>The following information is for micro-optimization on older browsers.
Going forward, this will be less and less important, so we advise only making
these micro-optimizations if you have no other choice.</strong>

If you want to prevent any initialization lag in older browsers, you can call
`Wistia.embeds.setup()` immediately after you inject a Wistia embed into the
page.

If you have a site with an extremely large number of `<div>` elements and are
optimizing for older browsers, you might want to turn off our automatic watch.
To do that, you can add this javascript:

{% codeblock async_dont_watch.js %}
window.wistiaInitQueue = window.wistiaInitQueue || [];
window.wistiaInitQueue.push(function(W) { W.dontWatch(); });
{% endcodeblock %}

If you choose to turn off the watch, then you will need to call
`Wistia.embeds.setup()` manually whenever you inject a new Wistia embed into
the DOM.


## Known Issues

- Async API Embeds currently do not work with labs. We need to update our lab
scripts to properly identify them.
