---
title: Creating a RSS/Podcast from a Wistia Project
layout: post
category: Public Sharing
description: Have a podcast or video RSS that you want to share with the world? You can easily set this up with a few steps using Wistia Playlists.
post_intro: <p>Video Podcasting is one of the best ways to get consistently scheduled content out to your viewers.  iTunes has made finding and subscribing to video podcasts easy.  With Wistia's Project and Playlist functionality, you can create an RSS feed that will automatically update with the Video Title, Content, Thumbnail, and Description of each new video you add to the Project.</p><p>In this tutorial, we'll see how to use Wistia's Playlist functionality to an RSS feed and setup an iTunes podcast.</p>

<i><b>Note: Since the videos will be delivered via the iTunes native player, analytics will not accrue for Wistia videos that are watched via a podcast.</b></i>

footer: 'for_intermediates'
---

## Choose a Project to Use

{% post_image hashed_id: '16702e3f6c6fbb7b25d4d2eada98fbedd61f5b05', width: 320, class: 'float_right' %}

First we'll need to choose a Project to use as the Podcast.  Perhaps you'll want to create a Project in your Wistia account just for regularly scheduled programming.  In this case, I'll choose our "Wistia Video Snacks" Project, a set of irreverent videos we've cobbled together over the years.

----

## Grab the RSS feed from the Playlist Embed Code

{% post_image hashed_id: '549c5aad282c6ba69ee3d4d78b85ecceee9cb61d', class: 'center' %}

The second step is to find the RSS feed for your Playlist.  Inside of the Project you'd like to use as a podcast, select "</> Embed Playlist" from under the green "Project Actions" drop-down menu.

The "Embed Playlist" screen includes the embed code for your Playlist.  Copy all of this code and paste it into a text editor (like Text Edit, vi, etc).  At the beginning of the embed code madness, there is a snippet that starts "src='http://fast.wistia ...'".  This url is the portion you will need for creating a podcast/RSS feed. The gist of what it will look like appears below.

<pre><code class="language-markup">
http://fast.wistia.net/embed/playlists/c67fec401f?version=v1&theme=trim&videoOptions%5BcontrolsVisibleOnLoad%5D=true&videoOptions%5BautoPlay%5D=true&videoOptions%5BvideoWidth%5D=640&videoOptions%5BvideoHeight%5D=360&media_0_0%5BautoPlay%5D=false
</code></pre>

Now, we'll remove everything after the question mark '?':

<pre><code class="language-markup">http://fast.wistia.net/embed/playlists/c67fec401f</code></pre>

Now, we need to make two final changes, changing the subdomain and add the '.rss' extension:

<pre><code class="language-markup">http://get-embed.wistia.com/embed/playlists/c67fec401f.rss</code></pre>

Now you're all set to move to the next step.

----

## Create the RSS feed

Now that you have your code snippet (that starts "get-embed.wistia.com/...") paste that into the address bar of an empty browser window. Hit "enter", and now you have created an RSS feed for your Project.  Copy the URL in the address bar for the next step. 

If you were looking to create an RSS feed, you are now all set! If you are looking to make an iTunes Podcast, please read on...

----

## "Burn" the Feed with Feedburner

The .rss feed for your Project is now what you will be using to publish to iTunes.  First, a quick detour on Feedburner, which we will use to create descriptive elements for our Podcast.

{% post_image hashed_id: '5736f36f315c6642af46065b9080eeb535eaed6b', class: 'center' %}

Paste the .rss feed in to the Feedburner field entry and click "Next".  You will be able to give the feed a title and a custom feed address.  Once your feed is entered in Feedburner, you will end up in the "Feed Management" area.  Of the five tabs at the top, you want to select the "Optimize" tab.  Next, select the "SmartCast" feature. 

{% post_image hashed_id: 'f8978edbbcd4b61fafbc296308966d2b1223f61b', class: 'center' %}

{% post_image hashed_id: 'd275344957cc2e020c85e7f2c5a793f310c96182', width: 320, class: 'float_right' %}

SmartCast is Feedburner's functionality that separates each video into it's neat podcast package and provides the descriptive data that lets your subscribers know they are signing up for good stuff! Filling out the fields means iTunes will be able to pull that data for your podcast.  Add an logo image for your podcast, a descriptive summary of your content, and even a copyright message.  When everything looks the way you'd like, activate the SmartCast.

----

## Publishing your Podcast to the iTunes Store

Now we need to submit the Podcast to the iTunes Podcast Directory.

{% post_image hashed_id: '752a76561e58fc3279b9a3448b0b427a9c72ffde', width: 320, class: 'float_right' %}

In the Feedburner feed management screen, click "Edit Feed Details" under the Title of the Feed.  Copy down the URL of the Feedburner "Feed Address" (and not "Original Address").  You will need this to submit in iTunes.

{% post_image hashed_id: 'e7c8bd75d7590f472616914ae53a8790d9dd8b66', width: 320, class: 'float_right' %}

Now, open up your iTunes software.  From the iTunes Store home, select "Podcasts" on the top horizontal navigation bar.  In the right hand side "Quick Links" section, select "Submit a Podcast".  Paste the "Feed Address" from Feedburner into the box and click "Continue".  This will alert iTunes to your Podcast feed, which then needs to be approved by the iTunes Store gods.

{% post_image hashed_id: '7ba0919caa8fe8c4b5251ed10d1db93bd9d33224', class: 'center' %}

If you have submitted your Podcast correctly, you should receive an email from the iTunes team notifying you that your Podcast is in review.  This process can take some time.

{% post_image hashed_id: 'e48dd2c53e10e370f0f717823ddfaa212881213f', class: 'center' %}

Once you have received an approval email, your feed should appear in the iTunes store and in search results shortly after (ranges from a few hours to a day or two).  Once the URL from your email opens properly, check to make sure your settings are reflected correctly, and then you can start promoting your Podcast! Huzzah!

{% post_image hashed_id: 'be7a408327522a3388cb19c153d9a99b3aea5be1', class: 'center' %}

## Step 6. Updating With New Content

Filmed a new episode of your smash hit podcast?  Great!  Updating your podcast with Wistia is easy.  Simply [upload the new video file]({{ '/upload-video' | post_url }}) to the Project, adjust the [title]({{ '/media#update_video_title' | post_url }}) and [thumbnail]({{ '/media#change_the_thumbnail' | post_url }}) to one of your choosing, and even add a description in a [descriptive sidebar element]({{ '/media#video_description' | post_url }}), to tell your viewers whats coming in this week's podcast.

