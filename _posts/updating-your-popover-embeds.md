---
title: Updating Your Popover Embeds
layout: post
category: Developers
description:
post_intro: <p> </p>
footer: for_developers
---
### Updating old popover embeds before February 1, 2016

Your popover embeds should look like this:

{% post_image hashed_id: 'e68302eec90c3ed124c7ba83e1c8f495f61c7fc2', width: 408, class: 'float_left' %}

But because of upcoming changes to Wistia's infrastructure, they may break and look like this:

{% post_image hashed_id: '84f1748dd49f21969df879edebae557fc666370a', width: 408, class: 'float_left' %}

We’re making a change to Wistia's infrastructure that will deprecate old popover embeds. If you’re affected, you’ll need to replace the old code with new popover code. This change will improve the user experience for you and your viewers, because the new popovers embeds are more reliable and versatile.

## Why is Wistia making this change?

To continue improving our service for customers, we sometimes need to switch up the vendors we're working with. We are moving away from one of our content delivery network (CDN) vendors on February 1, because we have added other CDNs that are faster and more reliable. The thumbnail files from the older popover embeds live on the CDN that will be deactivated.

## What do I need to do?

You will need to re-embed your videos using the latest popover embed code. If your account was affected, your account owner should have received an email with a list of the videos that you’ll need to replace.

### Why is the new popover embed code better?

We released a new, more robust version of our popover embed back in October.

<ul>
<li>With the new popover embed, this problem can’t happen again. We inject the thumbnail file with JavaScript so all of the files are served directly by Wistia, rather than an external CDN.</li>
<li>The new popover embed is responsive just like our inline embed, which means it can adapt to your website’s style based on the device or size of the browser window.</li>
<li>The best part - in our opinion - is that the new popover embed comes with Wistia's full SEO benefits. Once you embed a popover, JSON-LD metadata is injected onto your page, giving it an SEO boost.</li>
</ul>

## Don’t remember where your popovers were embedded?

If you forget where your old popover embed codes lived, you can go to the Stats page for the videos we shared with you and open any viewer’s heatmap. Here, you'll find the URL where the video was viewed, and voilà, now you know which page you’ll need to update.

{% post_image hashed_id: 'e08c229a93bc2dec94fd3e1be89a53a4eaffe19c', width: 466, class: 'float_left' %}

## How do I fix it?

Now that you know which page you need to edit, let’s take a look at what the old embed code looks like compared to the new one.

Your old popover embed code looks something like this:

{% codeblock popover_example.html %}
<a href="//fast.wistia.net/embed/iframe/elhrbf4rb?popover=true" class="wistia-popover[height=360,playerColor=84afde,width=640]"><img src="https://embed.wistia.com/deliveries/kehrb3i4978bq38ofybq4o8ff4y28yf2edwrg/file.jpg" /></a>
<script charset="ISO-8859-1" src="http://fast.wistia.com/assets/external/popover-v1.js"></script>
{% endcodeblock %}

Your new popover embed code will look something like this:

{% codeblock popover_example.html %}
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script><span class="wistia_embed wistia_async_k9bmbixozg popover=true popoverAnimateThumbnail=true" style="display:inline-block;height:207px;width:368px">&nbsp;</span>
{% endcodeblock %}

While the codes are different, the popover player works the same way. The only difference you might notice is that the new "Close Window" icon has been redesigned and simplified.

Old "Close Window"

{% post_image hashed_id: '8e1ff5f3c1567e94c391396cf673b85fc9195cb8', width: 182, class: 'float_left' %}

New "Close Window"

{% post_image hashed_id: '2edb1da4306f8af6487e8c5f76883a42d2c7b549', width: 182, class: 'float_left' %}

### Update your old popover embed code to our new popover embed code

Go to the "Video Actions" dropdown menu and choose "Embed & Share". The "Embed & Share" window will open directly to the "Popover Embed" tab, which looks like this:

{% post_image hashed_id: 'ddb4224153a60be9cc27bc82523355d78515679a', width: 714, class: 'float_left' %}

You can customize the display of your popover using the "Options" box. With the new popover embed, you can now add a responsive thumbnail!

{% post_image hashed_id: 'ac1332249554cf78eeaa5926f71196231534b531', width: 365, class: 'float_left' %}

When you’re happy with the way your preview looks, copy the new code and use it to replace the old popover embed in your website’s editor. Be sure to read the section on [Responsive Design with Popover Embeds](http://wistia.com/doc/embedding#responsive_design_with_popover_embeds) as well.

{{ 'If you would like to modify the behavior of your popover embed beyond what the options in the Embed & Share screen provide, check out the [Popover Customization](http://wistia.com/doc/popover-customization) page.' | tip }}
