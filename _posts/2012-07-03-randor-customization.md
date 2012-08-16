---
title: Randor Customization
category: Getting Started
description: Ready to start customizing your Wistia videos? Learn more with the next video in the Randor series!
---

# Customize Your Embed

\\
`<html>`



    `<style type="text/css">`
    a.call_to_action {
      color: white !important;
    }

    a.call_to_action:hover {
      text-decoration: none !important;
      color: yellow !important;
    }
    `</style>`
`<div id="the_video" style="float:left;">`
`<div id="wistia_01a1d9f97c" style="width:640px;height:386px;" data-video-width="640" data-video-height="360">`&nbsp;`</div>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js">``</script>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1-gridify%2CW-v1-wistia_url_min%2Csocialbar-v1%2CpostRoll-v1.js">``</script>`

`<script>`/*<![CDATA[*/
wistiaEmbed = Wistia.embed("01a1d9f97c", {
    videoWidth: "640",
    videoHeight: "360",
    controlsVisibleOnLoad: true
});

Wistia.plugin.postRoll(wistiaEmbed, {
    version: "v1",
    raw: "`<style type=\"text/css\">`\n#container {\ncolor: white;\ntext-align: center;\n}\n\na.call_to_action {\ntext-decoration: none;\ncolor: white;\n}\n\na.call_to_action:hover {\ncolor: yellow;\n}\n\n`</style>`\n\n`<div id=\"container\">`\n`<strong>`Other Wistia Videos:`</strong>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_basics\">`Wistia Basics`</a>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_promoting\">`Promoting Videos`</a>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_analytics\">`Understanding Analytics`</a>``<br>`\n`</div>`",
    style: {
    backgroundColor: "#141314",
    color: "#ffffff",
    fontSize: "36px",
    fontFamily: "Gill Sans, Helvetica, Arial, sans-serif",
    textAlign: "left"
    }
});

Wistia.plugin.socialbar(wistiaEmbed, {
    version: "v1",
    buttons: "embed-twitter-facebook",
    logo: true,
    tweetText: "Customizing Your Video - Individual Page",
    badgeUrl: "http://wistia.com",
    badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png"
});
/*]]*/`</script>`

`</div>`
`<div class="the_links" style="width: 200px; float:left; margin-left: 30px">`
`<p style="margin: 0px 0 20px 0;">`"Customizing Your Wistia Embeds" details how to control the Wistia player that appears on your website.`<br />`For more info, head to `<a href="http://wistia.com/doc/public_sharing" target="_blank">`the Public Sharing Guide`</a>`.`</p>`
`<ul style="margin: 10px 0px 0px 20px;">`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="first_chap" href="#" onclick="wistiaEmbed.time(0).play(); return false;">`Part I`</a>``</li>`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="second_chap" href="#" onclick="wistiaEmbed.time(113).play(); return false;">`Part II`</a>``</li>`
`</div>`
`<div class="clearfix" style="clear:both">``</div>`
`<script>`
var url = window.location.href.toString();
var playInterval;
if (url.indexOf('hf') != -1 || url.indexOf('hm') != -1)
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
`</script>`

`</html>`
\\
\\
## Show Notes

**Part I**\\
*(0:30)* We're using Wordpress here, but you can use all sorts of website setups / CMS environments with Wistia.  Check out our [list of tested sites]({{ site.url }}/{{ page.lang }}/integration.html).\\
*(0:35)* Normally Alyce sets up the Wordpress blog post, and then tells me what size the video needs to be to fit within the post. We've also chosen a color we use for all our blog embeds.\\
*(1:00)* All settings within the SuperEmbed builder apply to **embedded** video only, not video that plays from within your account.  It also doesn't update videos that are already embedded - if you have already embedded the video on your site, and want to change settings in the SuperEmbed builder, you'll need to re-embed the video.\\
*(1:11)* When in doubt, use iframe.  API embed codes are useful for interacting with the video using our [Player API]({{ site.url }}/{{ page.lang }}/player-api.html), and SEO embeds (which appear once you have a validated sitemap) are useful for SEO benefits.\\
\\

**Part II**\\
*(2:40)* In the post-roll menu, you can chose to use a text, image, or custom HTML post-roll.  You can also customize the overlay color to match your video!\\
*(3:00)* Pre-roll email capture, or Turnstile, is easy-to-use and super powerful for gathering emails. To read more click [here]({{ site.url }}/{{ page.lang }}/http://wistia.com/product/turnstile.html).\\
*(3:30)* One feature we didn't cover in the SuperEmbed builder is [Transcripts]({{ site.url }}/{{ page.lang }}/transcripts.html).\\
*(4:20)* We had a bit too much espresso in the filming of this episode.\\
\\
\\
## Ready for More?

The next video in the series is **"Promoting Your Video"**.  It covers all the tools Wistia has for making your video available to your viewers, and increasing views.  
\\
\\
Watch it right now: [Promoting Your Video]({{ site.url }}/{{ page.lang }}/randor_promoting.html).
\\
\\
----
\\
\\
~~DISQUS~~
