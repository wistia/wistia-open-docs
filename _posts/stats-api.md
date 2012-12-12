---
layout: post
api: true
title: Stats API
description: Learn how to access your stats via our API.
---

Ever looked at your Wistia heatmaps and wished you could show them to other people 
with ease? Ever looked at your Wistia heatmaps and wished that they were built out 
of purple cats instead of red, yellow, and green bars? Want to figure out which of 
your Wistia videos your users have already viewed and recommend them ones they haven't 
so they don't get bored? Want to make sure you purposely recommend the same videos 
repeatedly until they're annoyed enough to convert? Look no further, developers: 
the Wistia Stats API has you covered.

## Account

### Account: Show

The stats API allows you to retrieve some account-wide information. Don't buy a 
nice car to overcompensate; instead, show off how many hours of your video have 
been played! Or, celebrate when you reach a certain landmark.

#### The Request

In order to tell Wistia that you want stats for your account, issue a **GET** 
request to the following URL:

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/account.json
</code></pre>

#### The Response

Field | Description
------|------------
load_count | The total number of times all of the videos from this account have been loaded.
play_count | The total number of times all of the videos from this account have been played.
hours_watched | The total amount of time spent watching all of the videos in this account.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
  {
    &quot;load_count&quot;: 1000,
    &quot;play_count&quot;: 400,
    &quot;hours_watched&quot;: 21.9
  }
</code></pre>

### Account: By Date

You can also get account-wide stats for a particular date range. No, not _that_ kind 
of date -- you'll still have to figure those out for yourself. Neeeerd.

#### The Request

In order to tell Wistia that you want account-wide stats for a particular date range, 
issue a **GET** request to the following URL:

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/account/by_date.json?start_date=&lt;start date&gt;&end_date=&lt;end date&gt;
</code></pre>

#### Parameters

Parameter Name | Description
---------------|------------
start_date     | The beginning of the date range for which you would like to receive stats. Use the following format to represent October 5th, 2012: '2012-10-05'.
end_date       | The end of the date range for which you would like to receive stats. This parameter takes the same format as start_date.

#### The Response

The response will come back as an array of objects, with each object representing the stats 
for a particular day.

The fields available for each day are as follows:

Field | Description
------|------------
date          | The date which this object represents.
load_count    | The number of times any video from this account was loaded on the day in question.
play_count    | The number of times any video from this account was played on the day in question.
hours_watched | The total amount of time spent watching videos in this account on the day in question.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
[
  {
    &quot;date&quot;: &quot;2012-10-09&quot;,
    &quot;load_count&quot;: 100,
    &quot;play_count&quot;: 80,
    &quot;hours_watched&quot;: 21.9
  },
  {
    &quot;date&quot;: &quot;2012-10-08&quot;,
    &quot;load_count&quot;: 60,
    &quot;play_count&quot;: 45,
    &quot;hours_watched&quot;: 12.4
  }
]
</code></pre>

## Project

### Project: Show

The stats API allows you to retrieve information about all of the videos in a 
particular project. We know you like it when we let you get specific.

#### The Request

In order to retrieve stats for a project, issue a **GET** request to the following URL
(you can find the Project ID in the URL for that project):

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/projects/&lt;project-id&gt;.json
</code></pre>

#### The Response

The response will come back as a single object representing the stats for this project.

Field | Description
------|------------
load_count | The total number of times the videos in this project have been loaded.
play_count | The total number of times the videos in this project have been played.
hours_watched | The total time spent viewing the videos in this project.
number_of_videos | The total number of videos in this project.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
{
  &quot;load_count&quot;: 5498,
  &quot;play_count&quot;: 3942,
  &quot;hours_watched&quot;: 59.8,
  &quot;number_of_videos&quot;: 8,
}
</code></pre>

### Project: By Date

You can use the stats API to get information about a project for a specific date range. 

#### The Request

In order to get stats for a project during a range of dates, issue a **GET** request 
to the following URL:

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/projects/&lt;project-id&gt;/by_date.json
</code></pre>

#### Parameters

Parameter | Description
----------|------------
start_date | The beginning of the date range. Use the following format to represent October 5th, 2012: '2012-10-05'.
end_date | The end of the date range. This parameter takes the same format as start_date.

#### The Response

The response will be an array of objects, with each object representing the information for a particular date.

