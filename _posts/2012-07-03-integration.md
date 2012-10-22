---
title: Integrations
layout: post
description: Wistia plays well with lots of 3rd party services. See some of the best, and how to use them, in this article.
post_intro: <p>As we update our embedding processes and APIs, Wistia will get better and better at integrating with other top-notch services. On this doc page, we'll do our best to keep track of places where Wistia works out-of-the-box for embedding, and also where deeper integrations have been built</p>
---

## Wordpress

{% post_image hashed_id: 'bdad3d0b4f6e6581194fbcbd25dd9626501c7c80', width: 200, class: 'integration_logo float_left' %}

Using the [Wistia Wordpress Plug-in](http://wordpress.org/extend/plugins/wistia-wordpress-oembed-plugin), you can add your embed codes and they will be protected. It won't take up any space in your Wordpress admin dashboard, but instead works quietly in the background (as it should).

<div class="clear"></div>

{{ "Wistia embed codes can only be used with Wordpress.org installs. <a href='http://en.support.wordpress.com/com-vs-org'>Read up on the difference between Wordpress.com hosted blogs and Wordpress installs</a>." | note }}

### Tips for Using Wordpress

*  When inserting the embed codes, make sure you are in HTML editing mode, and leave a line open above and below the embed code.
*  If you have larger resolution videos, and they are appearing smaller or squished, access the Wordpress admin control panel (Settings -> Media -> Maximum Video Embed Size) and set the max to the largest size of your video ('no limit' setting doesn't work, must be actual size).

### Styling Your Embed in Wordpress

To center your video in Wordpress, you will first use an outer div with the style "text-align: center".  Then, add the inline-block styling to the video div (see the code below, the "style" attributes in both divs can be copied to your own page).

<pre><code class='language-markup'>
<div id="the_video" style="text-align: center;">

  <div id="wistia_5af2188e71" style="width:640px;height:360px;display: inline-block; *display: inline; margin: 0 auto; vertical-align: top;  zoom: 1;" data-video-width="640" data-video-height="360">
    <object id="wistia_5af2188e71_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:100%;position:relative;width:100%;">
    <param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-02-08"></param><param name="allowfullscreen" value="true"></param>
    <param name="allowscriptaccess" value="always"></param><param name="wmode" value="opaque"></param>
    <param name="flashvars" value="videoUrl=http://embed.wistia.com/deliveries/008ea72d13517143c0e738b91aca90aa9a17ab98.bin&&hdUrl=http://embed.wistia.com/deliveries/39aacc9a8f142e920273ed35d62dbc6fefd04acd.bin&stillUrl=http://embed.wistia.com/deliveries/44f16ff951e71f077d458933fd68ec02a35bd23d.bin"></param>
    <embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-02-08" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" wmode="opaque" flashvars="videoUrl=http://embed.wistia.com/deliveries/008ea72d13517143c0e738b91aca90aa9a17ab98.bin&hdUrl=http://embed.wistia.com/deliveries/39aacc9a8f142e920273ed35d62dbc6fefd04acd.bin&stillUrl=http://embed.wistia.com/deliveries/44f16ff951e71f077d458933fd68ec02a35bd23d.bin" style="display:block;height:100%;position:relative;width:100%;"></embed></object></div>
    <script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js"></script>
    <script>/*<![CDATA[*/
      wistiaEmbed = Wistia.embed("5af2188e71", {
      videoWidth: "640",
      videoHeight: "360",
      controlsVisibleOnLoad: true
    });/*]]*/</script>

</div>
</code></pre>


### Using Wistia Video SEO with Wordpress

If you are looking to use your Wordpress page with Wistia's Video SEO tool, you will need to update your Robots.txt file.  For more on Video SEO and the Robots.txt file, check out our [Video SEO primer]({{ '/video-seo#setup' | post_url }}).

To update your Robots.txt file in Wordpress, you will need a special plug-in called 'KB Robots.txt'.  [Read more about the plug-in](http://adambrown.info/b/widgets/kb-robots-txt) and download it for your Wordpress site on their [plug-in page](http://wordpress.org/extend/plugins/kb-robotstxt).

{% post_image hashed_id: 'ec5f981b2a57494d9ea5bd09fcb3b26a280c8663', width: 320, class: 'float_right' %}

Once the plug-in is installed, you should have a new *Options* menu, and a *KB Robots.txt* admin page.  This page should give you an editable box to add your Wistia Video SEO 'Robots.txt' line. You will obtain that line from the [Video SEO]({{ '/video-seo' | post_url }}) area of your account.

## Drupal

{% post_image hashed_id: '97d57d4890140c3e6f529e7e58fe7b7d3610d9b5', width: 200, class: 'integration_logo float_left' %}

The [Media:Wistia Drupal Module](http://drupal.org/project/media_wistia) makes embedding both videos and playlists easy using either Wistia URLs or embed codes. 

This was updated by dev-god [TravisCarden](http://drupal.org/user/236758), thanks Travis!

<div class="clear"></div>

## Expression Engine

{% post_image hashed_id: 'aaffdd3319f6a532ecb071811f2fd071e57a0a46', width: 200, class: 'integration_logo float_left' %}

Posting a video on an Expression Engine page can be accomplished using any embed code, or through oEmbed links through a special plug-in lovingly designed by user [Antenna](http://devot-ee.com/add-ons/antenna).

<div class="clear"></div>

### Squarespace

{% post_image hashed_id: '5bc3046a0b10664ef4c5bc96b4cd18ad3c056215', width: 200, class: 'integration_logo float_left' %}

With Wistia and Squarespace, embedding a video is as easy as pasting in your embed codes.

<div class="clear"></div>

### Shopify

<style float-left>[{{:shopify_logo.jpeg?150]({{ site.url }}/{{ page.lang }}/integration#shopify.html)</style>
<html><a href="http://wistia.com/doc/integration#shopify/" style="text-decoration: none; color: #000; font-weight: bold;">Shopify</a></html>

Shopify makes setting up your online store a breeze.  Adding Wistia videos is a great way to show off your product, explain how it works, and introduce your customers to your brand.

To embed a Wistia video on a Shopify page, simply drop the HTML embed codes into the HTML editing space for your page.

### Wix

<style float-left>[{{:wixlogo.jpeg?150]({{ site.url }}/{{ page.lang }}/integration#wix.html)</style>
<html><a href="http://wistia.com/doc/integration#wix/" style="text-decoration: none; color: #000; font-weight: bold;">Wix</a></html>

Wix is a Flash-based website builder with drag & drop functionality.  With an emphasis on great looking pages and layout, Wix is **Note:** Wix is built upon Flash, which means that using their sites will prevent your videos from appearing on mobile devices that don't support Flash (notably iPhones).

To embed a Wistia video in your Wix website, go to Add --> Widgets --> HTML. Click on the "Settings" for the HTML widget and you can paste your Wistia embed code where it reads "Insert HTML Code". Once you save it, you should be all set.

### Joomla

<style float-left>[{{:joomla_logo.jpg?150]({{ site.url }}/{{ page.lang }}/joomla.html)</style>

<html><a href="http://wistia.com/doc/integration#joomla/" style="text-decoration: none; color: #000; font-weight: bold;">Joomla</a></html>

Joomla is an open-sourced platform that is very useful for managing content dynamically.  Embedding your video on Joomla keeps visitors inside of your site experience, instead of navigating through public video communities.

The best way to embed in Joomla is to use the TinyMCE editor advanced settings to prevent deletion of raw HTML and iframes.

For more on embedding in Joomla, please refer to our Joomla doc page: [Embedding in Joomla]({{ site.url }}/{{ page.lang }}/joomla.html)

---

## Services Wistia Works With

We love seeing Wistia videos out there in the wild. This is an in-complete list of places we've seen Wistia videos embedded.

Service | Description | URL
--------|-------------|-----
[{{:wordpress_logosmall.jpg?25]({{ site.url }}/{{ page.lang }}/http://wordpress.org/.html)[Wordpress]({{ site.url }}/{{ page.lang }}/wordpress.html)                [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)[{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)
[{{:basecamp.jpeg?25]({{ site.url }}/{{ page.lang }}/http://basecamphq.com/.html)[Basecamp]({{ site.url }}/{{ page.lang }}/.html)                                   [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:wildapricot_logo.jpg?25]({{ site.url }}/{{ page.lang }}/http://www.wildapricot.com/default.aspx.html)[Wild Apricot]({{ site.url }}/{{ page.lang }}/.html)       [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:druplicon.png?25]({{ site.url }}/{{ page.lang }}/http://www.drupal.org/.html)[Drupal]({{ site.url }}/{{ page.lang }}/.html)                                     [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:joomla_logo.jpg?25]({{ site.url }}/{{ page.lang }}/http://www.joomla.org/.html)[Joomla]({{ site.url }}/{{ page.lang }}/joomla.html)                             [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)[{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)
[{{google_sites.png?25}}]({{ site.url }}/{{ page.lang }}/http://sites.google.com/.html)[Google Sites]({{ site.url }}/{{ page.lang }}/embedding_in_google_sites.html)[{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)[{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)
[{{:expeng.jpeg?25]({{ site.url }}/{{ page.lang }}/http://expressionengine.com/.html)[Expression Engine]({{ site.url }}/{{ page.lang }}/.html)                      [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)[{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)
[{{:blogger_logo.jpeg?25]({{ site.url }}/{{ page.lang }}/http://blogger.com.html)[Blogger]({{ site.url }}/{{ page.lang }}/.html)                                    [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)[{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)
[{{:posterous.png?25]({{ site.url }}/{{ page.lang }}/http://posterous.com/.html)[Posterous]({{ site.url }}/{{ page.lang }}/posterous.html)                          [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)[{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)
[{{:tumblr_logo.png?25]({{ site.url }}/{{ page.lang }}/http://tumblr.com/.html)[Tumblr]({{ site.url }}/{{ page.lang }}/.html)                                       [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:squarespace_logo.png?25}}]({{ site.url }}/{{ page.lang }}/http://www.squarespace.com/.html)[SquareSpace]({{ site.url }}/{{ page.lang }}/.html)                  [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)[{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)
[{{:facebook_logo.png?25}}]({{ site.url }}/{{ page.lang }}/http://www.facebook.com/.html)[Facebook]({{ site.url }}/{{ page.lang }}/social-sharing.html)             [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:ebay.png?25]({{ site.url }}/{{ page.lang }}/http://ebay.com/.html)[eBay]({{ site.url }}/{{ page.lang }}/.html)                                                                                                                                                                            
[{{:shopify_logo.jpeg?25}}]({{ site.url }}/{{ page.lang }}/http://www.shopify.com/.html)[Shopify]({{ site.url }}/{{ page.lang }}/.html)                             [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:wixlogo.jpeg?25}}]({{ site.url }}/{{ page.lang }}/http://www.wix.com/.html)[Wix]({{ site.url }}/{{ page.lang }}/.html)                                          [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:weebly_logo.png?25}}]({{ site.url }}/{{ page.lang }}/http://www.weebly.com/.html)[Weebly]({{ site.url }}/{{ page.lang }}/.html)                                 [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:lexblog.png?25}}]({{ site.url }}/{{ page.lang }}/http://lexblog.com/.html)[LexBlog]({{ site.url }}/{{ page.lang }}/.html)                                       [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
[{{:sharepoint.png?25}}]({{ site.url }}/{{ page.lang }}/http://sharepoint.microsoft.com/.html)[SharePoint]({{ site.url }}/{{ page.lang }}/.html)                    [{{:dot.jpg]({{ site.url }}/{{ page.lang }}/integration.html)                                                             
