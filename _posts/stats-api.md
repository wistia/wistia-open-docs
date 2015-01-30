---
layout: post
api: true
api_warning: true
special_category_link: developers
category: Developers
title: Stats API
description: Learn how to access your stats via our API.
post_intro: "<p>Ever looked at your Wistia heatmaps and wished you could show them to other people with ease? Ever looked at your Wistia heatmaps and wished that they were built out of purple cats instead of red, yellow, and green bars?</p><p>Want to figure out which of your Wistia videos your users have already viewed and recommend them ones they haven't so they don't get bored?</p><p>Want to make sure you purposely recommend the same videos repeatedly until they're annoyed enough to convert?</p><p>Look no further, developers: <strong>the Wistia Stats API has you covered</strong>.</p>"
---

## Account

### Account: Show

The stats API allows you to retrieve some account-wide information. Don't buy a 
nice car to overcompensate; instead, show off how many hours of your video have 
been played! Or, celebrate when you reach a certain landmark.

#### The Request

In order to tell Wistia that you want stats for your account, issue a **GET** 
request to the following URL:

<code class="full_width">GET https://api.wistia.com/v1/stats/account.json</code>

#### The Response

Field | Description
------|------------
load_count | The total number of times all of the videos from this account have been loaded.
play_count | The total number of times all of the videos from this account have been played.
hours_watched | The total amount of time spent watching all of the videos in this account.

#### Example JSON Response

**Status:** 200 OK

{% codeblock wistia.json %}
  {
    "load_count": 1000,
    "play_count": 400,
    "hours_watched": 21.9
  }
{% endcodeblock %}

### Account: By Date

You can also get account-wide stats for a particular date range. No, not _that_ kind 
of date -- you'll still have to figure those out for yourself. Neeeerd.

#### The Request

In order to tell Wistia that you want account-wide stats for a particular date range, 
issue a **GET** request to the following URL:

<code class="full_width">GET https://api.wistia.com/v1/stats/account/by_date.json?start_date=[start date]&end_date=[end date]</code>

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

{% codeblock example_json.json %}
[
  {
    "date": "2012-10-09",
    "load_count": 100,
    "play_count": 80,
    "hours_watched": 21.9
  },
  {
    "date": "2012-10-08",
    "load_count": 60,
    "play_count": 45,
    "hours_watched": 12.4
  }
]
{% endcodeblock %}

## Project

### Project: Show

The stats API allows you to retrieve information about all of the videos in a 
particular project. We know you like it when we let you get specific.

#### The Request

In order to retrieve stats for a project, issue a **GET** request to the following URL
(you can find the Project ID in the URL for that project):

<code class="full_width">GET https://api.wistia.com/v1/stats/projects/[project-id].json</code>

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

{% codeblock example_json.json %}
{
  "load_count": 5498,
  "play_count": 3942,
  "hours_watched": 59.8,
  "number_of_videos": 8,
}
{% endcodeblock %}

### Project: By Date

You can use the stats API to get information about a project for a specific date range. 

#### The Request

In order to get stats for a project during a range of dates, issue a **GET** request 
to the following URL:

<code class="full_width">GET https://api.wistia.com/v1/stats/projects/[project-id]/by_date.json</code>

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

{% codeblock example_json_response.json %}
[
  {
    "date": '2012-11-20',
    "load_count": 5498,
    "play_count": 3942,
    "hours_watched": 59.8
  },
  {
    "date": '2012-11-21',
    "load_count": 3568,
    "play_count": 1941,
    "hours_watched": 32.4
  },
]
{% endcodeblock %}

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

<code class="full_width">GET https://api.wistia.com/v1/stats/medias/[media-id].json</code>

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

{% codeblock example_json_response.json %}
{
  "load_count": 100,
  "play_count": 80,
  "play_rate": 0.54,
  "hours_watched": 21.9,
  "engagement": 0.89,
  "visitors": 94
}
{% endcodeblock %}

### Media: By Date

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/stats/medias/[media-id]/by_date.json</code>

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

{% codeblock example_json_response.json %}
[
  {
    "date": '2012-10-21',
    "load_count": 100,
    "play_count": 80,
    "hours_watched": 21.9
  },
  {
    "date": '2012-10-22',
    "load_count": 140,
    "play_count": 96,
    "hours_watched": 26.9
  }
]
{% endcodeblock %}

### Media: Engagement

