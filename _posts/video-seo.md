---
title: Video SEO
layout: post
category: Public Sharing
description: Video SEO is a powerful tool for your business, and here at Wistia we've got it fully covered. Learn the steps to get that set up in your account here.
post_intro: <p>Video SEO is the act of proactively submitting your content and providing on-page markup, through what’s called a “Video Sitemap", so that it’s easier for Google and other search engines to find it.</p><p>Once your video sitemap is submitted and you're using SEO style embeds your videos can:</p><ul><li>Appear inline in universal search results</li><li>Send people directly to your website when clicked on in search results</li><li>Boost overall placement for your page</li><li>Appear in video specific search results, like http://video.google.com</li></ul>
---

<div class="expert_tip video_seo">
  <h4><i class='icon-thumbs-up'></i> Expert Tips!</h4>
  <p>
    Our friend <strong>Casey Henry</strong>, web manager from 
    <a href='http://seomoz.org'>SEOmoz</a>, provided some awesome tips on Video
    SEO in the article below.
  </p>
</div>

## Video Walkthrough

{% wistia_embed hashed_id: 38bcf1939d, videoHeight: 371 %}

----

## Getting Set Up

The typical Video SEO workflow is: create the sitemap, add it to the 'root'
folder of your website, submit to Google through Webmaster Tools, and check
periodically to make sure it is still operating properly.  Each time you add a
new video, you'd need to re-create the sitemap and re-submit to Google. *Yuck*.

With Wistia, the work is reduced to what you do best: *create great content*.
Wistia helps you create, host, and submit your video sitemap. After some setup
work, you won't have to touch it again - *set it and forget it*.

Here's the rundown for what we need to get done (do in order):

  1. Add *Sitemap* line from account to `robots.txt` file, then verify it.
  2. Embed the video using the `video SEO` embed code type.
  3. Create an `SEO sitemap entry` for the embedded video.
  4. Be extra patient with Google.

The first thing you need to do is authorize Wistia to host your video sitemap
and reference pages on your site. This is done through the robots.txt file on
your web server.

## Robots.txt File Setup

<div class="expert_tip video_seo">
  <h4><i class='icon-thumbs-up'></i> Robots.txt</h4>
  <p>
    When search engines crawl your web content they first look for a file called
    `robots.txt` in the root of your website. This file tells search engines
    what to index on your site and also where your video sitemap is located.
  </p>
  <p>
    A common SEO problem is blocking search engines from crawling your website
    with robots.txt, make sure you allow search engines to crawl and find your
    content.
  </p>
</div>

A robots.txt file helps search engines know what content they should index. The
robots.txt file also has the ability to inform and authorize sitemaps for your
website.  To see your robots.txt file, open your browser and head to
`yourdomainname.com/robots.txt` (substituting your domain name in).

Updating your robots.txt file is different depending on the CMS or website
management system you are using. If you are self-hosting your site, you can
edit the robots.txt file in your site's root directory
(or create one, if one does not exist).

If you are using WordPress, they have several popular plug-ins for editing your
robots.txt file. Refer to our
[WordPress doc page]({{ '/wordpress#using_wistia_video_seo_with_wordpress' | post_url }}) 
for more info.

{% post_image hashed_id: 'cd5333ac993a15daeab379729834217492736b57', width: 320, class: 'float_right' %}

You will be adding one line to your robots.txt file that notifies Google your
video SEO sitemap is hosted by Wistia. To find the line you'll be adding for
your account, open up the Video SEO area of your account, which can be found
under the Account menu.

<div class="clear"></div>

{% post_image hashed_id: 'adc7dbb2d06e6ff59a4f99898c852f4785f806ac', width: 320, class: 'float_right' %}

Once you have added the line to your robots.txt and typed the URL, click the
<span class="faux_button">VERIFY YOUR ROBOTS.TXT</span> button.
This will retrieve your specified robots.txt and verify that the information is
viewable by Google.

The next step is on Google's end. Google will review the sitemap entries, and
check the content they point to (i.e. where you said the video was). It can
take up to a week to complete this step.

## Embed Video Using the SEO Embed Type

