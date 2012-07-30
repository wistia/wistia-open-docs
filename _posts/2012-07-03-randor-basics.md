---
title: Randor Basics
category: Getting Started
---

# Wistia Basics

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
`<div id="wistia_8a5e87899d" style="width:640px;height:386px;" data-video-width="640" data-video-height="360">`&nbsp;`</div>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js">``</script>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1-gridify%2CW-v1-wistia_url_min%2Csocialbar-v1%2CpostRoll-v1.js">``</script>`

`<script>`/*<![CDATA[*/
wistiaEmbed = Wistia.embed("8a5e87899d", {
    videoWidth: "640",
    videoHeight: "360",
    controlsVisibleOnLoad: true
});
Wistia.plugin.postRoll(wistiaEmbed, {
    version: "v1",
    raw: "`<style type=\"text/css\">`\n#container {\ncolor: white;\ntext-align: center;\n}\n\na.call_to_action {\ntext-decoration: none;\ncolor: white;\n}\n\na.call_to_action:hover {\ncolor: yellow;\n}\n\n`</style>`\n\n`<div id=\"container\">`\n`<strong>`Other Wistia Videos:`</strong>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_customization\">`Video Customization`</a>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_promoting\">`Promoting Videos`</a>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_analytics\">`Understanding Analytics`</a>``<br>`\n`</div>`",
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
    tweetText: "Wistia Basics",
    badgeUrl: "http://wistia.com",
    badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png"
});
/*]]*/`</script>`
`</div>`
`<div class="the_links" style="width: 200px; float:left; margin-left: 30px">`
`<p style="margin: 20px 0 20px 0;">`"Wistia Basics" features uploading, embedding, analytics, and account settings with Wistia.`</p>`
`<ul style="margin: 10px 0px 0px 20px;">`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="first_chap" href="#" onclick="wistiaEmbed.time(0).play(); return false;">`Uploading a video`</a>``</li>`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="second_chap" href="#" onclick="wistiaEmbed.time(96).play(); return false;">`Embedding on your site`</a>``</li>`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="third_chap" href="#" onclick="wistiaEmbed.time(159).play(); return false;">`Analytics Overview`</a>``</li>`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="fourth_chap" href="#" onclick="wistiaEmbed.time(219).play(); return false;">`Account Settings`</a>`
`</div>`
`<div class="clearfix" style="clear:both">``</div>`

`<script>`
var url = window.location.href.toString();
var playInterval;
if (url.indexOf('hf') != -1 || url.indexOf('email') != -1 || url.indexOf('hm') != -1)
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

**Uploading**\\
*(0:25)* to create a New Project, select "New Project" from under the Actions drop-down menu\\
*(0:45)* We did a bit of time-warping to accomplish this.  It can take some time to upload & process videos!\\
*(1:00)* For a list of the formats we accept, refer here: [Optimal Export settings]({{ site.url }}/{{ page.lang }}/exporting#what_are_the_optimal_export_settings.html)\\
*(1:15)* This was the best thumbnail because Chris looks so awkward.\\
\\

**Embedding**\\
*(2:10)* To see that video on customization, head here: [Customizing Your Embed]({{ site.url }}/{{ page.lang }}/randor_customization.html)\\
*(2:20)* In this example, I used a Wordpress blog, but there are lots of different site types and platforms you can embed Wistia videos into.  See our [list of tested sites]({{ site.url }}/{{ page.lang }}/integration.html).\\
\\

**Stats Intro**\\
*(3:20)* For more on Wistia Analytics, head here: [Understanding Analytics]({{ site.url }}/{{ page.lang }}/randor_analytics.html).\\
\\

**Account Settings**\\
*(4:00)* You can access the Account Dashboard under the "Account" drop-down menu anywhere in your account.\\
*(4:40)* For more on what different user-levels can access in your account, read up on [permissions]({{ site.url }}/{{ page.lang }}/permissions.html).\\
*(5:40)* It's true, Chris couldn't wait.  In fact, he watches the other videos daily.
\\
\\
\\
## Ready for More?

The next video in the series is **"Customizing Your Embed"**.  From colors, to controls, to interactivity, the SuperEmbed builder gives you ultimate video customizing power.  
\\
\\
Watch it right now: [Customizing Your Embed]({{ site.url }}/{{ page.lang }}/randor_customization.html).
\\
\\
----
\\
\\
~~DISQUS~~
