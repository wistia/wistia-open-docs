---
title: Video SEO
layout: post
category: Public Sharing
description: Video SEO is a powerful tool for your business, and here at Wistia we've got it fully covered. Learn the steps to get that set up in your account here.
post_intro: <p>Video SEO is the act of proactively submitting your content using what's called a "video sitemap", and also by providing the on-page markup recommended by Google. As a part of your marketing arsenal, following the proper metadata and markup conventions improves your video asset's presence on search engines.</p>
temper: true
---

## What is Video SEO?

Confused on what Video SEO is? Not to worry, we'll get you started right. Watch
this introduction from Ezra, Director of the Wistia Marketing team.

{% wistia_embed hashed_id: 2u20d12eg4 %}

----


## Getting Set Up

{% wistia_embed hashed_id: 38bcf1939d %}

Wistia makes it easy to keep up on markup practices and sitemap conventions, so
you can focus on the important stuff: *create great content*. Wistia can
create, host, and submit your video sitemap. Wistia also helps you update it
for new content. After some setup work, you won't have to touch it again - *set
it and forget it*.

Here's the rundown on what we need to get done (in order):

  1. Add *Sitemap* line from account to `robots.txt` file, then verify it.
  2. Embed the video using the `video SEO` embed code type.
  3. Create an `video sitemap entry` for the embedded video.
  4. Can take up to 2 weeks for Google to index new content.

The first thing you need to do is authorize Wistia to host your video sitemap
and reference pages on your site. This is done through the robots.txt file on
your web server.

## Robots.txt File Setup

When search engines crawl your web content they refer to a file called
`robots.txt` in the root of your website. This file tells search engines what
to index on your site and also where your video sitemap is located.

The robots.txt file also informs search engines about sitemaps that exist for
your website. To see your robots.txt file, open your browser and head to
`yourdomainname.com/robots.txt` (substituting your domain name in).

A common SEO problem is accidentally blocking search engines from crawling your
website with robots.txt. Make sure you allow search engines to crawl and find
your content.

* Make sure there is a line that looks like: `User-Agent: *`
* If you see a `Disallow:` line in your robots.txt file, make sure
it doesn't point to pages where your videos are embedded.

### Creating a robots.txt file

Creating a robots.txt file is different depending on the CMS or website
management system you are using. In some cases, a robots.txt file might have
been created for you, and in some CMS platforms, it is not editable.

If you are self-hosting your site, you can create a robots.txt file, and add it
to your site's root directory. To create a new robots.txt file, open a text
editor (like TextEdit, Vim, or Word), and add the line:

    User-Agent: *

Add the Video Sitemap link as outlined below, then save the file as
`robots.txt`.


### Adding the Video Sitemap URL

You will be adding one line to your robots.txt file that notifies Google your
video video sitemap is hosted by Wistia. To find the line you'll be adding for
your account, open up the *Video SEO* area of your account, which can be found
under the *Account* menu.

{% post_image hashed_id: '9066ac8fec778db22277a2012c0c0be4439d1c2d', class: 'center' %}

The three steps to getting your sitemap set up are also outlined on the Video
SEO page in your account.

{% post_image hashed_id: 'f4b03dbe2604ef4825da70899fec49d7b8bbf27f', class: 'center' %}

Once you have added the line to your robots.txt and typed the URL, click the
<span class="faux_button">VERIFY YOUR ROBOTS.TXT</span> button.
This will retrieve your specified robots.txt and verify that the information is
viewable by Google.

{{ "Robots.txt do need to follow a certain format! Make sure yours is correct by [reviewing the guidelines](http://tool.motoricerca.info/robots-checker.phtml)." | note }}

Next, we'll embed the video using the SEO embed code type.

## Embed Video Using the SEO Embed Type

The Video SEO embed code type has been optimized for Video SEO, including best
practices like Open Graph tags and Schema.org markup. Even if you don't setup
a Video Sitemap, you will still be able to access the SEO embed type.

To get one of these for your video, open the video you'd like to embed, and
select *&lt;/&gt; Embed & Share* from the <span class="action_menu">Video
Actions</span> menu.

For more information on embedding, review the
[embedding a video]({{ '/embedding' | post_url }}) guide.

## Making a video sitemap entry

{% post_image hashed_id: 'c65b0df80e77faa460ec36a24aaee1061ee0879e', class: 'center' %}

Once you have verified the entry in your robots.txt file, you will be able to
add entries to your video sitemap.  Once a video sitemap entry is made, it will
be automatically picked up by Google and your content will be indexed
according to Google's indexing queue.

Making a new video sitemap entry is the fun part of the process! You get to
talk all about your content and why it is valuable.

After you have embedded a video on your website, go to your video's media page
(i.e. the page in Wistia where you can view the video, which has a URL like
`<youraccount>.wistia.com/medias/12345`).  Select *Add to SEO Sitemap* from the
<span class="action_menu">Video Actions</span> menu.

{{ "Before adding a Video Sitemap entry, make sure you have embedded your video using the SEO embed code type." | note }}

