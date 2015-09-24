---
title: Embed Shepherd
layout: post
api: true
api_warning: true
special_category_link: developers
category: Developers
description: Get easy access to all the Wistia embeds on a page.
footer: 'for_developers'
post_intro: <p>Looking for simple, programmatic access to all the Wistia embeds on a page? Want to be notified anytime someone plays any Wistia video on your website?</p><p>The Embed Shepherd provides a global list of all the Wistia embeds on the page, along with convenient functions to bind to all of them.</p>
---


## Including the Embed Shepherd

The Embed Shepherd comes included with the javascript we have on _all_ Wistia embeds (though if your embeds are sort of old, this might not be the case). Here's that javascript, just for reference:

{% codeblock thumbnail.html %}
<script src="//fast.wistia.net/assets/external/E-v1.js"></script>
{% endcodeblock %}

If it's not included on your page/site already you can include that snippet anywhere on your page. Generally we recommend adding it to the `<head>` of your page. Once it has run, any existing
or future Wistia embeds will be included in the global array `window.wistiaEmbeds`.

If you'd like, you can load the script asynchronously like so. Once Embed Shepherd loads, it will execute the `wistiaEmbedShepherdReady` function if it exists. Wrap whatever you need to do in this function and you can be assured that `window.wistiaEmbeds` is available! Check it out:

{% codeblock playlist_api.js %}
<script>
  window.wistiaEmbedShepherdReady = function(){
    console.log("The Shepherd is ready!");
  }
</script>
<script src="//fast.wistia.net/assets/external/E-v1.js" async></script>
{% endcodeblock %}

{{ "The Embed Shepherd automatically includes the iframe-api on the page. You do not need to include it separately to access iframe embeds or popovers." | note }}


## The wistiaEmbeds variable

The Embed Shepherd immediately sets up a global variable called `wistiaEmbeds`
in the `window` scope. `wistiaEmbeds` is an array containing all active Wistia
embed handles on the page. If an embed code is hidden or removed from the page,
the corresponding handle will be removed. Similarly, when a new embed is injected
into the page--whether iframe, API, SEO, or popover--it will be available in `wistiaEmbeds`.

The `wistiaEmbeds` variable is based on a normal Javascript Array. As such,
you can loop over the embeds, each of which has methods as defined in the
[Player API]({{ '/player-api' | post_url }}).

{% codeblock playlist_api.js %}
console.log("List of Wistia embeds on the page, by name:");
for (var i = 0; i < wistiaEmbeds.length; i++) {
  console.log(wistiaEmbeds[i].name());
}
{% endcodeblock %}

Often times this is not what you want to do though, because it will only loop
over the embeds that exist at the time of execution. Instead, take a look
below at the `bind` and `onFind` methods.

## Binding to all embeds on a page

You might want to capture events such as "play" or "end" for any video on the
page. The `wistiaEmbeds` variable provides a `bind` method to do just that.

{% codeblock playlist_api.js %}
wistiaEmbeds.bind("play", function(video) {
  console.log("I played a video: " + video.name() + " (" + video.hashedId() + ")");
});
wistiaEmbeds.bind("end", function(video) {
  console.log("A video ended: " + video.name() + " (" + video.hashedId() + ")");
});
{% endcodeblock %}

You can unbind too:

{% codeblock playlist_api.js %}
wistiaEmbeds.bind("play", function(video) {
  console.log("I played one of these videos first. It was this one: " + video.name());
  return this.unbind;
});
{% endcodeblock %}


## Access each active embed and all FUTURE embeds

If you want to perform initialization logic for each video, including those
that are injected after the Embed Shepherd is first executed, then the `onFind`
method will help you out.

{% codeblock playlist_api.js %}
wistiaEmbeds.onFind(function(video) {
  video.bind("play", function() {
    console.log("I played " + video.name());
    return this.unbind;
  });
});
{% endcodeblock %}
