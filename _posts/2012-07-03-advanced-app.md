---
title: Advanced In-App Wistia Video Functionality
layout: post
category: For Developers
description: Create sweet advanced functions on top of your videos within the Wistia app with these tutorials.
post_intro: <p>If you want to customize the experience your viewers have when watching videos inside your Wistia account, start here.</p>
footer: 'for_developers'
---

## Seek to a specific time on page load

Want to show a client a particular clip in a video? Just add a "start" parameter to the query string and specify the position to seek to (in seconds).

For example, if you have a video located at http://myaccount.wistia.com/medias/123 and you want it to start playing at the 1 minute and 30 second mark, you'd link to the URL:
	
<span class="code">http://myaccount.wistia.com/medias/123?start=90</span>

**Note:** This only works for videos within your Wistia account. To seek into embedded videos, use the JavaScript player API.

---

## Building a Rating System for Your Video in Wistia

Using the [Sidebar Elements]({{ site.url }}/{{ page.lang }}/http://wistia.com/doc/managing_projects_media_and_contacts#how_to_add_a_description_to_your_video.html) feature in Wistia and a survey tool like [Polldaddy]({{ site.url }}/{{ page.lang }}/http://polldaddy.com.html), you can build a star rating system for your library of videos in Wistia.

### Step 1: Choose Your Video

<div class="post_image float_right">
<img src="/images/pic_1_2.png" alt="choose your video" />
</div>

Let's get started.  First, we'll select a video to get the ratings for.  Let's say we've got a new Wistia video snack and we'd like to have everyone on the team rate it before we send it out.  I just happen to have one handy!

---

### Step 2: Load Up Your Poll Tool

<div class="post_image float_right">
<img src="/images/pic_2_2.png" alt="choose poll tool" />
</div>

There are several great tools you can use for this type of simple ratings system, like [Polldaddy](http://polldaddy.com "Polldaddy") or [Wufoo](http://wufoo.com/ "Wufoo").  Once you've logged in, open up "Ratings" and create a new ratings widget.  Here, you can control the name of the report and style the ratings system.
Now that you have created your rating, grab the javascript embed code.

<div class="post_image float_right">
<img src="/images/pic_3_2.png" alt="choose poll tool" />
</div>

---

### Step 3: Create the Sidebar Element

<div class="post_image float_right">
<img src="/images/pic_5_2.png" alt="choose poll tool" />
</div>

Back in your Wistia account, create a new description Sidebar Element using the "Media Actions" drop-down menu.  Once created, click the "Advanced" button, and then open the HTML editor using the "Source" button.  Paste the javascript embed code from the rating tool into the Sidebar Element HTML editor and click the "save" button.

<div class="post_image float_right">
<img src="/images/pic_7_2.png" alt="choose poll tool" />
</div>

**Congrats!** You now have a ratings system built into your Wistia account.  To see the scores and generate a report, head over to Polldaddy (or your survey tool of choice).

----


