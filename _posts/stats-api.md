---
layout: post
api: true
title: Stats API
description: Learn how to access your stats via our API.
---

## Account

### Account: Show

The stats API allows you to retrieve some account-wide information.

#### The Request

In order to tell Wistia that you want stats for your account, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/account.json`

#### The Response

Field | Description
------|------------
load_count | The total number of times any video from this account has been loaded.
play_count | The total number of times any video from this account has been played.
hours_watched | The total amount of time spent watching the videos in this account.

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

You can also get account-wide stats for a particular date range.

#### The Request

In order to tell Wistia that you want account-wide stats for a particular date range, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/account/by_date.json?start_date=<start date>&end_date=<end date>`

#### Parameters

Parameter Name | Description
---------------|------------
start_date     | The beginning of the date range for which you would like to receive stats. Use the following format to represent October 5th, 2012: '2012-10-05'.
end_date       | The end of the date range for which you would like to receive stats. This parameter takes the same format as start_date.

#### The Response

The response will come back as an array of objects, with each object representing the stats for a particular day.

The fields available for each day are as follows:

Field | Description
------|------------
date          | The date which this object represents.
load_count    | The number of times a video from this account was loaded on the day in question.
play_count    | The number of times a video from this account was played on the day in question.
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

The stats API allows you to retrieve information about all the videos in a project.

#### The Request

In order to retrieve stats for a project, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/projects/<project-id>.json`

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

In order to get stats for a project during a range of dates, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/projects/<project-id>/by_date.json`

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
hours_watched | The total amount of time spent watching videos in the project on the given date.

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

The Wistia stats API can be used to retrieve stats for any given video.

#### The Request

In order to get stats for a video, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/medias/<media-id>.json`

#### The Response

Field | Description
------|------------
load_count | The total number of times this video has been loaded.
play_count | The total number of times this video has been played.
play_rate | The percentage of visitors who clicked play (between 0 and 1).
hours_watched | The total time spent watching this video.
engagement | The average percentage of the video that gets viewed (between 0 and 1).
visitors | The total number of unique people that have loaded this video.

### Media: By Date

#### The Request

`GET https://api.wistia.com/v1/stats/medias/<media-id>/by_date.json`

#### Parameters

Parameter | Description
----------|------------
start_date | The beginning of the date range for which you want to retrieve data.
end_date | The end of the date range for which you want to retrieve data.

#### The Response

Each object in the response array will give the stats for 1 day's worth of data. The objects' fields are listed below:

Field | Description
------|------------
date | The date for which this object contains stats about the video.
load_count | The number of times this video was loaded on the given day.
play_count | The number of times this video was played on the given day.
hours_watched | The total time spent watching this video on the given day.

### Media: Engagement

Using the stats API, you can retrieve the data used to construct the engagement graphs at the top of the stats page for any video in Wistia.

#### The Request

`GET https://api.wistia.com/v1/stats/medias/<media-id>/engagement.json`

#### Parameters

This method does not take any parameters besides the media-id that is already specified in the URL.

#### The Response

The response will come back as a single object that represents the main engagement data:

Field | Description
------|------------
engagement | The percentage of the video that was viewed, averaged across all viewing sessions.
engagement_data | An array which can be used as the data source for creating an engagement graph. Normally, each cell in the array represents how many times 1 second of the video has been viewed. However, for longer form content (over 1000 seconds), the array will be scaled down to 1000 items, with each item representing more than 1 second of playback.

## Visitors

### Visitors: List

This method allows you to retrieve a list of visitors that have watched videos in your account.

#### The Request

`GET https://api.wistia.com/v1/stats/visitors.json`

#### Parameters

Parameter | Description
----------|------------
page | The page of results that you want, based on the per_page parameter.
per_page | The maximum number of results to return. This value is capped at 100.
filter | This parameter is optional and can take one of two values: 'has_name' or 'has_email'. Without the parameter, all visitors are returned. For the value 'has_name', only named visitors are returned. For the value 'has_email', only visitors with an email address are returned.
search | If this parameter is specified, only visitors whose name or email address starts with the given value will be returned.

#### The Response

The response will be an array of objects. Each object represents a single visitor with the following fields:

#### Fields

Field | Description
------|------------
created_at | When the visitor was created - i.e. when they first loaded a video in the account.
last_active_at | The last time the visitor played a video.
last_event_key | The event key which can be used to retrieve the information about what happened when they last played a video.
load_count | The total number of videos that have been loaded (but not necessarily viewed) by this visitor.
play_count | The total number of videos that have been viewed by this visitor.
visitor_identity | An object with 2 fields (name and email) that represents and available identity info for this visitor.

### Visitors: Show

This method allows you to retrieve the information for a single visitor.

#### The Request

`GET https://api.wistia.com/v1/stats/visitors/<visitor-key>.json`

#### Parameters

This method does not take any parameters besides the visitor-key that is already specified in the URL.

#### The Response

The response will be a single object representing the visitor's information. It contains the following fields:

Field | Description
------|------------
created_at | When the visitor was created - i.e. when they first loaded a video in the account.
last_active_at | The last time the visitor played a video.
last_event_key | The event key which can be used to retrieve the information about what happened when they last played a video.
load_count | The total number of videos that have been loaded (but not necessarily viewed) by this visitor.
play_count | The total number of videos that have been viewed by this visitor.
visitor_identity | An object with 2 fields (name and email) that represents and available identity info for this visitor.

## Events

### Events: List

This method allows you to retrieve a list of events (viewing sessions) from your account.

#### The Request

`GET https://api.wistia.com/v1/stats/events.json`

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

The response will be an array of objects. Each one represents a single viewing session (event) and has the following fields:

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

### Events: Show

This method gives you the information about a single event from your account.

#### The Request

`GET https://api.wistia.com/v1/stats/events/<event-key>.json`

#### Parameters

This method does not take any parameters other than the event key already specified in the URL.

#### The Response

The response will be a single object representing the information about the event. The format and fields of this object will be the same as can be found in the Events: List method.

### Events: Heatmap

You can get the heatmap for any event by constructing the following URL:

`GET https://api.wistia.com/v1/stats/events/<event-key>/iframe.html`

Replace the &lt;event-key&gt; token with the event_key that indicates which heatmap you would like to see. You can get the &lt;event-key&gt; value from other parts of this API or from the Wistia player itself. This URL is meant to be used as the target of an iframe which can then be used to render the heatmap within your own pages.