Using the stats API, you can retrieve the data used to construct the engagement 
graphs at the top of the stats page for any video in Wistia.

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/stats/medias/[media-id]/engagement.json</code>

#### Parameters

This method does not take any parameters besides the media-id that is already specified in the URL.

#### The Response

The response will come back as a single object that represents the main engagement data:

Field | Description
------|------------
engagement | The percentage of the video that was viewed, averaged across all viewing sessions.
engagement_data | An array which can be used as the data source for creating an engagement graph. Normally, each cell in the array represents how many times 1 second of the video has been viewed. However, for longer form content (over 1000 seconds), the array will be scaled down to 1000 items, with each item representing more than 1 second of playback.
rewatch_data | An array which can be used for creating the rewatch block on an engagement graph. Normally, each cell in the array represents how many times 1 second of the video has been viewed. However, for longer form content (over 1000 seconds), the array will be scaled down to 1000 items, with each item representing more than 1 second of playback.

#### Example JSON Response

**Status:** 200 OK

{% codeblock example_json_response.json %}
{
  "engagement": 0.75,
  "engagement_data": [ 154, 152, 152, 151, 148, ... ],
  "rewatch_data": [ 13, 17, 19, 19, 15, ... ]
}
{% endcodeblock %}

## Visitors

### Visitors: List

This method allows you to retrieve a list of visitors that have watched videos in your account.

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/stats/visitors.json</code>

#### Parameters

Parameter | Description
----------|------------
page | The page of results that you want, based on the per_page parameter.
per_page | The maximum number of results to return. This value is capped at 100.
filter | This parameter is optional and can take one of two values: 'has_name' or 'has_email'. Without the parameter, all visitors are returned. For the value 'has_name', only named visitors are returned. For the value 'has_email', only visitors with an email address are returned.
search | If this parameter is specified, only visitors whose name or email address matches exactly with the given value will be returned.

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

{% codeblock example_json_response.json %}
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
{% endcodeblock %}

### Visitors: Show

This method allows you to retrieve the information for a single visitor.

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/stats/visitors/[visitor-key].json</code>

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

{% codeblock example_json_response.json %}
{
  "visitor_key": "E4E7613B5C24CB0F1F7C0A1E4E874635E752263E",
  "created_at": "2012-12-12T01:51:36Z",
  "last_active_at": "2012-12-12T03:15:56Z",
  "last_event_key": "1355282055737f0.4801975437439978",
  "load_count": 3,
  "play_count": 2,
  "visitor_identity": { "name": "Jim", "email": "jim@example.com" }
}
{% endcodeblock %}

## Events

### Events: List

This method allows you to retrieve a list of events (viewing sessions) from your account.

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/stats/events.json</code>

#### Parameters

Parameter | Description
----------|------------
media_id  | An optional parameter specifying the video for which you would like to retrieve events.
visitor_key | An optional parameter specifying the visitor for which you would like to retrieve events.
per_page | The maximum number of events to retrieve. This number is capped at 100. If you need to get more than 100 events, please issue multiple requests.
page | The page of events to get data from, based on the per_page parameter.
start_date | An optional parameter indicating that events should only be returned after the given date. Takes the format '2012-11-25'.
end_date | An optional parameter indicating that events should only be returned before the given date. Takes the format '2012-11-25'.

#### The Response

The response will be an array of objects. Each one represents a single viewing 
session (event) and has the following fields:

Field | Description
------|------------
received_at | The date and time that the event happened.
event_key | The ID for that event.
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