Field | Description
------|------------
date | The date for which this object contains project data.
load_count | The number of times any video from the project was loaded on the given date.
play_count | The number of times any video from the project was played on the given date.
hours_watched | The total amount of time spent watching all of videos in the project on the given date.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
[
  {
    &quot;date&quot;: '2012-11-20',
    &quot;load_count&quot;: 5498,
    &quot;play_count&quot;: 3942,
    &quot;hours_watched&quot;: 59.8
  },
  {
    &quot;date&quot;: '2012-11-21',
    &quot;load_count&quot;: 3568,
    &quot;play_count&quot;: 1941,
    &quot;hours_watched&quot;: 32.4
  },
]
</code></pre>

## Media

### Media: Show

The Wistia stats API can be used to retrieve stats for any given video. Ever wanted 
to entice that special someone (or those hundreds of special someones viewing your page) 
to watch your video? Win their heart by displaying impressive data like your engagement 
rate. Or, give away a puppy to the thousandth viewer of your video. We heard you can 3D 
print those now.

#### The Request

In order to get stats for a video, issue a **GET** request to the following URL (you
 can find the Media ID in the URL for that media):

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/medias/&lt;media-id&gt;.json
</code></pre>

#### The Response

Field | Description
------|------------
load_count | The total number of times this video has been loaded.
play_count | The total number of times this video has been played.
play_rate | The percentage of visitors who clicked play (between 0 and 1).
hours_watched | The total time spent watching this video.
engagement | The average percentage of the video that gets viewed (between 0 and 1).
visitors | The total number of unique people that have loaded this video.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
{
  &quot;load_count&quot;: 100,
  &quot;play_count&quot;: 80,
  &quot;play_rate&quot;: 0.54,
  &quot;hours_watched&quot;: 21.9,
  &quot;engagement&quot;: 0.89,
  &quot;visitors&quot;: 94
}
</code></pre>

### Media: By Date

#### The Request

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/medias/&lt;media-id&gt;/by_date.json
</code></pre>

#### Parameters

Parameter | Description
----------|------------
start_date | The beginning of the date range for which you want to retrieve data.
end_date | The end of the date range for which you want to retrieve data.

#### The Response

Each object in the response array will give the stats for 1 day worth of data. 
The objects' fields are listed below:

Field | Description
------|------------
date | The date for which this object contains stats about the video.
load_count | The number of times this video was loaded on the given day.
play_count | The number of times this video was played on the given day.
hours_watched | The total time spent watching this video on the given day.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
[
  {
    &quot;date&quot;: '2012-10-21',
    &quot;load_count&quot;: 100,
    &quot;play_count&quot;: 80,
    &quot;hours_watched&quot;: 21.9
  },
  {
    &quot;date&quot;: '2012-10-22',
    &quot;load_count&quot;: 140,
    &quot;play_count&quot;: 96,
    &quot;hours_watched&quot;: 26.9
  }
]
</code></pre>

### Media: Engagement

Using the stats API, you can retrieve the data used to construct the engagement 
graphs at the top of the stats page for any video in Wistia.

#### The Request

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/medias/&lt;media-id&gt;/engagement.json
</code></pre>

#### Parameters

This method does not take any parameters besides the media-id that is already specified in the URL.

#### The Response

The response will come back as a single object that represents the main engagement data:

Field | Description
------|------------
engagement | The percentage of the video that was viewed, averaged across all viewing sessions.
engagement_data | An array which can be used as the data source for creating an engagement graph. Normally, each cell in the array represents how many times 1 second of the video has been viewed. However, for longer form content (over 1000 seconds), the array will be scaled down to 1000 items, 
with each item representing more than 1 second of playback.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
{
  &quot;engagement&quot;: 0.75,
  &quot;engagement_data&quot;: [ 154, 152, 152, 151, 148, ... ]
}
</code></pre>

## Visitors

### Visitors: List

This method allows you to retrieve a list of visitors that have watched videos in your account.

#### The Request

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/visitors.json
</code></pre>

#### Parameters

Parameter | Description
----------|------------
page | The page of results that you want, based on the per_page parameter.
per_page | The maximum number of results to return. This value is capped at 100.
filter | This parameter is optional and can take one of two values: 'has_name' or 'has_email'. Without the parameter, all visitors are returned. For the value 'has_name', only named visitors are returned. For the value 'has_email', only visitors with an email address are returned.
search | If this parameter is specified, only visitors whose name or email address starts with the given value will be returned.

#### The Response

The response will be an array of objects. Each object represents a single visitor 
with the following fields:

#### Fields