Even if you don't setup the video sitemap entry, you'll still be able to access
our SEO type embeds, which have lots of SEO benefit on their own by making use
of Schema.org meta tags (you'll see these manifest themselves in the SEO embed
as `meta itemprop` tags). These grab the content you've filled out for the
video title, decription, etc. and translate that into nice meta content for
spiders to crawl (it's not as icky as it sounds).

To get one of these for your video, open the video you'd like to embed, and 
select *&lt;/&gt; Embed* from the <span class="action_menu">Media Actions</span>
menu. For more information on embedding, review the 
[embedding a video]({{ '/embedding' | post_url }}) guide.

{{ "There are some SuperEmbed features that aren't compatible with SEO embeds, like the Email Capture feature" | note }}

## Making a video sitemap entry

{% post_image hashed_id: 'db21c33ccc521d51de35d2db7804823f1d7a2565', class: 'center' %}

Once you have verified the entry in your robots.txt file, you will be able to
add entries to your video sitemap.  Once a video sitemap entry is made, it will
be automatically picked up by Google and your content will be indexed
according to Google's indexing queue.

Making a new video sitemap entry is the fun part of the process! You get to
talk all about your content and why it is valuable.

After you have embedded a video on your website, go to your video's media page
(i.e. the page in Wistia where you can view the video, which has a URL like
`<youraccount>.wistia.com/medias/12345`).  Hover over the
<span class="action_menu">Media Actions</span> menu and select
*Add to SEO sitemap*.

{{ "The Video SEO functionality will only work with SEO embeds!" | note }}

This will then bring up a dialog box where you can enter the relevant
information about your video (like tags, description).

<div class="expert_tip video_seo">
  <h4><i class='icon-thumbs-up'></i> Making Sitemap Entries</h4>
  <p>
    <strong>Title:</strong> 
    I’ve found that having the title of your video match the meta title of your
    page will help a video snippet appear along with your page in search engine
    result pages.
  </p>
  <p>
    <strong>Description:</strong>
    Be as descriptive as possible but make sure you are not going overboard
    with keywords you want your video to rank for. Make the description useful
    for viewers, not for bots.
  </p>
  <p>
    <strong>Tags:</strong>
    I’ve found that having 3 to 4 word descriptive tags works best for our
    videos. Don’t get too wordy with your tags and keep it simple.
  </p>
</div>

Enter the required information and click
<span class="faux_button">Add to video sitemap</span>.  Your sitemap will then
be automatically updated and the new changes that should be indexed.

{% post_image hashed_id: '2223a3875327d2de849a0ca8cb27840a09dd1ff1', class: 'center' %}

## Managing your video sitemap entries

{% post_image hashed_id: 'cd5333ac993a15daeab379729834217492736b57', width: 320, class: 'float_right' %}

SEO Sitemap entries can be managed from the video SEO dashboard within your
Wistia account.

This will take you to the video SEO dashboard where you can:

*  See all videos currently in your sitemap
*  Edit the sitemap entries by clicking the "Edit" button on any entry
*  Remove any entries that may no longer be valid using the "Remove" button

{% post_image hashed_id: '3f9aac20bc6b0ad0cfc231ef2b29e13b5d0cf932', class: 'center' %}

## Search Results

In the end, the goal is to get your content to rank higher in search engines
like Google.  Telling search engines about your content through Wistia's Video
SEO features allows your pages to:

* Rank higher in basic search results based on the presence and relevance of
  your video content.
* When someone clicks on your video in a search engine results page, they will
  be taken directly to your website.
* Show up as a featured video in search engine results pages.
* Display in video specific search results.

<div class="expert_tip video_seo">
  <h4><i class='icon-thumbs-up'></i> Getting to the Top!</h4>
  <p>
    Make sure you have related content on your page so that search engines
    have context surrounding the video. Once your snippet is shown in search
    results, you should see a nice increase in click-through-rates!
  </p>
</div>

{% post_image hashed_id: 'ecd66cfa1f1a9b9fe97ee657100d374e442b35ee', class: 'center' %}


{% post_image hashed_id: '2760aa5431fc4c833c16cf8fd4f2aac1901becb1', class: 'center' %}

## Adding Additional Domains

{% post_image hashed_id: 'ca4b768ca28ebcdb98c56aca16357510954e8cac', width: 320, class: 'float_right' %}

Adding more than one domain to your Video SEO in Wistia is easy to do.  After
adding your first domain, a button will appear on the right bar in your Video
SEO account section for adding additional domains (see the image at right).

You will be prompted to walk through the same steps as adding your initial domain.

## Video SEO FAQ ##

Video SEO is tough, but valuable. Customers have lots of questions around how
to use our Video SEO tool for their business video. We'll attempt to compile
them here.

<span class="seo_faq">
  Do I still need to create an sitemap, or submit something to Google Webmaster
  Tools?
</span>

**Nope!** Wistia tools take care of that process automatically for you.
We create a sitemap, add the videos you designate, and submit it through
Google Webmaster Tools, all automatically.

<span class="seo_faq">
  Is hosting my video sitemap with Wistia ok? Will Google accept it?
</span>

**Yes.** Google has made cross-submission support via a robots.txt file an
accepted and efficient part of the SEO workflow.
See [this article from the Google Webmaster Central Blog](http://googlewebmastercentral.blogspot.com/2008/02/cross-submissions-via-robotstxt-on.html)
for more.

<span class="seo_faq">It's been several days, when can I expect to see my video
ranked in SERPs?</span>

This is a good question. Because Google can be a bit of a black box, it's not
possible to determine exactly when new content will be indexed for video
results. In our experience, a waiting period of `10 - 15 days` is not uncommon.

If you have been waiting for a considerable amount of time, or are nervous
something has gone wrong, don't hesitate to email our support team. We'll take
a look at the Webmaster Tools entry we create and maintain for you, to see if
Google has reported any errors in indexing.

<span class="seo_faq">Can I hear Ben talking about SEO?</span>

**Yes!** Our Video SEO expert, Ben, got up-close with the camera to talk about
how Video SEO can create benefits for your business:

{% wistia_embed hashed_id: b96bdea4c2, videoHeight: 282 %}
