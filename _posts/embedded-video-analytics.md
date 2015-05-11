---
title: Embedded Video Analytics
layout: post
category: Analytics
description: Wistia's analytics are designed to help you understand how your audience engages with your content. Dive in to everything you could dream of knowing about Wistia's all time favorite subject, Statistics. 
post_intro: <p>Wistia stats are the best way to get a complete view of who is watching your video, and how they are watching and interacting with it.</p><p>This guide will show you how to approach the two parts of Wistia analytics, <b>Stats Trends</b> and the <b>Viewer Stream</b>.</p>


---

{{ "If someone is logged into Wistia and is viewing the videos, their views will be tracked in your Private User Sessions. You can read more about that more in our Private Analytics Documentation." | note }}

## Account-Level Trends View

Wistia provides detailed insights into the performance of a single video, a Project 
(perhaps a collection of your tutorial or marketing videos), or the entire 
Account (perhaps all the videos across your website).

{% post_image hashed_id: '8bce8936310d94e3753cc9306b8712cb338101a2', class: 'center' %}

Starting from the Projects List page of your Account 
(i.e. *myaccount.wistia.com/projects*), access your high level stats by 
selecting "Trends" from under the Stats drop-down menu.

This will bring up the Trends overview of your account, which is a dashboard 
for public stats performance.

---

### Trends Graph

{% post_image hashed_id: 'ec70a6f8e594e214c618915200e388d01d8bf3ce', class: 'center' %}

The graph at the top shows the Projects in your Account according to views over 
time. Using your mouse, choose to either see all views across the account or 
across a single Project by rolling over the lines in the graph. 


Underneath the graph, use the yellow tabs to select a date range for analysis.  
Drag either end to change the range to be displayed in the graph.

---

### Sorting Bar

{% post_image hashed_id: 'b66fd0ae079e9bb5606b1b21f4705dd4e6b64b97', class: 'center' %}

The Sorting Bar within Wistia analytics pages helps sort analytics data in the 
way most useful for you, showing Projects or Videos, selecting by date ranges 
(Months, Weeks, Days) and sorting by attributes like amount of videos, date 
created, or number of plays.  The sorting bar is slightly different at the 
account and project levels.

---

### Customizing the View

{% post_image hashed_id: '9c6a9e7ad8ea8cdfa32d7020a30a673a6aacc376', class: 'center' %}

By default, the Trends page will show you stats for all Projects in your account.
This allows you to see all the views by time as you move your cursor around on 
the map.  The details for the views across the account will appear in the upper 
two rows of the Trends table.

{% post_image hashed_id: 'd837244783e1939f83c46b3903190526a512c856', class: 'center' %}

To see the data for a specific Project compared to the others, use the selection 
tool functionality.  Clicking on one specific Project in either the list view 
or in the graph will "lock" it, so you can view the analytics performance for 
the Project more specifically.

---

### Projects/Media List

{% post_image hashed_id: '8ff07e87c7ccfc2f8a229138363a0ec1e147e517', class: 'center' %}

Underneath the Trends graph is the list of Projects or Media that is 
represented in the graph.  To drill down to the Project or Media level, 
click the title of the Project/Media.

---

## Project-Level Trends

{% post_image hashed_id: 'ffdd61bf9673313b2c052bfafd907c09fd51c71e', class: 'center' %}

The Trends graph for projects is very similar to the aggregate Account-level 
graph.  Moving your cursor along the graph will show information on the 
corresponding date.  Selecting a single video will isolate it's data from the 
rest of the videos in the project.  The yellow tabs under the graph can be moved 
to adjust the date range for data analysis.


Clicking the title of an individual media will move you to the Media-level Trends.

---

## Media-Level Trends

{% post_image hashed_id: 'ac566c14c044b9e5a0bb501216c81c89c5486a06', class: 'center' %}

The media level provides detailed insight into how the video was viewed, both 
at an aggregate level through an engagement graph, and individually through 
heatmaps. It's also a great place to track viewer actions from Annotations, 
Calls to Action, and Turnstile.

To access the media-level trends page, first open up the Media Page for your 
video (where you can watch the video in your account).  Under the *Media Actions* 
drop-down menu, select "Stats".

