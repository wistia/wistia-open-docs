---
title: Video SEO
layout: post
category: embed and share
description: Video SEO is a powerful tool for your business, and here at Wistia we've got it fully covered. Learn more about Wistia and video SEO here.
post_intro: <p>Video SEO is the practice of providing the metadata ("information") for your content to search engines to improve the richness of search results (i.e. "rich snippets"). This, in turn, drives more visits to your website.</p><p>Wistia puts this video metadata on your page by injecting JSON-LD into your webpage's header. As a part of your marketing efforts, following the proper metadata and general SEO conventions will help to improve your video's presence on search engines.</p>
footer: 'for_beginners'
---

## Getting Started

To get those sweet SEO benefits, all you'll need to do is use the
[Standard]({{ '/embedding#inline_embeds' | post_url}}) or
[Popover]({{ '/embedding#popover_embed' | post_url }})
embed code type on your website. Seriously, it's that easy.

Wistia does all of the hard work for you. The JSON-LD file is automatically
injected into the head of your website once your page is live. We handle all of
the tricky stuff. No sitemaps, no extra coding, just copy, paste, and rock
out. 🤘

{% wistia_embed hashed_id: o2rli0hmq2, embedType: async %}

## What is Video SEO?

Confused about what Video SEO is? Don't worry! We've got <script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js" async></script><span class="wistia_embed wistia_async_4d6vocr5m5 popover=true popoverContent=link" style="display:inline"><a href="#">experts</a></span> on hand.

Video SEO is the process of adding metadata to your website so that a search
engine can better read what's on your page. The video's metadata in the JSON-LD
file will tell search engines things like:

- the video title
- the video description
- the length of the video
- the video transcript (if available)
- and the video thumbnail

Wistia's SEO functionality automatically includes this metadata in your website
to optimize your site for search engine indexing. Using recommended markup makes
it easier for Google to discover and index your content. Follow these steps to
make your video SEO game top notch.

## On-Page Markup for Video SEO