{% post_image hashed_id: '784a5ef4c90f5e393e9b55bdde8b9c6abbebbe00', class: 'center' %}

This will then bring up a dialog box where you can enter the relevant
information about your video (like tags, description).

Enter your video's information, and click
<span class="faux_button">Add to video sitemap</span>.  Your sitemap will then
be automatically updated and the new changes that should be indexed.

### Making Better Sitemap Entries

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


## Managing your video sitemap entries

{% post_image hashed_id: '9066ac8fec778db22277a2012c0c0be4439d1c2d', class: 'center' %}

Video sitemap entries can be managed from the video SEO dashboard within your
Wistia account. Select *Video SEO* from under the *Account* menu.

This will take you to the video SEO dashboard where you can:

*  See all videos currently in your sitemap
*  Edit the sitemap entries by clicking the "Edit" button on any entry
*  Remove any entries that may no longer be valid using the "Remove" button

{% post_image hashed_id: '6daa77704da771e666aebe6c8d7a0372ffab491b', class: 'center' %}

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
Choose a thumbnail that looks attractive for the topic at hand. If you update
the thumbnail of your video, you will need to re-embed it, because the SEO
embed code contains a direct URL to that image. Google will automatically
update their index every few weeks.

{% post_image hashed_id: '53a36ccf4c2bfe6215f13d2d5523d5d919176224', class: 'center' %}


## Adding Additional Domains

{% post_image hashed_id: 'ca4b768ca28ebcdb98c56aca16357510954e8cac', width: 320, class: 'float_right' %}

Adding more than one domain to your Video SEO in Wistia is easy to do.  After
adding your first domain, a button will appear on the right bar in your Video
SEO account section for adding additional domains (see the image at right).

You will be prompted to walk through the same steps as adding your initial domain.

## Host Your Own Video Sitemap

The functionality we have designed is meant to *reduce* headaches around using
Video SEO. There are some situations, however, when you might want use Wistia
to build your Video Sitemap file, but self-host it somewhere else. This section
will cover the steps to hosting and submitting a Video Sitemap file yourself.

**Build your Video sitemap**

In order for these steps to be useful, you must first go through the [normal
Video SEO setup steps]('#getting_set_up'). You'll need to confirm your
[Robots.txt file]('#robotstxt_file_setup'). Once that is complete, you can use 
the “Add to SEO Sitemap” function under the Media Actions menu to create new
entries for your videos.

**Export your Video sitemap**

The next step is to export the Video sitemap Wistia built based on your metadata
entries. To save the contents of your Video Sitemap file, navigate to the Sitemap
URL (i.e. http://app.wistia.com/sitemaps/26547.xml), and then save that webpage.

To track down the URL of the Sitemap, look under the help bubble (question mark
icon) on the Video SEO tool page. See the screenshot below.

{% post_image hashed_id: '0ca8fda6bfa40c2d95f99083f990225542b0a5e2', class: 'center' %}

**Upload Video sitemap to your own host**

Upload to your web host, the same way you might for a new web page or web page 
image. Doesn’t need to go anywhere in particular, just needs to be accessible
by Google.

**Submit Sitemap URL to Google Webmaster Tools**
Follow [this guide](https://support.google.com/webmasters/answer/183669?hl=en)
to make sure you submit your new Video Sitemap correctly.

When you add a new video to your sitemap, you will need to re-export, replace 
the version you have on your end, and re-submit to Google. Annoying, but if our
hosting paradigm doesn't work for some reason, this might be a good solution!

## Video SEO FAQ

Video SEO is tough, but valuable. Customers have lots of questions around how
to use our Video SEO tool for their business video. We'll attempt to compile
them here.

### Do I still need to create an sitemap, or submit something to Google Webmaster Tools?

Wistia tools take care of that process automatically for you.  We create a
sitemap, add the videos you designate, and submit it through Google Webmaster
Tools, all automatically.

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

### I can't update my robots.txt file. What should I do?

We don't create a sitemap for your account unless we can verify the robots.txt
file is accurate. That being said, the SEO embed code type can still provide
plenty of value. Because it is optimized to use Open Graph tags and Schema.org
markup, we've seen videos get indexed without the need for a sitemap. While the
sitemap is still considered a *best practice*, it is no longer a must-have for
Video SEO.

### Is hosting my video sitemap with Wistia ok? Will Google accept it?

**Yes.** Google has made cross-submission support via a robots.txt file an
accepted and efficient part of the SEO workflow.
See [this article from the Google Webmaster Central Blog](http://googlewebmastercentral.blogspot.com/2008/02/cross-submissions-via-robotstxt-on.html)
for more.

### It's been several days, when can I expect to see my video ranked in SERPs?

This is a good question. Because Google can be a bit of a black box, it's not
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

For more on building SEO links using for your content,
[see the Customization docs]({{'/customizing-your-video#social_bar' | post_url}}).

### Can I hear Ben talking about SEO?

**Yes!** Our Video SEO expert, Ben, got up-close with the camera to talk about
the business benefits of using Video SEO properly:

{% wistia_embed hashed_id: b96bdea4c2 %}
