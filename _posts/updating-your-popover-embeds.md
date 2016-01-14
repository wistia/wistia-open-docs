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

image

But because of upcoming changes to Wistia's infrastructure, they may break and look like this:

image

We’re making a change to Wistia's infrastructure that will deprecate old popover embeds. If you’re affected, you’ll need to replace the old code with new popover code. This change will improve the user experience for you and your viewers, because the new popovers embeds are more reliable and versatile.

## Why is Wistia making this change?

To continue improving our service for customers, we sometimes need to switch up the vendors we're working with. We are moving away from one of our content delivery network (CDN) vendors on February 1, because we have added other CDNs that are faster and more reliable. The thumbnail files from the older popover embeds lived on the CDN that will be deactivated.

## What do I need to do?

You will need to re-embed your videos using the latest popover embed code. If your account was affected, your account owner should have received an email with a list of the videos that you’ll need to replace.

### How does the new embed code improve popovers?

We released a new, more robust version of our popover embed back in October.

<ul>
<li>With the new popover embed, this problem can’t happen again. We inject the thumbnail file with JavaScript so all of the files are served directly by Wistia, rather than an external CDN.</li>
<li>The new popover embed is responsive just like our inline embed, which means it can adapt to your website’s style based on the device or size of the browser window.</li>
<li>The best part - in our opinion - is that the new popover embed comes with Wistia's full SEO benefits. Once you embed a popover, JSON-LD metadata is injected onto your page, giving it an SEO boost.</li>

## Don’t remember where your popovers were embedded?

If you forget where your old popover embed codes lived, you can go to the Stats page for the videos we shared with you and open any viewer’s heatmap. Here, you'll find the URL where the video was viewed, and voila, now you know which page you’ll need to update.

image

## How do I fix it?

Now that you know which page you need to edit, let’s take a look at what the old embed code looks like compared to the new one.

Your old popover embed code looks something like this:

code goes here

Your new popover embed code will look something like this:

code goes here

While the codes are different, the popover player works the same way. The only difference you might notice is that the new "Close Window" icon has been redesigned and simplified.

Old: image

New: image

### Here are the steps to update your old popover embed code to our new popover embed code:

Go to the "Video Actions" dropdown menu and choose "Embed & Share". The "Embed & Share" window will open directly to the "Popover Embed" tab, which looks like this:

image

You can customize the display of your popover using the "Options" box. With the new popover embed, you can now add a responsive thumbnail!

image

When you’re happy with the way your preview looks, copy the new code and use it to replace the old popover embed in your website’s editor. Be sure to read the section on Responsive Design with Popover Embeds as well. LINK GOES here

COPIED TIP BOX GOES here
