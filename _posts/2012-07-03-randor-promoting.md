---
title: Randor Promoting
category: Getting Started
---

# Promoting Your Wistia Video

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
`<div id="wistia_07bb07bab1" style="width:640px;height:386px;" data-video-width="640" data-video-height="360">`&nbsp;`</div>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js">``</script>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1-gridify%2CW-v1-wistia_url_min%2Csocialbar-v1%2CpostRoll-v1.js">``</script>`

`<script>`/*<![CDATA[*/
wistiaEmbed = Wistia.embed("07bb07bab1", {
    videoWidth: "640",
    videoHeight: "360",
    controlsVisibleOnLoad: true
});
Wistia.plugin.postRoll(wistiaEmbed, {
    version: "v1",
    raw: "`<style type=\"text/css\">`\n#container {\ncolor: white;\ntext-align: center;\n}\n\na.call_to_action {\ntext-decoration: none;\ncolor: white;\n}\n\na.call_to_action:hover {\ncolor: yellow;\n}\n\n`</style>`\n\n`<div id=\"container\">`\n`<strong>`Other Wistia Videos:`</strong>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_basics\">`Wistia Basics`</a>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_customization\">`Customizing Your Embed`</a>``<br>`\n`<a class=\"call_to_action\" href=\"http://wistia.com/doc/randor_analytics\">`Understanding Analytics`</a>``<br>`\n`</div>`\n",
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
    tweetText: "Promoting Your Video",
    badgeUrl: "http://wistia.com",
    badgeImage: "http://static.wistia.com/images/badges/wistia_100x96_black.png"
});
/*]]*/`</script>`
`</div>`
`<div class="the_links" style="width: 200px; float:left; margin-left: 30px">`
`<p style="margin: 0px 0 20px 0;">`"Promoting Your Video" covers the tools that ensure your video content gets the attention it deserves. `<br />`In this video, we cover email marketing, Video SEO, and sharing on Facebook and Twitter.`</p>`
`<ul style="margin: 10px 0px 0px 20px;">`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="first_chap" href="#" onclick="wistiaEmbed.time(0).play(); return false;">`Email Marketing`</a>``</li>`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="second_chap" href="#" onclick="wistiaEmbed.time(166).play(); return false;">`Video SEO`</a>``</li>`
`<li style="margin-bottom: 10px;">``<a class="chap_link" id="third_chap" href="#" onclick="wistiaEmbed.time(333).play(); return false;">`Facebook & Twitter`</a>``</li>`
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

**Email Marketing**\\
*(0:35)* there isn't necessarily a strict definition of 'business-type fun'.\\
*(0:45)* Email clients (like Outlook, Apple Mail, Gmail, Sparrow) are designed to strip out video and anything else that might be malicious.  This approach is the closest we can get at the present time to allowing your viewers to watch video from an email.  There are actually lots of benefits from doing it this way - for starters, the viewer ends up on your site, where they can buy your product!\\
*(1:17)* Enabling the video to be embedded in an email marketing campaign means that viewers can access your video's Wistia page by a URL, without having to enter a password.\\
*(1:28)* Indeed, we do have a whole bunch.  See the full list [here]({{ site.url }}/{{ page.lang }}/email_marketing#email_provider_list.html).\\
\\

**Video SEO**\\
*(3:04)* As usual, we had way too much fun shooting this scene.\\
*(3:26)* While Jeff can control where people appear, he cannot control where they end up.  In this case, Ben ended up in Siberia.  Poor Ben.\\
*(4:05)* In many cases, your website might already have a robots.txt file. If so, you will need to determine how to go about editing it. Wordpress for example, has plug-ins like [KB Robots.txt]({{ site.url }}/{{ page.lang }}/http://wordpress.org/extend/plugins/kb-robotstxt/.html) which provide control over your robots.txt file.\\
*(4:30)* Once you have created and validated your video sitemap, the 'SEO' embed type option will appear.  Your videos must be embedded using this embed type to add them to the Video Sitemap.\\
*(5:30)* If for any reason Video SEO isn't demystified for you, there is lots more info on our [Video SEO page]({{ site.url }}/{{ page.lang }}/video-seo.html).\\
\\

**Facebook & Twitter**\\
*(6:20)* Why add a description?  When your viewers come in, they might know exactly what is going on.  But we've found more often than not they open your link, and then grab some coffee or finish up other work.  When they come back, they've totally forgotten the context.  That's why we always provide it for them!\\
*(6:30)* That was a totally unnecessary edit - the idea was to illustrate how to update the title on a video.\\
*(7:00)* You ALWAYS want to use a description when sharing a video on Facebook.  We pass along the description to Facebook, and they use it as the content for your post.\\
\\
\\
## Ready for More?

The next video in the series is **"Understanding Wistia Analytics"**.  It covers interacting with your video analytics, and also details a few real-world examples of making better video through analytics.
\\
\\
Watch it right now: [Understanding Wistia Analytics]({{ site.url }}/{{ page.lang }}/randor_analytics.html).
\\
\\
----
\\
\\
~~DISQUS~~
