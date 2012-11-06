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

#### Fields

Field | Description
------|------------
loads | The total number of times any video from this account has been loaded.
plays | The total number of times any video from this account has been played.
hours_watched | The total amount of time spent watching the videos in this account.

### Account: By Date

You can also get account-wide stats for a particular date range.

#### The Request

In order to tell Wistia that you want account-wide stats for a particular date range, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/account/by_date.json?start_date=&lt;start date&gt;&amp;end_date=&lt;end date&gt;`

#### Parameters

Parameter Name | Description
---------------|------------
start_date     | The beginning of the date range for which you would like to receive stats. Use the following format to represent October 5th, 2012: '2012-10-05'.
end_date       | The end of the date range for which you would like to receive stats. This parameter takes the same format as start_date.

#### The Response

The response will come back as an array of objects, with each object representing the stats for a particular day.

#### Fields

The fields available for each day are as follows:

Field | Description
------|------------
data_date | The date which this object represents.
loads     | The number of times a video from this account was loaded on the day in question.
plays     | The number of times a video from this account was played on the day in question.
hours_watched | The total amount of time spent watching videos in this account on the day in question.

#### Examples

##### JSON

**Status:** 200 OK

<pre><code class="language-json">
[
  {
    &quot;data_date&quot;: &quot;2012-10-09&quot;,
    &quot;loads&quot;: 100,
    &quot;plays&quot;: 80,
    &quot;hours_watched&quot;: 21.9
  },
  {
    &quot;data_date&quot;: &quot;2012-10-08&quot;,
    &quot;loads&quot;: 60,
    &quot;plays&quot;: 45,
    &quot;hours_watched&quot;: 12.4
  }
]
</code></pre>

## Project

### Project: Show

The stats API allows you to retrieve information about all the videos in a project.

#### The Request

In order to retrieve stats for a project, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/projects/&lt;project-id&gt;.json`

#### The Response

The response will come back as a single object representing the stats for this project.

#### Fields

Field | Description
------|------------
loads | The total number of times the videos in this project have been loaded.
plays | The total number of times the videos in this project have been played.
hours_watched | The total time spent viewing the videos in this project.
number_of_videos | The total number of videos in this project.

#### Examples

##### JSON

**Status:** 200 OK

<pre><code class="language-json">
{
  &quot;loads&quot;: 5498,
  &quot;plays&quot;: 3942,
  &quot;hours_watched&quot;: 59.8,
  &quot;number_of_videos&quot;: 8,
}
</code></pre>

### Project: By Date

You can use the stats API to get information about a project for a specific date range.

#### The Request

In order to get stats for a project during a range of dates, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/projects/&lt;project-id&gt;/by_date.json`

#### Parameters

Parameter | Description
----------|------------
start_date | The beginning of the date range. Use the following format to represent October 5th, 2012: '2012-10-05'.
end_date | The end of the date range. This parameter takes the same format as start_date.

#### The Response

The response will be an array of objects, with each object representing the information for a particular date.

#### Fields

Field | Description
------|------------
data_date | The date for which this object contains project data.
loads | The number of times any video from the project was loaded on the given date.
plays | The number of times any video from the project was played on the given date.
hours_watched | The total amount of time spent watching videos in the project on the given date.

## Media

### Media: Show

The Wistia stats API can be used to retrieve stats for any given video.

#### The Request

In order to get stats for a video, issue a **GET** request to the following URL:

`GET https://api.wistia.com/v1/stats/medias/&lt;media-id&gt;.json`

#### The Response

#### Fields

Field | Description
------|------------
loads | The total number of times this video has been loaded.
plays | The total number of times this video has been played.
play_rate | The percentage of visitors who clicked play (between 0 and 1).
hours_watched | The total time spent watching this video.
engagement | The average percentage of the video that gets viewed (between 0 and 1).
visitors | The total number of unique people that have loaded this video.

### Media: By Date

#### The Request

`GET https://api.wistia.com/v1/stats/medias/&lt;media-id&gt;/by_date.json`

#### Parameters

Parameter | Description
----------|------------
start_date | The beginning of the date range for which you want to retrieve data.
end_date | The end of the date range for which you want to retrieve data.

#### The Response

Each object in the response array will give the stats for 1 day's worth of data. The objects' fields are listed below:

#### Fields

Field | Description
------|------------
data_date | The date for which this object contains stats about the video.
loads | The number of times this video was loaded on the given day.
plays | The number of times this video was played on the given day.
hours_watched | The total time spent watching this video on the given day.

### Media: Engagement

Using the stats API, you can retrieve the data used to construct the engagement graphs at the top of the stats page for any video in Wistia.

#### The Request

`GET https://api.wistia.com/v1/stats/medias/&lt;media-id&gt;/engagement.json`

#### Parameters

This method does not take any parameters besides the media-id that is already specified in the URL.

#### The Response

The response will come back as a single object that represents the main engagement data:

#### Fields

Field | Description
------|------------
engagement | The percentage of the video that was viewed, averaged across all viewing sessions.