When search engines, like Google, crawl a page on your website, they can only
identify and index a video properly if the page includes the right video
markup. Google has
[extensive technical documentation](https://developers.google.com/webmasters/videosearch/schema)
about adding that markup (if you're feeling like a light read), but you don't
need to worry about it! Wistia's
[Standard]({{ '/embedding#inline_embeds' | post_url }}) and
[Popover]({{ '/embedding#popover_embed' | post_url }})
embeds automatically put that markup on the page for you.

When you add a Standard Wistia embed on a page, we'll inject the following
markup in the `<head>` section for search engines to find:

* **Name**: The title of your video, which you [can set]({{ '/media#update_video_title' | post_url }}) on the video's page in your account.
* **Description:** A brief description of the video's content. It's important to [write a description]({{ '/media#video_description' | post_url}}) for each video, which you can do from the video's page in your account.
* **Transcripts:** Your video's transcript is automatically formatted as metadata to let search engines see that your video has [captions]({{ '/captions' | post_url }}).
* **Thumbnail URL:** The URL of the image search engines will use if they choose to display a preview of your video in the search results. Wistia's got you covered on this front!
* **Embed URL:** A URL pointing to a player for a specific video.
* **Duration:** The length of your video.
* **Upload Date:** When the video was uploaded to Wistia.

These are all of the "Required" and "Recommended" properties listed on
[Google's guide for video markup](https://developers.google.com/webmasters/videosearch/schema).
As long as you fill out the Name and Description (and get yourself some captions,
if you're feeling so bold), Wistia's got the rest covered. 👍

If you ever change that information in Wistia, it will automatically be updated
on your website. Immediately! There's no need to re-embed your video.

{{ "You can use Google's [Structured Data Testing Tool](https://developers.google.com/structured-data/testing-tool/) to verify that Google is able to see your video and its metadata. If everything is working properly, you'll see that Google finds a `VideoObject` on the page." | tip }}

For even more information on embedding, check out the
[embedding]({{ '/embedding' | post_url }}) guide.

### Can I See an Example?

Yes you can, you SEO-lover.

Here's an example for the video right on this page! If you're feeling
extra exploratory, you can check this out live by inspecting the `<head>` code
of the current page.

<pre><code class="language-html" style="white-space: pre-wrap; white-space: -moz-pre-wrap; ">"@context":"http://schema.org/","@id":"https://fast.wistia.net/embed/iframe/o2rli0hmq2","@type":"VideoObject","duration":"PT1M42S","name":"Wistia Video SEO","thumbnailUrl":"https://embed-ssl.wistia.com/deliveries/702fbe1279c66aa8b60fb0b2db60ddfb949099d3.jpg?image_crop_resized=960x540","embedUrl":"https://fast.wistia.net/embed/iframe/o2rli0hmq2","uploadDate":"2016-02-11","transcript":"[MUSIC PLAYING]\n\nWe've included all\nthe SEO functionality\n\ninto our existing embed codes\nthrough the power of JSON-LD.\n\nWhat's JSON-LD, might you ask?\n\nJSON-LD is structured,\ncanonical data\n\nrepresenting a resource which\ncan be dynamically injected\n\ninto your page at runtime.\n\nSo, what you're saying is,\nwe provide the same code\n\nwe had before, but it's in\nthe head of the page rather\n\nthan the body.\n\nYep.\n\nAnd it all works with\nasynchronous JavaScript, which\n\nmeans it's super fast,\nand it won't slow down\n\nyour page's load time.\n\nGoogle loves fast websites, so\nthis performance improvement\n\nis good for SEO, too.\n\nHead to your Embed page.\n\nCopy a standard embed code,\nand paste it on your site.\n\nHere's a tip to see if your\nvideo is being indexed.\n\nHead to Google.com/video and\ntype in the URL of the page\n\nwhere your video is embedded.\n\nIf the page comes up\nwith a video thumbnail,\n\nthen hey, cool!\n\nIt worked.\n\nBut, if it doesn't happen\nimmediately, don't panic.\n\nIt can sometimes take a\nfew weeks to appear there.\n\nWhile the newest embed will\nensure your video gets indexed,\n\nit doesn't always\nmean your page will\n\nrank with the video snippet\nin Google's universal search.\n\nThat comes down to a\nwhole bunch of domain-\n\nand page-level factors,\nincluding the authority\n\nof the site, how prominent\nthe video is on the page,\n\nand whether Google thinks the\nsearch results should contain\n\nvideo results.\n\nAnd, if you don't\nwant your videos\n\nappearing in search\nresults, you're\n\nstill all good with\nthese new embed codes.\n\nThe new markup will\nonly take effect\n\non pages open to\nGoogle's searchbots.\n\nIn other words, it won't appear\nwhen there is a meta noindex\n\ntag in the head of the page or\nif there is a robots.txt block\n\npresent.\n\nSo, that's it.\n\nEverything just works.\n\nIt's not in the head,\nit's in the body.\n\n[LAUGHTER]","description":"Brendan, Max, and Jeff explain Wistia's video SEO functionality."</code></pre>

## Managing Your Metadata

**Title**

The title should be relevant for the video. Make sure it's short and sweet.
Don't try too hard to make it wordy, or shove too many keywords into it. Just
focus on appropriately naming the video for a viewer's experience.

**Description**

Be as descriptive as possible, but again don't go overboard with keywords. Make
the description useful for viewers, not for bots.

**Transcripts**

If your video has captions you can leverage that information to help your video
get indexed with optimal context. If you want to see how you can add captions to
your video, our
[Captions help page](http://wistia.com/doc/captions#select_your_video) will
show you how!


### How Can I See What My Metadata Will Look Like?

Easy peasy! Our Embed & Share modal includes a dropdown menu
that lets you look at all of that sweet SEO data. It's easier than ever to
see the same information that search engines are reading to help them rank your
page.

From the *Video Actions* menu, select **Embed &Share**. From the *Inline Embed*
tab, scroll down. There you'll see an option for SEO Metadata. Click the carrot
next to the "Inject video metadata..." option to see all of that metadata glory.

## Optimizing After Indexing

The goal of SEO is to drive more traffic to your website. Optimizing your video
content for search engines means that your pages will show up in video-specific
search results, thus driving more traffic to your site.

When a searcher clicks the video still in results, they will be taken to
*your* website, which is a major advantage over YouTube SEO.

We recommend keeping a close eye on your traffic during the SEO indexing
process&mdash;see if you notice an uptick after your video content is indexed. From
that baseline data, you can experiment with changes to improve incoming
traffic.

First, make sure you have related content on your page so that search engines
have context surrounding the video. If you notice an increase in traffic from
specific searches, add more content for those visitors.

Second, the thing that drives folks to click on the video is the thumbnail!
Choose a thumbnail that looks attractive for the topic at hand.

{% post_image hashed_id: '6d0d9cf14d2f214a6e46e9cac6cad9da678f84ae', class: 'center' %}

## Video SEO FAQ

Video SEO is tough but valuable. Customers have asked us lots of questions
about using our Video SEO tool for their video. We'll attempt to compile them
here.


### I thought only YouTube got indexed on Google search results? Should I have my video on both platforms?

Google has continued to support an open market, indexing videos that follow
their SEO guidelines, regardless of where they are hosted.

That being said, you probably don't want to have your video on YouTube *and* use
Wistia Video SEO. Because YouTube videos are indexed by default, your content
will compete with itself in the rankings if you use both. Then the YouTube links
to your video will drive traffic to YouTube, instead of to your website.

If the most important metric for your video is *views*, YouTube is a great
place for them. If your goal is to encourage a *conversion event*, like a
sign-up, subscription, or a share, then you want to drive viewers to your site
to watch your video. That is where Video SEO can be a valuable tool.

### Can I use playlist embeds?

At this time, we don't provide SEO for the playlist player types. We made that
decision because in our tests it seemed required for the Google bots to have
direct access to the video on the page, and immediately accessible to the
visitor, in order to reap the benefits of video on page rankings.

### It's been several days, when can I expect to see my video ranked in SERPs?

It can take up to 2 weeks for Google to index new content.

Because Google can be a bit of a black box sometimes, it's not
possible to determine exactly when new content will be indexed for video
results. In our experience, a waiting period of **10 - 15 days** is not uncommon.

If you have been waiting for a considerable amount of time, double-check the
list of possibly bad practices below, to make sure your content doesn't fall
into one of the areas of content that Google doesn't index reliably.

### What can prevent videos from being added to Google search results?

There are a few practices that we have seen prevent indexing.

* **Redirects** are a tricky practice, and more often than not, they seem to
  cause failures. Google might not follow the redirect when crawling, or the
  redirects might be set up incorrectly.
* **Disallowing content in the robots.txt file** would result in everything
  appearing "successful," but your content never appears in search results.
  Double-check that any "disallow" blocks in your robots.txt file do not point
  to content you *want* indexed.
* **Putting video farther down the page** can have a negative effect on the
  content. Where possible, make sure your videos are embedded at
  a good viewing size (at least 600px wide) and near the top of the page.

### Can I use Wistia embeds to build links for SEO?

The *Social Bar* includes an *embed* button, which allows viewers to embed your
video in other places. Wistia includes a
[customize option]({{ '/customizing-your-video#social_bar' | post_url }}) for adding links
that point back to the original site into the embed code your viewers can access.

So if one of your viewers re-embeds the video, new viewers can track down the
original source of the content, which Google and search engines also value.

For more information on video backlinks, check out our
[Customize help page]({{'/customizing-your-video#using_video_backlinks' | post_url}}).

More questions? Just want to talk about SEO?
[Give us a shout](http://wistia.com/support/contact). We'll be happy to talk
more!
