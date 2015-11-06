---
title: Embedded Video Analytics
layout: post
category: Stats
description: Wistia's analytics are designed to help you understand how your audience engages with your content. Dive in to everything you could dream of knowing about Wistia's all time favorite subject, Statistics.
post_intro: <p>Wistia stats are the best way to get a complete view of who is watching your video, and how they are watching and interacting with it.</p><p>This guide will show you how to approach the two parts of Wistia analytics, <b>Stats Trends</b> and the <b>View Stream</b>.</p>
footer: 'for_intermediates'
---

{{ "If someone is logged into Wistia and is viewing the videos, their views will be tracked in your Private User Sessions. You can read more about that more in our [Private Analytics Page](http://wistia.com/doc/private-sharing)." | note }}

## Account-Level Trends View

Wistia provides detailed insights into the performance of a single video, an individual Project
(like a collection of your tutorial or marketing videos), or the entire
Account (perhaps all the videos across your website).

{% post_image hashed_id: 'ab151af1f0acd1d39e5e23af4fa31b98911245fc', class: 'center' %}

Starting from the **[Projects](https://my.wistia.com/projects)** page of your Account, you can access your high level stats by
selecting **[Trends](https://my.wistia.com/stats/account)** from the Stats drop-down menu.

This will bring up the Trends overview of your account, which is a dashboard
for public stats performance. 📈

### Trends Graph

{% post_image hashed_id: '8c1a38b2ca01d74893d4cefa2b207dacdee9ddbe', class: 'center' %}

There are a few ways to explore your Trends Graph. By default you'll see the
stats for all of your videos for all time (as long as you've had your Wistia account).
They'll be displayed as "Daily" stats initially, but you can always change your
view. More on that [in a minute](#sorting).

We differentiate between video stats and project stats based on color&mdash;the video
stats chart will show data in green. Projects stats are blue.

You can hover over the different colored sections of the graph to see stats for
an individual video (or project), or check out the stats for all videos (or projects) by hovering over the
white space.

Select an individual project from the graph to see stats exclusive
to those videos. Or select an individual video to hone in on those spikes.

Underneath the graph, you can use the grey tabs to select a specific date range for analysis. Drag
either tab to change the range that will be displayed in the graph and the chart below.

Keep in mind, **only play count will change** within a specific date range.
Engagement and play rate are calculated as all time stats.

### Sorting

{% post_image hashed_id: '4e39e75fa56a0d7ba9f58798f199a4c1e0ada9eb', width: 500, class: 'float_left' %}

Sorting data is crucial to understanding it. You've got a lot of data in your Wistia account, so it's helpful to use sorting to make sense of all those sweet, sweet analytics.

With sorting you can prioritize analytics data in the ways most useful to you. Above the graph you can choose Projects or Videos, and select date ranges (Months, Weeks, Days).

{% post_image hashed_id: '2f8b6bcdd778b9844f89fe71123b03f4cfb2169e', class: 'center' %}

Drill down further below the graph to sort by attributes like amount of embedded videos, date
created, or number of plays. The sorting bar is slightly different at the
account and project levels, so heads up!

### Customizing the View

{% post_image hashed_id: 'cca81cb21b3f5bdf95fedc8e295f178af545febb', class: 'center' %}

By default, the Trends page will show you all-time stats for all Projects in your account.This allows you to see all the views by time as you move your cursor around on
the map. The details for the views across the account will appear below the trends table. These options can be clicked, to help you sort results. Want to see the projects with the lowest number of embeds? Double click that *Videos Embedded* option.

{% post_image hashed_id: '5f836a68a53870b74aeff36b7970de9a588747c8', class: 'center' %}

To see the data for a specific Project compared to the others, use the selection
tool functionality.  Clicking on one specific Project in either the list view
or in the graph will "lock" it, so you can view the analytics performance for
the Project more specifically.

### Projects/Media List

{% post_image hashed_id: '43e79ea9a8b6a70992787eb7fe12d5935129ef17', class: 'center' %}

Underneath the Trends graph is the list of Projects or Media that is
represented in the graph.  To drill down to the Project or Media level,
click the title of the Project/Media.

## Project-Level Trends

{% post_image hashed_id: 'feea6eccd1d84260b7105dbb330c8a193fd8c40f', class: 'center' %}

The Trends graph for projects is very similar to the aggregate Account-level
graph. Moving your cursor along the graph will show information on the
corresponding date. Selecting a single video will isolate it's data from the
rest of the videos in the project. The yellow tabs under the graph can be moved
to adjust the date range for data analysis.


Clicking the title of an individual media will move you to the Media-level Trends.

## Media-Level Trends

{% post_image hashed_id: 'ac566c14c044b9e5a0bb501216c81c89c5486a06', class: 'center' %}

The media level provides detailed insight into how the video was viewed, both
at an aggregate level through an engagement graph, and individually through
heatmaps. It's also a great place to track viewer actions from [Annotations]({{ '/customizing-your-video#annotation_link' | post_url }}),
[Calls to Action]({{ '/customizing-your-video#call_to_action' | post_url }}), and [Turnstile]({{ 'customizing-your-video#turnstile' | post_url }}).

To access the media-level trends page, first open up the Media Page for your
video (where you can watch the video in your account).  Under the *Media Actions*
drop-down menu, select **Stats**.

This will open the page with viewing stats specifically for that media.  You
can see the [overall engagement graph]({{ '/audience-engagement-graph' | post_url }}),
[summary stats](#summary_bar), and [individual viewer heatmaps](#heatmaps).

{% post_image hashed_id: '23c6296528bb296de6e2ed9b1eee73e2fc8c4425', class: 'center' %}

Embedding your video on your public webpage?  Wistia Media Stats will tell you
how it is performing (and [Wistia trends](#accountlevel_trends_view) will show
you how it is performing compared to your other video initiatives).

### Engagement Graph

{% post_image hashed_id: '650eecd5f9571392744d720e7cfaf539eb7b80cd', class: 'center' %}

The blue section of the engagement graph shows the engagement of viewers who
clicked play on the video.  The orange section on top shows the number of times
that section was re-watched. Move your cursor over the graph (from left to right)
to see specific information for a time or frame in the video, and click the graph to play
the video from that point.


More on [Audience Engagement Graphs]({{ '/audience-engagement-graph' | post_url }}).

### Summary Bar

The summary bar next to the engagement graph displays overall data for the
viewers of the video.  This is extremely useful high-level data for comparison,
such as % of viewers who clicked play, % viewed, and total time watched. We also house
information on Actions taken by your viewers--from entering an email into Turnstile to
clicking an Annotation Link. Click **Show Details** for a deeper explation of this
information.

{% wistia_embed hashed_id: rgpz87ssi3 %}

Under the engagement graph area and summary bar is a list of the individual
viewers who have watched your video, along with their [**heatmaps**]({{ '/embedded-video-analytics/#heatmaps' | post_url }}).

### Actions

Actions are an easy way to track viewer engagement from Calls to Action, Annotations, and
Turnstile email gate. Hovering over a waypoint below the engagement graph will show what
percentage of viewers took action during your videos--like entering their email. Clicking
the waypoint reveals the heatmaps of those viewers.

{% post_image hashed_id: 'db8a3dfcc3ef0f81d7d428e7b3e7396f29ebfed6', class: 'center' %}

{{ "Have more than one Action on your timeline, and can't remember which one comes first, second, or even seventh? No worries! Hovering over the waypoint on a heatmap will show you the exact Action a viewer took. Just a heads up though, waypoints will only appear on the heatmaps within the Media Stats page." | tip }}

## Heatmaps

{% post_image hashed_id: '25d51a4d1224d9358ee413a625f901f27842c85f', class: 'center' %}

A video heatmap is a graphical representation of a single viewing session of
your video. Each viewer of a Wistia-hosted video is assigned a *heatmap*, which
shows the specific interaction they had with the video. Heatmaps contain viewer
information, contextual information (when the video was watched and where) and a
color-coded timeline which represents how the viewer interacted with the video.

*  White means that portion of the video was not watched.
*  green tells you that the viewer watched that part exactly once.  
*  Yellow, orange, light red, and dark red show you that the viewer watched that part of the video two, three, four, or five times respectively.  

Next to each heatmap is shown the total percentage of the video that viewer
watched (parts watched multiple times are only counted once).

Heatmaps are powerful for understanding how certain users watch your video.  
Is there a specific topic that is interesting to viewers from your email campaign?  
Do international viewers tune out quicker than local ones?  When are the most
engaged viewers watching your videos?  This information and more can be derived
from heatmaps.

{% post_image hashed_id: '8084860b23f6bf980f867d5b6002d2d3347eb094', class: 'center' %}

The time to the left of the heatmap displays when the viewer watched the video.  
Next to the time is the information Wistia gathers automatically, like their
location.  If this viewer has watched other videos in your account, the number
will show up in a bubble next to their name.  Scrolling over the name will
reveal the IP address of the viewer, along with where they viewed the video
(on your blog, on your homepage, etc.).

{% post_image hashed_id: '073bef93c3b8b595d1a48f428fa0c74703085926', class: 'center' %}

Clicking on the name link on the heatmap will take you to the Viewer page for
that viewer.  The Viewer page is part of the **Viewer Stream**.

## Viewer Stream

The Viewer Stream is the other way of viewing Wistia analytics for your Account.  
It begins a list of the latest viewers of any videos in the account, but can be
drilled down into the individual viewer.

{% post_image hashed_id: '6e97ff993bd90414c8fb88430c5e1b19f9cd731f', class: 'center' %}

To open the Viewer Stream page, select **Viewer Stream** from under the Stats drop-down
menu.


The Viewer Stream is a snapshot of the viewers of your publicly embedded videos.  
These will appear as a list of viewers, with their most recent heatmaps.

{% post_image hashed_id: '646286b132082f1c347d85423229a3b4101e0b55', class: 'center' %}

Use the sorting bar to specify which group of viewers you'd like to see, or use
the search box to find a specific viewer.  The number bubbles next to each name
designate how many videos the viewer has watched.  Clicking on a viewer will
take you to the Viewer Page.

### Viewer Page

{% post_image hashed_id: '31ca09fd5a6da334c0a1e03c269aec1b14c2677b', class: 'center' %}

From the Viewer Page, you can track activity for a specific viewer.  Want to
'tag' this viewer for future tracking?  Edit their name as you would a Wistia
media title, by clicking the 'edit' tag and then typing changes.


The activity bar underneath the viewer name tracks the number of videos the
viewer has watched, the amount of times they have loaded a page with a video
on it (to derive video play conversion rate), and the total amount of video
they have watched.  Which videos do your new customers watch before signing up?  
Which videos do your customers come back to watch again and again?  The viewer
page gives you a clear view into the activity of your video viewers.

### Tagging With Emails

Adding a name to a viewer makes it easy to track their viewing sessions in your
analytics.  You can also tag viewers with email address automatically, using
[email marketing embeds]({{ '/email-marketing' | post_url }}).

Once your viewer is tagged with an email, you can sort to view them in the Viewer
Stream by clicking the "With Emails" option on the sorting bar.

## Reset Stats

If you're building a site with video, or just testing things out, you've
probably loaded (and played) your videos a few (dozen) times. This means your
stats might be a bit skewed. Nobody likes to start with bogus stats, so
reset those bad boys before your launch.

At the media stats page, scroll down to the bottom. There you'll see an options to
**Reset Stats**. Go for it! Just confirm that you absolutely, definitely want to reset
them (there's <a href="//fast.wistia.net/embed/iframe/kmoo4abbal?popover=true" class="wistia-popover[height=450,playerColor=7b796a,width=800]">no going back</a><script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script>), and you're good to go.

{% post_image hashed_id: '3331f6350bbb631db8a4503db9bfa2d9237aed1c', class: 'float_right', width: 500 %}

## Exporting Analytics Data

While we work hard on making our analytics interface powerful yet easy-to-use,
it can sometimes be necessary to export your stats data for further analysis.

Read on if you'd like to learn how that is done.

First, head to the stats page for one of your videos (it has a link like
`http://<account>.wistia.com/stats/medias/<id>`).

On the right hand side of the bar that separates the aggregate statistics from
the video heatmaps, a link is shown which says `Export as CSV`.

{% post_image hashed_id: '803732dcd4895f85f30062bf8589e5cea2ba0a73', class: 'float_right', width: 500 %}

Click on the link and a dialog box will appear. Get your filters right, and
then select the <span class="faux_button">EXPORT</span> button.

The CSV file with stats and emails and heatmap data can be spliced and manipulated
in Excel, or even imported into Marketing Automation software like [MailChimp](http://mailchimp.com).

In the CSV file, each line represents one view of the video.  The data provided
includes:

*  Date
*  IP Address
*  Country
*  Region (State)
*  City
*  Latitude
*  Longitude
*  Organization
*  Email (if passed through)
*  Percent of Video Viewed
*  URL where the view happened

There are also a variety of options of how to filter the data.  These include:

*  All events or only those where the play button was pressed
*  Number of events to return and offset in the total set
*  Date range for the events to retrieve

**If something seems fishy, you can always check out our <a href="http://status.wistia.com/">Status Page</a> for more information about what might be going on. Still no luck? [Contact us](http://wistia.com/support/contact). We'd be more than happy to help you out!**

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script>
<script>
  wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
    iframe.wistiaApi.bind("end", function() {
      wistiaJQuery.fancybox.close();
    });
  });
</script>