This will open the page with viewing stats specifically for that media.  You 
can see the [overall engagement graph]({{ '/audience-engagement-graph' | post_url }}), 
summary stats, and [individual viewer heatmaps](#heatmaps).

{% post_image hashed_id: '23c6296528bb296de6e2ed9b1eee73e2fc8c4425', class: 'center' %}

Embedding your video on your public webpage?  Wistia Media Stats will tell you 
how it is performing (and [Wistia trends](#accountlevel_trends_view) will show 
you how it is performing compared to your other video initiatives).


---

### Engagement Graph

{% post_image hashed_id: '650eecd5f9571392744d720e7cfaf539eb7b80cd', class: 'center' %}

The blue section of the engagement graph shows the engagement of viewers who 
clicked play on the video.  The orange section on top shows the number of times 
that section was re-watched. Move your cursor over the graph (from left to right) 
to see specific information for a time in the video, and click the graph to jump 
to that point in the video.


More on [Audience Engagement Graphs]({{ '/audience-engagement-graph' | post_url }}).


---

### Summary Bar

The summary bar next to the engagement graph displays overall data for the 
viewers of the video.  This is extremely useful high-level data for comparison, 
such as % of viewers who clicked play, % viewed, and total time watched. We also house
information on actions taken by your viewers--from entering an email into Turnstile to
clicking an Annotation Link. Simply click "Show Details" for a deeper explation of this
information.

{% wistia_embed hashed_id: rgpz87ssi3 %}


Under the engagement graph area and summary bar are a list of the individual 
viewers who have watched your video, along with their [**heatmaps**]({{ '/embedded-video-analytics/#heatmaps' | post_url }}).

---

### Actions

Actions are an easy way to track viewer engagement from Calls to Action, Annotations, and
Turnstile email gate. Clicking on a waypoint below the engagement graph will show what
percentage of viewers took action during your videos--from entering an email to clicking
a link.

{% post_image hashed_id: 'db8a3dfcc3ef0f81d7d428e7b3e7396f29ebfed6', class: 'center' %}

---

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


---

## Viewer Stream

The Viewer Stream is the other way of viewing Wistia analytics for your Account.  
It begins a list of the latest viewers of any videos in the account, but can be 
drilled down into the individual viewer.


### The Viewer Stream Page

{% post_image hashed_id: '03c8bea4fb026b228e84f54244c57d14d5cb4975', class: 'center' %}

To open the Viewers Stream page, select "Viewers" from under the Stats drop-down 
menu.


The Viewers Stream is a snapshot of the viewers of your publicly embedded videos.  
These will appear as a list of viewers, with their most recent heatmaps.

{% post_image hashed_id: '22099a789375018ff43301596779000fa85f602b', class: 'center' %}

Use the sorting bar to specify which group of viewers you'd like to see, or use 
the search box to find a specific viewer.  The number bubbles next to each name 
designate how many videos the viewer has watched.  Clicking on a viewer will 
take you to the Viewer Page.

---

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

---

### Tagging With Emails

Adding a name to a viewer makes it easy to track their viewing sessions in your 
analytics.  You can also tag viewers with email address automatically, using 
[email marketing embeds]({{ '/email-marketing' | post_url }}).

Once your viewer is tagged with an email, you can sort to view them in the Viewer 
Stream by clicking the "With Emails" option on the sorting bar.

---

## Exporting Analytics Data

While we work hard on making our analytics interface powerful yet easy-to-use, 
it can sometimes be necessary to export your stats data for further analysis. 

Read on if you'd like to learn how that is done.

First, head to the stats page for one of your videos (it has a link like 
`http://<account>.wistia.com/stats/medias/<id>`).

On the right hand side of the bar that separates the aggregate statistics from 
the video heatmaps, a link is shown which says `Export as CSV`.

{% post_image hashed_id: '803732dcd4895f85f30062bf8589e5cea2ba0a73', class: 'center' %}

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

**If something seems fishy, you can always check out our <a href="http://status.wistia.com/">Status Page</a> for more information about what might be going on. Still no luck? Shoot us an email at support@wistia.com. We'd be more than happy to help you out!**

