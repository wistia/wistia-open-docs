---
title: Video SEO
layout: post
category: embed and share
description: Video SEO is a powerful tool for your business, and here at Wistia we've got it fully covered. Learn the steps to get that set up in your account here.
post_intro: <p>Video SEO is the practice of providing the metadata (or "information") for your content to search engines to improve the richness of search results (i.e. "rich snippets") and ultimately drive more web visitors.</p><p>Wistia gets this metadata on your page by injecting JSON-LD into your webpage's header. As a part of your marketing arsenal, following the proper metadata and markup conventions improves your video asset's presence on search engines.</p>
footer: 'for_beginners'
---

## What is Video SEO?

Confused on what Video SEO is? Not to worry, we'll get you started right.

Some key take-aways:

* Video data can show up in search results in the form of *rich snippets*.
* Research shows Google prefers videos to other search results.
* Using the recommended markup makes it easier for Google to discover and index
  your content.


## On-page Markup for Video SEO

When search engines like Google crawl a page on your website, they can only identify a video and index it properly if the page includes the right video markup. Google has [extensive technical documentation](https://developers.google.com/webmasters/videosearch/schema) on how to add that markup... but you don't need to worry about it! Wistia's [Standard embeds]({{ '/embedding#inline_embeds' | post_url }}) automatically put that markup on the page for you.

When you have a standard Wistia embed on a page, it will place the following markup in the `<head>` section for search engines to find:

* **Name**: The title of your video, which you can set on the video's page in your account.
* **Description:** A brief description of the video's content. It's important to write a description for each video, which you can do from the video's page in your account.
* **Thumbnail URL:** The URL of the image search engines will use if they choose to display a preview of your video in the search results.
* **Embed URL:** The URL of the page the video is embedded on.
* **Duration:** How long is your video? The search engine won't know unless you tell it! So, this tells it for you.
* **Upload Date:** When the video uploaded to Wistia.

Those are all of the "Required" and "Recommended" properties listed on [Google's guide for video markup](https://developers.google.com/webmasters/videosearch/schema). You're covered 👍.

If you ever change that information in Wistia, it will automatically be updated on your website too. Immediately! There's no need to re-embed your video.

{{ "You can use Google's [Structured Data Testing Tool](https://developers.google.com/structured-data/testing-tool/) to verify that Google is able to see your video and its metadata. If everything is working properly, you'll see that Google finds a `VideoObject` on the page." | tip }}

For even more information on embedding, check out the [Embedding]({{ '/embedding' | post_url }}) guide.


### Managing your metadata

**Title**

The title should be relevant for the video. Don't try and make it overly wordy
or contain too many *tags*, just focus on appropriately naming the video for a
viewer's experience.

**Description**

Be as descriptive as possible but make sure you are not going overboard
with keywords you want your video to rank for. Make the description useful
for viewers, not for bots.

**Tags**

We’ve found that having 3 to 4 word descriptive tags works best for our
videos. Don’t get too wordy with your tags and keep it simple.


### How can I see what my metadata will look like?

We've got some good news. We've updated our Embed & Share module to include a dropdown menu that lets you look at all of the  

## Optimizing After Indexing

In the end, the goal is to drive more traffic back to your website. Optimizing
your video content for search engines means the pages show in results with
a video (which gets clicked more often) and in video-specific search results as
well. When a searcher clicks the video still in results, they will be taken to
*your* website, which is a major advantage over YouTube SEO.

We recommend keeping a close eye on your traffic during the SEO indexing
process - see if you notice an uptick after your video content is indexed. From
that baseline data, you can experiment with changes to improve incoming
traffic.

First, make sure you have related content on your page so that search engines
have context surrounding the video. If you notice an increase in traffic from
specific searches, add more content for those visitors.

Second, the thing that drives folks to click on the video is the thumbnail!
Choose a thumbnail that looks attractive for the topic at hand.

{% post_image hashed_id: '53a36ccf4c2bfe6215f13d2d5523d5d919176224', class: 'center' %}





## Video SEO FAQ

Video SEO is tough, but valuable. Customers have asked us lots of questions
about using our Video SEO tool for their video. We'll attempt to compile them
here.


### I thought only YouTube got indexed on Google search results? Should I have my video on both platforms?

Google has continued to support an open market, indexing videos that follow
their SEO guidelines, regardless of where they are hosted.

That being said, you don't really want to have your video on YouTube *and* use
Wistia Video SEO. Because YouTube videos are indexed by default, your content
will compete with itself in the rankings if you use both.

If the most important metric for your video is *views*, YouTube is a great
place for them. If your goal is to encourage a *conversion event*, like a
sign-up, subscription, or a share, then you want to drive viewers to your site
to watch your video. That is where Video SEO can be a valuable tool.

#

### Can I use playlist embeds?

At this time, we don't provide search engine optimized embed codes for the playlist player types.
We made that decision because in
our tests it seemed required for the Google bots to have direct access to the
video on the page, and immediately accessible to the visitor, in order to reap
the benefits of video on page rankings.


### It's been several days, when can I expect to see my video ranked in SERPs?

It can take up to 2 weeks for Google to index new content.

Because Google can be a bit of a black box, it's not
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
  appearing "successful", but your content never appears in search results.
  Double-check that any "disallow" blocks in your robots.txt file do not point
  to content you *want* indexed.
* **Dynamically loading content** using javascript, or light-boxes (like Wistia
  popovers), etc. does not currently work. Google wants your content to be on
  the page when a visitor loads it up (no additional clicks or actions required).
* **Putting video farther down the page** can have a negative and even negating
  effect on the content. Where possible, make sure your videos are embedded at
  a good viewing size (at least 600px wide) and near the top of the page.

### Can I use Wistia embeds to build links for SEO?

The *Social Bar* includes an *embed* button, which allows viewers to embed your
video in other places. Wistia includes a
[customize option]({{ '/customizing-your-video' | post_url }}) for adding links
that point back to the original site into the embed code your viewers can access.

So if one of your viewers re-embeds the video, new viewers can track down the
original source of the content, which Google and search engines also value.
Phil Nottingham from [Distilled](http://distilled.net), who is a real SEO
expert (we just play one on video), [posted at length about using this for your
content](http://www.distilled.net/blog/video/using-wistias-customisable-embed-settings-to-build-links-with-your-video-content/).
Building links back to your original content can be hugely powerful for
building your audience.

For more information on video backlinks,
[see the Customization docs]({{'/customizing-your-video#using_video_backlinks' | post_url}}).

### Do I still need to create an sitemap, or submit something to Google Webmaster Tools?

Wistia tools take care of that process automatically for you.  We create a
sitemap, add the videos you designate, and submit it through Google Webmaster
Tools, all automatically.
