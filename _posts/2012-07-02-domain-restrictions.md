# Video Embed Domain Restrictions

Video embed domain restrictions allow you to completely control where your Wistia videos can be embedded.  When domain restriction is enabled, if someone copies an embed code from your website and puts it on their own website without your permission, the video will not display for their visitors.  

To get started with video embed domain restrictions:

1. Shoot an email to `<support@wistia.com>` and request that domain restrictions be enabled

2. Once enabled, go to your Wistia Account Dashboard and click on the new button title "Embed Settings". 

3. A dialog box will open where you can configure your domain restrictions (see image below).  Click the "Enabled" radio button and type the domains that you wish to use for your emebds into the box (comma separated).  Press the "Save Embed Settings" button when finished.

`<style center>`{{:domain-restrictions.png|}}`</style>`

4. Generate a new embed code for your video and select the "JavaScript" embed option. \\
NOTE: domain restrictions also work for embeds created using the [Wistia Popover tool]({{ site.url }}/{{ page.lang }}/http://wistia.com/blog/put-your-video-in-a-popover/.html).

`<style center>`{{:javascript-embed.png|}}`</style>`

5. Put your embed on a webpage hosted on a domain you entered in Step #3 and you are good to go!

NOTE: Video embed domain restrictions require using the Javascript embed code from Wistia.  If you use the "HTML Snippet" embed code or the "oEmbed Link", your embeds will not be restricted by domain.