{% codeblock example_json_response.json %}
[
  {
    "received_at": "2014-01-27T22:42:53Z",
    "event_key": "1390862572596e0.8447021404281259",
    "ip": "64.95.172.26",
    "country": "US",
    "region": "WA",
    "city": "Seattle",
    "lat": 47.6103,
    "lon": -122.334,
    "org": "Onvia.com",
    "email": null,
    "percent_viewed": 0.22457664233576624,
    "embed_url": "http://wistia.github.io/demobin/post-roll-video-play/",
    "conversion_type": "",
    "conversion_data": "",
    "iframe_heatmap_url": "https://api.wistia.com/v1/stats/events/1390862572596e0.8447021404281259/iframe.html?public_token=xxxxxx",
    "visitor_key": "B6D1F47963577AF26697138FAB75BD1B7086697B",
    "media_id": "993554ba94",
    "media_name": "How They Work - Help Scout",
    "media_url": "https://jeff.wistia.com/medias/993554ba94",
    "thumbnail": {
      "url": "http://embed.wistia.com/deliveries/48fbdd30054000aa548938ef436dfb1a190d34c5.bin",
      "width": 640,
      "height": 360,
      "fileSize": 32720,
      "contentType": "image/jpeg",
      "type": "StillImageFile"
    }
  },
  {
    "received_at": "2014-01-27T20:54:31Z",
    "event_key": "1390856239396e0.3702384910728902",
    "ip": "186.137.141.112",
    "country": "AR",
    "region": "07",
    "city": "Buenos Aires",
    "lat": -34.5875,
    "lon": -58.6725,
    "org": "CABLEVISION S.A.",
    "email": null,
    "percent_viewed": 0.04356993736951984,
    "embed_url": "http://wistia.github.io/demobin/multiple-plays-at-once/",
    "conversion_type": "",
    "conversion_data": "",
    "iframe_heatmap_url": "https://api.wistia.com/v1/stats/events/1390856239396e0.3702384910728902/iframe.html?public_token=xxxxxx",
    "visitor_key": "7C1125427A252C6DE06FDC2B007712911DAF17B7",
    "media_id": "r2wybv7xr0",
    "media_name": "2012 Recap",
    "media_url": "https://jeff.wistia.com/medias/r2wybv7xr0",
    "thumbnail": {
      "url": "http://embed.wistia.com/deliveries/34d01c07ff2da906b092c8ba1c75b0c345006340.bin",
      "width": 1280,
      "height": 720,
      "fileSize": 191752,
      "contentType": "image/jpeg",
      "type": "StillImageFile"
    }
  }
]
{% endcodeblock %}

### Events: Show

This method gives you the information about a single event from your account.

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/stats/events/[event-key].json</code>

#### Parameters

This method does not take any parameters other than the event key already specified in the URL.

#### The Response

The response will be a single object representing the information about the event. 
The format and fields of this object will be the same as can be found in the 
Events: List method.

#### Example JSON Response

**Status:** 200 OK

{% codeblock example_json_response.json %}
{
  "received_at": "2014-01-27T22:42:53Z",
  "event_key": "1390862572596e0.8447021404281259",
  "ip": "64.95.172.26",
  "country": "US",
  "region": "WA",
  "city": "Seattle",
  "lat": 47.6103,
  "lon": -122.334,
  "org": "Onvia.com",
  "email": null,
  "percent_viewed": 0.22457664233576624,
  "embed_url": "http://wistia.github.io/demobin/post-roll-video-play/",
  "conversion_type": "",
  "conversion_data": "",
  "iframe_heatmap_url": "https://api.wistia.com/v1/stats/events/1390862572596e0.8447021404281259/iframe.html?public_token=xxxxxxx",
  "visitor_key": "B6D1F47963577AF26697138FAB75BD1B7086697B",
  "media_id": "993554ba94",
  "media_name": "How They Work - Help Scout",
  "media_url": "https://jeff.wistia.com/medias/993554ba94",
  "thumbnail": {
    "url": "http://embed.wistia.com/deliveries/48fbdd30054000aa548938ef436dfb1a190d34c5.bin",
    "width": 640,
    "height": 360,
    "fileSize": 32720,
    "contentType": "image/jpeg",
    "type": "StillImageFile"
  }
}
{% endcodeblock %}

### Events: Heatmap

You can get the heatmap for any event by constructing the following URL:

<code class="full_width">GET https://api.wistia.com/v1/stats/events/[event-key]/iframe.html?public_token=[public_token]</code>

Replace the `<event-key>` token with the event_key that indicates which 
heatmap you would like to see. You can get the `<event-key>` value from 
other parts of this API or from the Wistia player itself.

Make sure you also provide your account's `<public_token>` as a parameter. You 
can find your `<public_token>` by clicking on **API** in your Account Settings.

This URL is meant to be used as the target of an iframe which can then be used 
to render the heatmap within your own pages.

Here is an example heatmap embedded right into this page:

<iframe src="https://api.wistia.com/v1/stats/events/1355283144880f0.12204939918592572/iframe.html?public_token=p5j1mnpakv" height="70" width="100%"></iframe>

Here is the code that we used to embed the heatmap:

{% codeblock heatmap_example.html %}
<iframe src="https://api.wistia.com/v1/stats/events/1355283144880f0.12204939918592572/iframe.html?public_token=p5j1mnpakv" height="70" width="100%" style="border: solid 2px black;"></iframe>
{% endcodeblock %}

