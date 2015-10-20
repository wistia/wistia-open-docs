---
special_category_link: developers
api: true
layout: post
title: Iframe Embed Options
description: Learn how to use deeply nested options in your iframe embeds.
post_intro: "<p>The Wistia video player has a JavaScript API which supports a number of ways to interact with and control the video player. It uses the same interface for both Flash and HTML5 versions of the player, and provides convenience functions to accomplish common goals.</p>"
category: Developers
---

Before going on, note that <strong>we do not advise you to use this
syntax</strong>. If you find yourself needing to set deeply nested options,
it's almost always easier to just switch to a Standard embed or rely on customizing
your video directly in Wistia. But if you can't do either of those things, then
read on.

## Iframe Embed Options and Bracket Notation

You can modify options for an iframe embed by adding query params to the
iframe's src attribute.

Take this iframe embed as an example:

{% codeblock example_iframe_embed_with_videofoam.js %}
<iframe src="//fast.wistia.net/embed/iframe/g5pnf59ala?videoFoam=true"
allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed"
name="wistia_embed" allowfullscreen mozallowfullscreen webkitallowfullscreen
oallowfullscreen msallowfullscreen width="640" height="360"></iframe>
<script src="//fast.wistia.net/assets/external/iframe-api-v1.js"></script>
{% endcodeblock %}

This iframe already has the videoFoam option set to true. You can use the same
format for any other option. For example:

{% codeblock example_iframe_src_with_options.html %}
//fast.wistia.net/embed/iframe/g5pnf59ala?videoFoam=true&autoPlay=true&playerColor=ff69b4
{% endcodeblock %}

Adding nested options is a little trickier, but you can use percent-encoded
bracket notation. Let's say we have an API embed that sets up the social bar:

{% codeblock api_with_socialbar.html %}
<script>
  wistiaEmbed = Wistia.embed("g5pnf59ala", {
    plugin: {
      "socialbar-v1": {
        buttons: "playCount-embed-email",
        pageUrl: "http://wistia.com/blog",
        pageTitle: "Wistia's Blog"
      }
    }
  });
</script>
{% endcodeblock %}

The equivalent options on an iframe embed look like this:

{% codeblock iframe_bracket_notation_example.html %}
//fast.wistia.net/embed/iframe/g5pnf59ala
?plugin%5Bsocialbar-v1%5D%5Bbuttons%5D=playCount-embed-email
&plugin%5Bsocialbar-v1%5D%5BpageUrl%5D=http%3A%2F%2Fwistia.com%2Fblog
&plugin%5Bsocialbar-v1%5D%5BpageTitle%5D=Wistia's%20Blog
{% endcodeblock %}

Ugly, huh? That option string was constructed by following these steps:

First, use bracket notation to define the option names and values.

    plugin[socialbar-v1][buttons]=playCount-embed-email
    plugin[socialbar-v1][pageUrl]=http://wistia.com/blog
    plugin[socialbar-v1][pageTitle]=Wistia's Blog

Next, [percent encode](http://en.wikipedia.org/wiki/Percent-encoding) each
option name and value:

    plugin%5Bsocialbar-v1%5D%5Bbuttons%5D=playCount-embed-email
    plugin%5Bsocialbar-v1%5D%5BpageUrl%5D=http%3A%2F%2Fwistia.com%2Fblog
    plugin%5Bsocialbar-v1%5D%5BpageTitle%5D=Wistia's%20Blog

Note that <strong>percent encoding is slightly different from plain URL
encoding</strong> in that URL encoding will change spaces to + and percent
encoding will change them to %20. <strong>We expect percent encoding, not plain
URL encoding.</strong>

The options should be combined into one string and separated by
ampersands (&amp;).

    plugin%5Bsocialbar-v1%5D%5Bbuttons%5D=playCount-embed-email&plugin%5Bsocialbar-v1%5D%5BpageUrl%5D=http%3A%2F%2Fwistia.com%2Fblog&plugin%5Bsocialbar-v1%5D%5BpageTitle%5D=Wistia's%20Blog

Last, add them back onto the iframe src.

{% codeblock iframe_bracket_notation_example.html %}
//fast.wistia.net/embed/iframe/g5pnf59ala?plugin%5Bsocialbar-v1%5D%5Bbuttons%5D=playCount-embed-email&plugin%5Bsocialbar-v1%5D%5BpageUrl%5D=http%3A%2F%2Fwistia.com%2Fblog&plugin%5Bsocialbar-v1%5D%5BpageTitle%5D=Wistia's%20Blog
{% endcodeblock %}

Note that the first character after the hashed ID and before the options
should be a question mark (?), not an ampersand (&amp;). Setting it to an
ampersand will break the whole embed!
