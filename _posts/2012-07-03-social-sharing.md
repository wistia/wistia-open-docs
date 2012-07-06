# Wistia and Social Sharing

Social Media can drive some serious ROI if done right.  Vehicles like Facebook and Twitter can be used to spread a business message effectively, especially if delivered in an easy to consume and share way.  The best way to do that is with video - it's perfect for social media attention spans, so it tends to 'travel' better than blocks of text.
\\
\\
Now that you've got your video uploaded to Wistia, how do you share it and track the performance on Social Media sites?  This tutorial will help.  The two services we're focused on here are Facebook and Twitter, but if you have other social media sites you're thinking of embedding in, start on our [embedded services list]({{ site.url }}/{{ page.lang }}/integration.html), or email `<support@wistia.com>`.
\\
\\
## A Video Guide

\\
`<style center>`
`<html>`
`<iframe width="640" height="400" src="http://app.wistia.com/embed/medias/d4df1638dd?controlsVisibleOnLoad=false" frameborder="0" style="border:2px solid grey;">``</iframe>`
`</html>`
`</style>`
\\
\\
## Facebook

`<style float-right>`{{:facebook_logo_small.png|}}`</style>`
Facebook embeds show up right in your news feed.  Your followers can click to play the video in the feed, or click through the link to watch the video in your Wistia account.
\\
\\
\\
\\
\\
\\

**To embed your video into Facebook:**


*  In your account, open up the video you'd like to embed.
`<style float-right>`{{:description_sb.png|}}`</style>`

*  Select "Add Sidebar Element" under the Media Actions drop-down.  Select "add a description", and then give your video some info, like a quick blurb about the video.  This is going to show up as a description in the Facebook news feed.

*  Back under the Media Actions menu, select “share by link”.

*  Copy the share link, paste it into your Facebook status box and click “share”.

*  Your friends will be able to see the video in their News Feed, and even play it within the Feed - how neat is that!?
\\
`<style center>`{{:sidebar_fb.png|}}`</style>`
\\

**How it looks:**
`<style center>`{{:fb_embed_steps.png}}`</style>`
\\
### Posting to Facebook from your website

Maybe you want to post to Facebook, but you want it to point back to your website?  If so, you can use the OpenGraph tags we produce for 'public' videos to accomplish this. Facebook uses the OpenGraph tags to specify which media/content from the website should be posted.

To do this, first embed the video on your website.  Next, make the Project your video is contained in a "Public" project, and add a description (as detailed in the video above).

View the source on the media page, and look for all of the tags of the form`<meta content="..." property='og:xxxxxx'>` (there should be about 8 of these tags). These are the OpenGraph tags we have created for your video! You will need to change the og:url tag to be the URL of the page where you have embedded the video (and are putting the OpenGraph tags).

Add these to the `<head>` of your external website, and then share the URL of that page on Facebook.

You're good to go!
\\
\\
\\


## Twitter

`<style float-right>`{{:tweetie.png}}`</style>`

**To post your videos on Twitter:**

*  In your account, open up the video you'd like to embed.

*  Under the Media Actions menu, select “Share by Link”.

*  Copy the share link, paste it into your tweet editor and click “tweet”.

*  The re-tweeting shall commence :)
\\
\\