Field | Description
------|------------
visitor_key | This is a unique identifier for the visitor.
created_at | When the visitor was created - i.e. when they first loaded a video in the account.
last_active_at | The last time the visitor played a video.
last_event_key | The event key which can be used to retrieve the information about what happened when they last played a video.
load_count | The total number of videos that have been loaded (but not necessarily viewed) by this visitor.
play_count | The total number of videos that have been viewed by this visitor.
visitor_identity | An object with 2 fields (name and email) that represents and available identity info for this visitor.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
[
  {
    "visitor_key": "E4E7613B5C24CB0F1F7C0A1E4E874635E752263E",
    "created_at": "2012-12-12T01:51:36Z",
    "last_active_at": "2012-12-12T03:15:56Z",
    "last_event_key": "1355282055737f0.4801975437439978",
    "load_count": 3,
    "play_count": 2,
    "visitor_identity": { "name": "Jim", "email": "jim@example.com" }
  },
  {
    "visitor_key": "9DC9D7F525236E25E27E9743C0524DB0F02C703D",
    "created_at": "2011-12-15T22:20:08Z",
    "last_active_at": "2012-12-12T03:13:52Z",
    "last_event_key": "1355282030102f0.8788125906139612",
    "load_count": 17,
    "play_count": 9,
    "visitor_identity": { "name": "John Doe", "email": "john@example.com" }
  }
]
</code></pre>

### Visitors: Show

This method allows you to retrieve the information for a single visitor.

