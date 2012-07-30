---
title: Randor Analytics
category: Getting Started
---

# Understanding Video Analytics

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
`<div id="wistia_f13ff05fc3" style="width:640px;height:386px;" data-video-width="640" data-video-height="360">`&nbsp;`</div>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js">``</script>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1-gridify%2CW-v1-wistia_url_min%2Csocialbar-v1%2CpostRoll-v1.js">``</script>`

`<script>`/*<![CDATA[*/
wistiaEmbed = Wistia.embed("f13ff05fc3", {
    videoWidth: "640",
    videoHeight: "360",
    controlsVisibleOnLoad: true
});

Wistia.plugin.postRoll(wistiaEmbed, {
    version: "v1",
    raw: "`<style type=\"text/css\">`\n#container {\ncolor: white;\ntext-align: center;\n}\n\na.call_to_action {\ntext-decoration: none;\ncolor: white;\n}\n\na.call_to_action:hover {\ncolor: yellow;\n}\n\n`</style>`\n\n`<div id=\"container\">`\n`<strong>`Other Wistia Videos:`</strong>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_basics\">`Wistia Basics`</a>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_customizing\">`Customizing Your Embed`</a>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_promoting\">`Promoting Your Video`</a>``<br>`\n`</div>`\n",
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
    tweetText: "Understanding Analytics - Individual Page",
    badgeUrl: "http://wistia.com",
    badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png"
});
/*]]*/`</script>`
`</div>`
`<div class="the_links" style="width: 200px; float:left; margin-left: 30px">`
`<p style="margin: 0px 0 20px 0;">`"Understanding Analytics" is all about Wistia's bread-and-butter: the powerful analytics provided for embedded video plays.`</p>``<p>`For understanding how your video is actually performing, no other service comes close. `</p>`
`<ul style="margin: 10px 0px 0px 20px;">`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="first_chap" href="#" onclick="wistiaEmbed.time(0).play(); return false;">`Part I`</a>``</li>`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="second_chap" href="#" onclick="wistiaEmbed.time(120).play(); return false;">`Part II`</a>``</li>`
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
*(0:08)* This quote has been attributed to [Peter Drucker]({{ site.url }}/{{ page.lang }}/http://en.wikipedia.org/wiki/Peter_Drucker.html).\\
*(0:50)* Check the [Analytics doc page]({{ site.url }}/{{ page.lang }}/analytics.html) for more on both Account Trends and the Viewer Stream.\\
*(1:40)* For more on engagement graphs, [head here]({{ site.url }}/{{ page.lang }}/audience_engagement_graph.html).\\
\\

**Part II**\\
*(2:05)* Yes indeed, we are that cheerful!\\
\\
## Ready for More?

This is (for now) the last video in the series!  You can head back, and check out our [Wistia Basics]({{ site.url }}/{{ page.lang }}/randor_basics.html) video, or [Customizing Your Embed]({{ site.url }}/{{ page.lang }}/randor_customization.html) or [Promoting Your Video]({{ site.url }}/{{ page.lang }}/randor_promoting.html).  
\\
\\
What other Wistia training videos would you like to see?  Let us know in the comments!
\\
\\
----
\\
\\
~~DISQUS~~
