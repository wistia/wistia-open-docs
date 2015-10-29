---
title: Wistia Plugin API
layout: post
api_warning: true
special_category_link: developers
api: true
category: Developers
description: Have some cool JavaScript that you want to use with a bunch of videos? The Plugin API lets you create a simple script package that works with any Wistia embed code.
post_intro: <p>The Plugin API provides a light framework for script loading and initialization on a video, as well as some convenient properties for positioning DOM elements.</p><p>It works with all embed types, including iframes, which means you can even use plugins in systems that don't allow script tags.</p>
---


## The Components of a Wistia Plugin

A Wistia plugin has two basic pieces. First, the embed code needs to define
the plugin script and options. Second, the plugin script needs to initialize
using the Wistia.plugin function.


### Defining plugins in an embed code

For learning purposes, we'll demonstrate with the Standard inline embed code type.
We've removed the HTML portion and left only the script, since that's the
important part here.

First, here's an embed code that references one of Wistia's internal plugins,
"requireEmail-v1".

{% codeblock plugin_api.js %}
window._wq = window._wq || [];
_wq.push({ "hashedId": {
  plugin: {
    "requireEmail-v1": {
      topText: "Please enter your email\n to view this video.",
      style: {
        backgroundColor: "#303030"
      }
    }
  }
}});
{% endcodeblock %}




Third Party plugins can use the exact same syntax, but they must add a src
attribute.

{% codeblock plugin_api.js %}
window._wq = window._wq || [];
_wq.push({ "hashedId": {
  plugin: {
    "my-plugin-name": {
      customOption: true,
      src: "http://myscriptdomain.com/my-plugin-name.js"
    }
  }
}});
{% endcodeblock %}

{{ "The `_wq.push(...)` syntax shown above is covered in more detail in the [Player API documentation](http://wistia.com/doc/player-api#get_started)." | tip }}

The script file is executed asynchronously. And this is where the second part
of Wistia plugins comes in...


### Initialize Your Plugin

{% codeblock plugin_api.js %}
Wistia.plugin("my-plugin-name", function(video, options) {
  video.bind("play", function() {
    if (options.customOption) {
      console.log("Do some cool stuff.");
    } else {
      console.log("Do something completely different.");
    }
  });
});
{% endcodeblock %}

That's it! By calling `Wistia.plugin("my-plugin-name", myFunction)`, you're
doing a few things:

1. It caches the function so, if multiple videos on the page use the same
script, we don't need to download it twice.
2. It places the function in the Wistia.plugin namespace, callable like
`Wistia.plugin["my-plugin-name"](video, options)`.
3. It immediately executes the function with the originating video handle
and plugin options as arguments.

The `video` argument is a handle to the [Player API](player-api), which means
you can now do anything that the normal JavaScript API can do.


## Using plugins with an iframe embed

Wistia iframe embeds take the exact same JSON parameters as a Standard embed, but
they must be properly URL-encoded using a bracket syntax.

For example, here's the plugin parameters for the Standard embed above, but
translated to be appended on an iframe src attribute.

<code class="full_width">plugin%5Bmy-plugin-name%5D%5BcustomOption%5D=true&plugin%5Bmy-plugin-name%5D%5Bsrc%5D=http%3A%2F%2Fmyscriptdomain.com%2Fmy-plugin-name.js</code>


## Using the Plugin Grid

Wistia videos are embedded in a DOM framework called the grid, which provides
some handy shortcuts to DOM elements around the video.

Here is a list of all the available handles:

Handle          | Description
------          | -----------
above           | Relatively positioned above the video. Full width of embed.
below           | Relatively positioned below the video. Full width of embed.
top             | Absolutely positioned above the video. Width of video, anchored in the upper left of video.
right           | Absolutely positioned to the right of the video. Height of the video, anchored in the upper right of the video.
bottom          | Absolutely positioned below the video. Width of the video, anchored in the lower left of the video.
left            | Absolutely positioned to the left of the video. Height of the video, anchored in the upper left of the video.
top_inside      | Absolutely positioned over the video. Width of the video, anchored in the upper left of the video.
right_inside    | Absolutely positioned over the video. Height of the video, anchored in the upper right of the video.
bottom_inside   | Absolutely positioned over the video. Width of the video, anchored in the lower left of the video.
left_inside     | Absolutely positioned over the video. Height of the video, anchored in the upper left of the video.


### Use the grid to place an element over the video

For example, if I wanted to to overlay an HTML element in the upper right of
the video, offset by 10px, I could use:

{% codeblock plugin_api.js %}
var myElem = document.createElement("div");
myElem.style.position = "absolute";
myElem.style.top = "10px";
myElem.style.right = "10px";
myElem.innerHTML = "This is some text in the upper right of the video.";
video.grid.right_inside.appendChild(myElem);
{% endcodeblock %}

Or if you're using a framework like jQuery:

{% codeblock plugin_api.js %}
var $myElem = $("<div>This is some text in the upper right of the video.</div>").css({
  position: "absolute",
  top: 10,
  right: 10
});
$(video.grid.right_inside).append($myElem);
{% endcodeblock %}


### Use the grid to place an element beside the video.

You can use the grid to put elements outside the video too. This is a good idea
because, as long your DOM elements are a fixed width, they will work correctly
with [responsive embeds]({{ '/embedding#embedding_responsively' | post_url '}}).

Here's an example that adds a plugin to the right of the video.

{% codeblock plugin_api.js %}
var myElem = document.createElement("div");
myElem.innerHTML = "And this will appear outside the video, to the right.";
myElem.style.width = "250px;"
video.grid.right.appendChild(myElem);
video.fit();
{% endcodeblock %}

Note the `fit()` method, which will cause the video to change its width and
height such that all the plugins fit within the container.

Because fitting can cause an incorrect aspect ratio, it's recommended that DOM
elements outside the video have fixed dimensions. Then, when the embed code is
created, you can simply add these dimensions to the total width and height.

For example, I might have a 640x272 video. The iframe embed code would look like this:

{% codeblock thumbnail.html %}
<iframe src="http://fast.wistia.net/embed/iframe/vqy2dontcx?controlsVisibleOnLoad=true&amp;version=v1&amp;videoHeight=272&amp;videoWidth=640&amp;volumeControl=true" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="272"></iframe>
{% endcodeblock %}

But if I add the socialbar, which is 26px high in this case and appears below
the video, the iframe height is 298.

{% codeblock thumbnail.html %}
<iframe src="http://fast.wistia.net/embed/iframe/vqy2dontcx?controlsVisibleOnLoad=true&amp;plugin%5Bsocialbar-v1%5D=%7B%22buttons%22%3A%22embed-twitter-facebook%22%7D&amp;version=v1&amp;videoHeight=272&amp;videoWidth=640&amp;volumeControl=true" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="298"></iframe>
{% endcodeblock %}
