---
title: Embedded Video Analytics
layout: post
category: Stats
description: Wistia's analytics are designed to help you understand how your audience engages with your content. Dive in to everything you could dream of knowing about Wistia's all time favorite subject, Statistics.
post_intro: <p>Wistia stats are the best way to get a complete view of who is watching your video and how they are watching and interacting with it.</p><p>This guide will show you how to approach all of the parts to Wistia analytics, <b>Trends</b>, the <b>Audience</b>, the <b>View Stream</b>, and <b>Media Stats pages</b>.</p>
footer: 'for_intermediates'
---

{{ "If someone is logged into Wistia and is viewing your videos, their views will be tracked in your Private User Sessions. You can read more about that more in our [Private Analytics Page](http://wistia.com/doc/private-sharing)." | note }}

## Account-Level Trends View

Wistia provides detailed insights into the performance of a single video, an
individual Project (like a collection of your tutorial or marketing videos), or
the entire Account (perhaps all the videos across your website).

{% post_image hashed_id: '8180c8c5f9437b309824a3a9bc78ac93d8ea0685', class: 'center' %}

Starting from the **[Projects](https://my.wistia.com/projects)** page of your
Account, you can access your high level stats by selecting
**[Trends](https://my.wistia.com/stats/account)** from the Stats drop-down menu.

This will bring up the Trends overview of your account, which is a dashboard
for public stats performance. 📈

### Trends Graph

{% post_image hashed_id: '0a005276debff45579ba9851d80a6d0f99627294', class: 'center' %}

There are a few ways to explore your Trends Graph. By default you'll see the
stats for all of your videos for the last week.
They'll be displayed as "Daily" stats initially, but you can always change your
view. More on that [in a minute](#sorting).

We differentiate between video stats and project stats based on color&mdash;the video
stats chart will show data in green. Projects stats are blue.

You can hover over the different colored sections of the graph to see stats for
an individual video (or project), or check out the stats for all videos (or
projects) by hovering over the white space.

Select an individual project from the graph to see stats exclusive
to those videos. Or select an individual video to hone in on any spikes.

Above the graph you'll see an option to select a date range. Wistia supplies
five preset date ranges:

- Month to date
- Last month
- Last 90 days
- Year to date
- Last year

You can choose from any of these options, or select your own date range by
typing one in.

If you want to see all-time stats for your account, pick any date from before
you opened your account. We'll automatically snap your date to the start date of
your account.

So for our home account:

{% post_image hashed_id: '6d75f1f8ded7af2bd574b87199e9187c4a7cd7f8', width: 200, class: 'float_left' %}

became:

{% post_image hashed_id: 'f427c0af9d2f206502e65b779383fc9dee06e502', width: 200, class: 'float_left' %}

Keep in mind, **only play count will change** within a specific date range.
Engagement and play rate are calculated as all-time stats.

### Sorting

{% post_image hashed_id: '1e3e528428c887ed8a2b6b258f46a0a105b77482', width: 600, class: 'float_left' %}

Sorting data is crucial to understanding it. You've got a lot of data in your
Wistia account, so it's helpful to use sorting to make sense of all those sweet,
sweet analytics.

With sorting you can prioritize analytics data in the ways most useful to you.
Above the graph you can choose Projects or Videos, and select date ranges
(Months, Weeks, Days).

{% post_image hashed_id: '7e1e1649e286bb941d53a47a21f25b61c3af4a1c', width: 303, class: 'float_left' %}

You'll also be able to pick a specific date range. Either select one of Wistia's
preset options, or choose your own date range by typing it in.

Drill down further below the graph to sort by attributes like amount of embedded
videos, date created, or number of plays. The sorting bar is slightly different
at the account and project levels, so heads up!

### Customizing the View

{% post_image hashed_id: 'ba4e258f7479c89a880772119daf5f96a2f84e37', class: 'center' %}

By default, the Trends page will show you all-time stats for all Projects in
your account. This allows you to see all the views by time as you move your
cursor around on the map. The details for the views across the account will
appear below the trends table. These options can be clicked, to help you sort
results. Want to see the projects with the lowest number of embeds? Double click
that *Videos Embedded* option.

{% post_image hashed_id: 'ddf27148479b88e0379192566b7fa8dcdb78feae', class: 'center' %}

To see the data for a specific Project compared to the others, use the selection
tool functionality.  Clicking on one specific Project in either the list view
or in the graph will "lock" it, so you can view the analytics performance for
the Project more specifically.

### Projects/Media List

{% post_image hashed_id: 'bc4813804c8a15030fecce5a4549ea3094952166', class: 'center' %}

Underneath the Trends graph is the list of Projects or Media that is
represented in the graph.  To drill down to the Project or Media level,
click its title.

## Project-Level Trends

{% post_image hashed_id: '40b478cc2f0a5a5e806fcce1327d38c7ddf634f4', class: 'center' %}

Project-level Trends are pretty similar to Account-level trends. You can hover
your cursor along the graph to show information on the corresponding date. See a
spike in January? What video gave you the goods?

Selecting a single video will isolate its data from the rest of the videos in
the project. And just like on Account-level trends, you can adjust the grey tabs
under the graph to look at data for a specific date range. Wahoo!

Want to get into the nitty gritty? Clicking the title of an individual media
will move you to the Media-level Trends. Let's go!

## Media-Level Trends

{% post_image hashed_id: 'ac566c14c044b9e5a0bb501216c81c89c5486a06', class: 'center' %}

The media level is where a ton of information lives. Here you can find detailed
insights into how the video was viewed--both at the aggregate level through the
engagement graph, and individually through heatmaps. Plus, Wistia provides some
sweet, sweet stats around
[Timeline Actions]({{ '/customizing-your-video#timeline_actions' | post_url }}).
Who clicked what--where'd you get those Turnstile leads? It's all here.

To access the media-level trends page, first open up the Media Page for your
video (where you can watch the video in your account).  Under the *Media Actions*
drop-down menu, select **Stats**.

This will open the page with viewing stats specifically for that media.  You
can see the [overall engagement graph]({{ '/audience-engagement-graph' | post_url }}),
[summary stats](#summary_bar), and [individual viewer heatmaps](#heatmaps).

{% post_image hashed_id: '02529d9975c1dc4d12726ca6d94f059d6cff1a7f', class: 'center' %}

Embedding your video on your public webpage?  Wistia Media Stats will tell you
how it is performing (and [Wistia trends](#accountlevel_trends_view) will show
you how it is performing compared to other videos in your account).

### Engagement Graph

{% post_image hashed_id: '650eecd5f9571392744d720e7cfaf539eb7b80cd', class: 'center' %}

The blue section of the engagement graph shows the engagement of viewers who
clicked play on the video.  The orange section on top shows the number of times
that section was re-watched. Move your cursor over the graph (from left to right)
to see specific information for a time or frame in the video, and click the
graph to play the video from that point.

Want to know more? There's a lot to cover on this topic, so check out the Help
Page all about [Audience Engagement Graphs]({{ '/audience-engagement-graph' | post_url }}).

### Summary Bar

The summary bar next to the engagement graph displays overall data for the
viewers of the video.

You can use this for high-level data for comparison--like percent of viewers who
clicked play, percent viewed, and total time watched. This is also where you'll
find all of that awesome data around actions stats, like who entered an email
into Turnstile or clicked an Annotation Link.

Confused about how we got these numbers? Click **Show Details** for a deeper
explanation of this information.

{% wistia_embed hashed_id: rgpz87ssi3 %}

Under the engagement graph area and summary bar is a list of the individual
viewers who have watched your video, along with their
[**heatmaps**]({{ '/embedded-video-analytics/#heatmaps' | post_url }}).
More on that in a minute.

### Actions

Actions are an easy way to track viewer engagement from Calls to Action,
Annotations, and Turnstile email gate. Hovering over a waypoint below the
engagement graph will show what percentage of viewers took action during your
videos--like entering their email. Clicking the waypoint reveals the individual
heatmaps for those viewers.

{% post_image hashed_id: '1ac3250d789af16d16d1df2374f7f4913cb71ec2', class: 'center' %}

{{ "Have more than one Action on your timeline, and can't remember which one comes first, second, or even seventh? No worries! Hovering over the waypoint on a heatmap will show you the exact Action a viewer took." | tip }}

## Heatmaps

{% post_image hashed_id: '6a070b62d53e36c8a62ca9cf5adc2c7319551c68', class: 'center' %}

A video heatmap is a graphical representation of a single viewing session of
your video. Each viewer of a Wistia-hosted video is assigned a *heatmap*, which
shows the specific interaction they had with the video.

Heatmaps contain viewer information, contextual information (when the video was
watched and where) and a color-coded timeline which represents how the viewer
interacted with the video.

*  White means that portion of the video was not watched.
*  Green tells you that the viewer watched that part exactly once.  
*  Yellow, orange, light red, and dark red show that the viewer watched that part of the video two, three, four, or five times respectively.  

Next to each heatmap is shown the total percentage of the video that viewer
watched (parts watched multiple times are only counted once).

Heatmaps are a powerful tool for understanding how certain users watch your videos.  
Is there a specific topic that is interesting to viewers from your email campaign?  
Do international viewers tune out quicker than local ones?  When are the most
engaged viewers watching your videos?  This information and more can be derived
from heatmaps.

{% post_image hashed_id: '357f46d528386efacb01b5dbe998f3f2c3a1a74a', class: 'center' %}

The time to the left of the heatmap displays when the viewer watched the video.

Next to the time you'll see a number in a blue or grey box--this number
indicates the total number of your Wistia videos they watched. If the box is
blue, this means you're looking at an identified viewer, either gathered from an
email blast or entered manually through a Turnstile.

The small carrot next to the name and location of the viewer opens the heatmaps
to share more data. Here you'll find stuff like device (browser and
environment), IP address, and page where they watched the video. Woo!

{{ "See a little phone icon next to a viewer's name or network? That means someone watched your video on a mobile device. You can also export this data." | tip }}

{% post_image hashed_id: 'a5db259c295a2981ea8b12f17d21e0b56772a578', class: 'center' %}

Clicking on the name (or network) on the heatmap will take you to the Viewer
Page for that viewer. The Viewer Page is part of the **View Stream**.

## View Stream

The View Stream is another way to view Wistia analytics for your Account. The
View Stream is a live feed of all of your publicly embedded video views, but you
can drill down to individual viewers too!

{% post_image hashed_id: 'f023c8459d10b4018cf8053304f30c360873a08c', class: 'center' %}

To open the View Stream page, select **View Stream** from under the Stats
drop-down menu.

{% post_image hashed_id: 'd6ebdf73293282176ad7dacbd6855630c9d49c68', class: 'center' %}

## Audience

Your viewers aren't just a mass of numbers&mdash;they're individual people and potential leads. That's why Wistia created a section entirely devoted to them: your Audience.

{% wistia_embed hashed_id: hvgq7mr1xz %}

The Audience page is all about leads. Here you can track viewers through names and email addresses, and also see all untracked views.

To get to the Audience page choose **Audience** from the **Stats** menu.

{% post_image hashed_id: '1b504300470d4a8d8d3857ad88151f11680215b4', class: 'center' %}

You can check out your Audience in two ways: those tracked with an email address (as with [Turnstile]({{ '/turnstile' | post_url }}) or [email merge tags)]({{ '/email-marketing' | post_url }})) or look at the total audience. You also have the opportunity to Search for individual contacts anyway you need to&mdash;via IP address, name, email address, location, company&mdash;the sky's the limit.

If you want to drill down further and just see Turnstile entries click "Turnstile" in the description.

Each audience member has their own summary line.

{% post_image hashed_id: '9fa7b8084d6c4314d2a31b7eb7547bb412321305', class: 'center' %}

In the grey or blue box on the left (grey for unrecognized, blue for recognized) you'll see a number. This number indicates the number of videos this audience member has watched in your Wistia account.

Next to that you'll see the network on which the viewer watched your video (or their name, if provided) and their location.

Still more goodies you might see:

-   Their email address (if provided)
-   Their smiling face (if available)
-   Information about where the lead came from (Turnstile? Tagged with a merge tag?)
-   And the video that identified the lead

{% post_image hashed_id: 'a96be3270da25bb3d36acd6613dc42ef495d178e', class: 'center' %}

Each member of your audience has their own Viewer Page. Clicking anywhere on the summary line will bring you there!

### Viewer Page

{% post_image hashed_id: '06e6d4619ed7ca5a9cb612df174b5edf87bad37f', class: 'center' %}

From the Viewer Page, you can track activity for a specific viewer.  Want to
'tag' this viewer for future tracking?  Edit their name as you would a Wistia
media title, by clicking the 'edit' tag that will appear on hover. Then type
your changes.

Under the viewer's information you'll see a quick summary of their interactions
with your videos. This information will tell you:

*  When they watched the first video from you
*  The total number videos they've watched
*  Total time spent watching your videos
*  And average engagement on your videos

You'll also see all of the heatmaps from this viewer. And, if they've been identified via Turnstile, you can see the heatmap which captured the lead.

Want to learn more? Check out our Help Page all about [the Viewer Page]({{ '/identity-tagging' | post_url }}).

### Tagging With Emails

Adding a name to a viewer makes it easy to track their viewing sessions in your
analytics. You can also tag viewers with an email address automatically, using
[email merge tags]({{ '/email-marketing' | post_url }}).

Viewers tagging with an email will appear blue in the View Stream.

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

There are two places you can export stats. The Trends Page, and the Media Stats Page.

### Exporting Trends Stats

First up, head to the your account trends page. [Click here](https://my.wistia.com/stats/account) to get to your own. Adjust your settings to what you'd like to export. Do you want a specific date range or all time? Projects or medias? Want to look at data drilled down to the day? Make it happen!

Scroll to the bottom of the page, and click that Export button.

{% post_image hashed_id: '97e233726aef4cc845fec8c907410ad34e462fe8', class: 'float_right', width: 300 %}

**Project level** trends stats for each individual project. That data includes:

* Date Created
* Name
* Number of Videos
* Load Count
* Plays Over Date Range (if applicable)
* Play Count
* Hours Watched
* Timeline Actions Conversions
* Timeline Actions Impressions


For **Video level** trends stats you'll export data for each video:

* Date Created
* Name
* Total Loads
* Plays Over Date Range (if applicable)
* Unique Loads
* Unique Plays
* Average Percent Viewed
* Duration
* Play Rate
* Hour Watched
* Timeline Action Conversions
* Timeline Actions Impressions


These will export at CSV files which will be emailed to you.

### Exporting Media Stats

If you want to low-down on an individual video's stats, head to the stats page for that videos (it has a link like
`http://<account>.wistia.com/stats/medias/<id>`).

At the bottom of the page (past all of your heatmaps), you'll see a button to `Export as CSV`.

{% post_image hashed_id: '6a90cccae1b646ad8ba8862211c69e77b78f1d13', class: 'float_right', width: 400 %}

Click on the link and a dialog box will appear. Get your filters right (date range, if needed), and
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
*  Name
*  Percent of Video Viewed
*  URL where the view happened
*  Links Clicked (Annotation or CTA)
*  Browser (and version)
*  Platform (Mac, Windows, etc)
*  Device

You can also filter these stats to a specific date range.

**If something seems fishy, you can always check out our <a href="http://status.wistia.com/">Status Page</a> for more information about what might be going on. Still no luck? [Contact us](http://wistia.com/support/contact). We'd be more than happy to help you out!**

<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script>
<script>
  wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
    iframe.wistiaApi.bind("end", function() {
      wistiaJQuery.fancybox.close();
    });
  });
</script>