#### The Request

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/visitors/&lt;visitor-key&gt;.json`
</code></pre>

#### Parameters

This method does not take any parameters besides the visitor-key that is already 
specified in the URL.

#### The Response

The response will be a single object representing the visitor's information. 
It contains the following fields:

Field | Description
------|------------
visitor_key | This is a unique identifier for the visitor.
created_at | When the visitor was created - i.e. when they first loaded a video in the account.
last_active_at | The last time the visitor played a video.
last_event_key | The event key that can be used to retrieve the information about what happened when they last played a video.
load_count | The total number of videos that have been loaded (but not necessarily viewed) by this visitor.
play_count | The total number of videos that have been viewed by this visitor.
visitor_identity | An object with 2 fields (name and email) that represents any available identity info for this visitor.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
{
  "visitor_key": "E4E7613B5C24CB0F1F7C0A1E4E874635E752263E",
  "created_at": "2012-12-12T01:51:36Z",
  "last_active_at": "2012-12-12T03:15:56Z",
  "last_event_key": "1355282055737f0.4801975437439978",
  "load_count": 3,
  "play_count": 2,
  "visitor_identity": { "name": "Jim", "email": "jim@example.com" }
}
</code></pre>

## Events

### Events: List

This method allows you to retrieve a list of events (viewing sessions) from your account.

#### The Request

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/events.json
</code></pre>

#### Parameters

Parameter | Description
----------|------------
media_id  | An optional parameter specifying the video for which you would like to retrieve events.
visitor_id | An optional parameter specifying the visitor for which you would like to retrieve events.
per_page | The maximum number of events to retrieve. This number is capped at 100. If you need to get more than 100 events, please issue multiple requests.
page | The page of events to get data from, based on the page_size parameter.
start_date | An optional parameter indicating that events should only be returned after the given date. Takes the format '2012-11-25'.
end_date | An optional parameter indicating that events should only be returned before the given date. Takes the format '2012-11-25'.

#### The Response

The response will be an array of objects. Each one represents a single viewing 
session (event) and has the following fields:

Field | Description
------|------------
received_at | The date and time that the event happened.
visitor_key | The id of the visitor, which can be used to retrieve further information about them.
embed_url | The URL of the page where the video was viewed.
percent_viewed | How much of the video was watched during this session (0 to 100).
ip | The viewer's IP address.
org | The organization that the IP address belongs to.
country | The viewer's country, based on IP.
region | The viewer's region, based on IP.
city | The viewer's city, based on IP.
lat | The latitude of the viewer's IP.
lon | The longitude of the viewer's IP.
email | The viewer's email address, if available.
media_id | An identifier indicating which video was watched.
media_url | The video's URL in the Wistia account.
media_name | The name of the video.
iframe_heatmap_url | The URL of an HTML page that will render the heatmap for this event.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
[
  {
    "received_at": "2012-12-12T03:25:50Z",
    "ip": "3.6.101.20",
    "country": "TR",
    "region": "34",
    "city": "Istanbul",
    "lat": 41.0186,
    "lon": 28.9647,
    "org": "Turk Telekom",
    "email": "test@example.com",
    "percent_viewed": 0.11901863354037266,
    "embed_url": "http://wistia.com/doc/private-sharing",
    "conversion_type": "",
    "conversion_data": "",
    "iframe_heatmap_url": "https://api.wistia.com/v1/stats/events/1355282749593f0.12025747820734978/iframe.html?public_token=p5j1mnpakv",
    "visitor_key": "9DC9D7F525236E25E27E9743C0524DB0F02C703D",
    "media_id": "75edd60835",
    "media_name": "Private Sharing SC.mp4",
    "media_url": "https://home.wistia.com/medias/75edd60835",
    "thumbnail": {
      "url":  "http://embed.wistia.com/deliveries/da4b6a18767456f089336f8c4e3f14c130fc03e3.bin",
      "width": 640,
      "height": 400,
      "fileSize": 48611,
      "contentType": "image/jpeg",
      "type": "StillImageFile"
    }
  },
  {
    "received_at": "2012-12-12T03:23:19Z",
    "ip": "84.64.82.205",
    "country": "TR",
    "region": "34",
    "city": "Istanbul",
    "lat": 41.0186,
    "lon": 28.9647,
    "org": "Turk Telekom",
    "email": "test@example.com",
    "percent_viewed": 0.21194901235769195,
    "embed_url": "http://wistia.com/product/turnstile?wemail=test@example.com",
    "conversion_type": 0,
    "conversion_data": "",
    "iframe_heatmap_url": "https://api.wistia.com/v1/stats/events/1355282599572f0.725406895391643/iframe.html?public_token=p5j1mnpakv",
    "visitor_key": "9DC9D7F525236E25E27E9743C0524DB0F02C703D",
    "media_id": "f217279600",
    "media_name": "Turnstile - FINAL",
    "media_url": "https://home.wistia.com/medias/f217279600",
    "thumbnail": {
      "url": "http://embed.wistia.com/deliveries/814cc7ac472eb24cf212cc1625c040dee75544f0.bin",
      "width": 2489,
      "height": 1400,
      "fileSize": 456075,
      "contentType": "image/jpeg",
      "type": "StillImageFile"
    }
  }
]
</code></pre>

### Events: Show

This method gives you the information about a single event from your account.

#### The Request

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/events/&lt;event-key&gt;.json
</code></pre>

#### Parameters

This method does not take any parameters other than the event key already specified in the URL.

#### The Response

The response will be a single object representing the information about the event. 
The format and fields of this object will be the same as can be found in the 
Events: List method.

#### Example JSON Response

**Status:** 200 OK

<pre><code class="language-json">
{
  "received_at": "2012-12-12T03:25:50Z",
  "ip": "3.6.101.20",
  "country": "TR",
  "region": "34",
  "city": "Istanbul",
  "lat": 41.0186,
  "lon": 28.9647,
  "org": "Turk Telekom",
  "email": "test@example.com",
  "percent_viewed": 0.11901863354037266,
  "embed_url": "http://wistia.com/doc/private-sharing",
  "conversion_type": "",
  "conversion_data": "",
  "iframe_heatmap_url": "https://api.wistia.com/v1/stats/events/1355282749593f0.12025747820734978/iframe.html?public_token=p5j1mnpakv",
  "visitor_key": "9DC9D7F525236E25E27E9743C0524DB0F02C703D",
  "media_id": "75edd60835",
  "media_name": "Private Sharing SC.mp4",
  "media_url": "https://home.wistia.com/medias/75edd60835",
  "thumbnail": {
    "url":  "http://embed.wistia.com/deliveries/da4b6a18767456f089336f8c4e3f14c130fc03e3.bin",
    "width": 640,
    "height": 400,
    "fileSize": 48611,
    "contentType": "image/jpeg",
    "type": "StillImageFile"
  }
}
</code></pre>

### Events: Heatmap

You can get the heatmap for any event by constructing the following URL:

<pre><code class="language-vim">
GET https://api.wistia.com/v1/stats/events/&lt;event-key&gt;/iframe.html?public_token=&lt;public_token&gt;
</code></pre>

Replace the **&lt;event-key&gt;** token with the event_key that indicates which 
heatmap you would like to see. You can get the **&lt;event-key&gt;** value from 
other parts of this API or from the Wistia player itself.

Make sure you also provide your account's **&lt;public_token&gt;** as a parameter. You 
can find your **&lt;public_token&gt;** by clicking on **API** in your Account Dashboard.

This URL is meant to be used as the target of an iframe which can then be used 
to render the heatmap within your own pages.

Here is an example heatmap embedded right into this page:

<iframe src="https://api.wistia.com/v1/stats/events/1355283144880f0.12204939918592572/iframe.html?public_token=p5j1mnpakv" height="70" width="100%" style="border: solid 2px black;"></iframe>

Here is the code that we used to embed the heatmap:

<pre><code class="language-markup">
&lt;iframe src="https://api.wistia.com/v1/stats/events/1355283144880f0.12204939918592572/iframe.html?public_token=p5j1mnpakv" height="70" width="100%" style="border: solid 2px black;"&gt;&lt;/iframe&gt;
</code></pre>

