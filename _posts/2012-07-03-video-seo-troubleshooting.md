# Video SEO Troubleshooting


Want a quick overview of the Video SEO workflow? Check out this video:

`<style center>``<html>`
`<div id="the_video" style="text-align:center;">`
`<div id="wistia_38bcf1939d" class="wistia_embed" style="width:600px;height:364px;display: inline-block; *display: inline; margin: 0 auto; vertical-align: top;  zoom: 1;" data-video-width="600" data-video-height="338">`&nbsp;`</div>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js">``</script>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1-gridify%2CW-v1-wistia_url_min%2Csocialbar-v1.js">``</script>`

`<script>`/*<![CDATA[*/
wistiaEmbed = Wistia.embed("38bcf1939d", {
    videoWidth: "600",
    videoHeight: "338",
    controlsVisibleOnLoad: true,
    playerColor: "7a7368"
});
Wistia.plugin.socialbar(wistiaEmbed, {
    version: "v1",
    buttons: "twitter-facebook",
    tweetText: ""
});
/*]]>*/`</script>`

`<script>`
var url = window.location.href.toString();
var playInterval;
if (url.indexOf('hf') != -1)
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
`</div>`

`</html>``</style>`





## Still Having Trouble?

Nothing ruins your mood like an error message you can't fix. We're here to help! The suggested changes below will resolve the issues you're running into with Video SEO.

### Error Message #1:

`<style center>`{{VideoSEOTroubleshooting.png?500}}`</style>`

\\


**1. The video is embedded with the wrong embed type**


*  *issue:* you embedded the video correctly, but with an unsupported embed code type.\\

*  *to solve:* make sure that the video has been embedded on your site using the "SEO" embed type. Note that popovers, iframes, and playlists are not supported. You can find the SEO embed type on the Super Embed page under the Embed Type tab on the left. 

**2. The video hasn't been embedded on the page specified**


*  *issue:* our system cannot locate your video embedded at that location.\\

*  *to solve:* make sure that the video you're trying to add to your sitemap has been embedded on that page.


### Error Message #2

`<style center>`{{VideoSEOWrongDomain.png?500}}`</style>`
\\

**1. The video isn't embedded on the proper domain**


*  *issue:* your sitemap doesn't point to that location.\\

*  *to solve:* make sure that the a video sitemap has been created for the target domain. You can see a drop down list for all of your video sitemaps in the Video SEO tool.\\

**2. The wrong domain has been selected**


*  *issue:* the video is not embedded on the target domain.\\

*  *to solve:* select the appropriate domain from the drop down menu for the target location.\\


\\


**Still no luck? Shoot us an email at support@wistia.com. We'd be more than happy to help you out!**
