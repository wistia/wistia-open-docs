---
title: Wordpress
layout: post
category: Integrations
---

{{ :wistia_wordpress.png }}

Wistia and Wordpress go together like...chocolate and marshmallow (insert your favorite food pairing).

Wordpress is a great platform, but it's not always so nice to things like iframes and javascript (which are essential for video embed codes). To prevent issues with your Wistia embeds in Wordpress, we built the [Wistia Wordpress Plug-in]({{ site.url }}/{{ page.lang }}/http://wordpress.org/extend/plugins/wistia-wordpress-oembed-plugin/.html).

If you're using Wistia with Wordpress, we strongly recommend you install the plug-in!
\\
\\


### Notes on using Wordpress

*  When inserting the embed codes, make sure you are in HTML editing mode, and leave a line open above and below the embed code.

*  If you have larger resolution videos, and they are appearing smaller or squished, access the Wordpress admin control panel (Settings -> Media -> Maximum Video Embed Size) and set the max to the largest size of your video ('no limit' setting doesn't work, must be actual size).
\\
\\
### Styling Your Wordpress Embed

**Centering Your Video**
\\
To center your video in Wordpress, you will first use an outer div with the style "text-align: center".  Then, add the inline-block styling to the video div (see the code below, the "style" attributes in both divs can be copied to your own page).
\\
\\
`<html>`
`<script src="https://gist.github.com/2576887.js">` `</script>`
`</html>`


## Adding the Wistia XML Sitemap Entry to a Wordpress 'Robots.txt' File

If you are looking to use your Wordpress page with Wistia's Video SEO tool, you will need to update your Robots.txt file.  For more on Video SEO and the Robots.txt file, check out our [Video SEO primer]({{ site.url }}/{{ page.lang }}/video-seo#setup.html).
\\
\\
To update your Robots.txt file in Wordpress, you will need a special plug-in called 'KB Robots.txt'.  You can find more info on the plug-in [here]({{ site.url }}/{{ page.lang }}/http://adambrown.info/b/widgets/kb-robots-txt/.html) and download it for your Wordpress page [here]({{ site.url }}/{{ page.lang }}/http://wordpress.org/extend/plugins/kb-robotstxt/.html).
\\
\\
`<style float-right>`{{:video-seo-setup2.png?300}}`</style>`
\\
\\
Once the plug-in is installed, you should have a new "Options" menu, and a 'KB Robots.txt' admin page.  This page should give you an editable box to add your Wistia Video SEO 'Robots.txt' line: 'Sitemap: http://app.wistia.com/sitemaps/XXX.xml'.  You can obtain that line from the Video SEO tool.
\\
\\
