---
title: Updating Your Popover Embeds
layout: post
category: Developers
description: Here's how to keep your popover embeds up to date.
post_intro: <p> </p>
footer: for_developers
---
### Updating Popover Embeds Before February 1, 2016

On February 1, 2016, Wistia will be making a change to one of our CDN providers.
This update will affect old popover embeds created before October 2015.

Normally, your popover embeds should look like this:

{% post_image hashed_id: 'e68302eec90c3ed124c7ba83e1c8f495f61c7fc2', width: 408, class: 'float_left' %}

But because of the upcoming changes to Wistia's infrastructure, they may break
and look like this:

{% post_image hashed_id: '84f1748dd49f21969df879edebae557fc666370a', width: 408, class: 'float_left' %}

We’re making a change to Wistia's infrastructure that will deprecate old popover
embeds.

If you’re affected, you’ll need to replace the old code with the new popover
code. The good news is that this change will improve the user experience for you
and your viewers, since the new popovers embeds are more reliable and
versatile.

## Why Are We Making This Change?

To continue improving our service for customers, we sometimes need to switch up
the vendors we're working with. We are moving away from one of our content
delivery network (CDN) vendors on February 1, because we have added other CDNs
that are faster and more reliable.

Previously, thumbnail images were hardcoded into old popover embed code. These
thumbnails files live on the CDN that will be deactivated.

## What Do I Need to Do?

You will need to re-embed your videos using the new popover embed code. If your
account was affected, your Account Owner should have received an email with a
list of the embeds that you’ll need to replace.

### Why is the New Popover Embed Code Better?

We released a new, more robust version of our popover embed back in October.

- With the new popover embed, we inject the thumbnail file with JavaScript. This way all of the files are served directly by Wistia, rather than an external CDN.
- The new popover embed is responsive just like our inline embed, which means it can adapt to your website’s style based on the device or size of the browser window.
- The best part is that the new popover embed comes with Wistia's full [SEO benefits](http://wistia.com/blog/seo-standard-embed). Once you embed a popover, JSON-LD metadata is injected directly onto your page, giving it an SEO boost.


## Where Are My Old Popovers Embedded?

If you've forgetten where your old popover embeds live, you can go to the
[media stats page]({{ '/embedded-video-analytics#medialevel_trends' | post_url }}) for
the videos we shared with you and open any viewers' heatmap. Here, you'll find
the URL where the video was viewed, and voilà, now you know which page you’ll
need to update.

{% post_image hashed_id: 'e08c229a93bc2dec94fd3e1be89a53a4eaffe19c', width: 466, class: 'float_left' %}

Still confused? [Give us a shout.](http://wistia.com/support/contact) We'll be
happy to help!

## Old Popover Embeds vs. New

Now that you know which page you'll need to edit, let's take a look at the old
embed code in comparison to the new one.

Your **old** popover embed code will look something like this:

{% codeblock popover_example.html %}
<a href="//fast.wistia.net/embed/iframe/elhrbf4rb?popover=true" class="wistia-popover[height=360,playerColor=84afde,width=640]"><img src="https://embed.wistia.com/deliveries/kehrb3i4978bq38ofybq4o8ff4y28yf2edwrg/file.jpg" /></a>
<script charset="ISO-8859-1" src="http://fast.wistia.com/assets/external/popover-v1.js"></script>
{% endcodeblock %}

Your **new** popover embed code will look something like this:

{% codeblock popover_example.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script><span class="wistia_embed wistia_async_k9bmbixozg popover=true popoverAnimateThumbnail=true" style="display:inline-block;height:207px;width:368px">&nbsp;</span>
{% endcodeblock %}

While the codes are different, the popover player works the exact same way. One
of the only big differences is that the "Close Window" icon has been redesigned
and simplified.

{% post_image hashed_id: 'b2ac3a58664d9dd01a1c71d015d1644fc441e524', width: 481, class: 'float_left' %}

## How to Update Your Embeds

Head to the **Video Actions** dropdown menu for your video and choose **Embed &
Share**. Navigate to the *Popover Embed* tab. It will look like this:

{% post_image hashed_id: 'ddb4224153a60be9cc27bc82523355d78515679a', width: 714, class: 'float_left' %}

You can customize the display of your popover using the *Options* box. Plus,
with the new popover embed, you can now have a responsive thumbnail!

{% post_image hashed_id: 'ac1332249554cf78eeaa5926f71196231534b531', width: 365, class: 'float_left' %}

When you’re happy with the way your preview looks, copy the new code and use it
to replace the old popover embed in your website’s editor. Be sure to read the
section on
[Responsive Design with Popover Embeds](http://wistia.com/doc/embedding#responsive_design_with_popover_embeds)
for more information too.

{{ 'If you would like to modify the behavior of your popover embed beyond what the options in the Embed & Share screen provide, check out the [Popover Customization](http://wistia.com/doc/popover-customization) page.' | tip }}

If you have any questions, don't hesitate to [reach out to us](http://wistia.com/support/contact).
