---
special_category_link: developers
api: true
layout: post
title: The Customize API
description: Learn how to customize your videos with the API.
category: Developers
post_intro: <p>The Customize API lets you configure each video in your account with specific customizations. These customizations will apply to your video both in your account, and wherever you embed it.</p>
---

## Getting Started

The Customize API is a subset of the [Data API]({{ '/data-api' | post_url }}), so you should
look at that for information on how to get set up.


#### JSON vs. XML

The Customize API only responds with JSON, never XML. It expects data to be 
posted in JSON format too.

#### Prerequisites/Required Info

* Your user ID and password.
* The hashed ID of the video to customize.

## Customizations

### Customizations: Show

The Customize API allows you to see the customizations saved for your video.

#### Request

In order to tell Wistia that you want information about a specific video, send
an HTTP GET request to the following URL:

<code class="full_width">https://api.wistia.com/v1/medias/<media-id>/customizations.json</code>

Make sure you replace `<media-id>` with the hashed ID of the video you want.

#### Response

Assuming authentication is successful and the request is in good order, the
HTTP response will contain JSON that describes explicitly defined
customizations for the video.

#### Example JSON Response

The meaning of each option is explained in the
[Embed API]({{ '/embed-api' | post_url }}).

{% codeblock example_json_response.json %}
{
  "version":"v2",
  "playerColor":"ff0000",
  "stillUrl":"http://embed.wistia.com/deliveries/1429609c45371f6b8549900a044055090824c1d5.bin",
  "autoPlay":"false",
  "endVideoBehavior":"default",
  "playButton":"true",
  "smallPlayButton":"true",
  "volumeControl":"true",
  "fullscreenButton":"true",
  "playbar":"true",
  "controlsVisibleOnLoad":"true",
  "branding":"true",
  "plugin":{
    "socialbar-v1":{
      "buttons":"embed-twitter-facebook",
      "showTweetCount":"false",
      "tweetText":"{default}",
      "includeLinkback":"true",
      "height":"25"
    }
  }
}
{% endcodeblock %}

### Customizations: Create

The Customize API lets you replace the customizations for a video.

#### The Request

<code class="full_width">POST https://api.wistia.com/v1/medias/<media-id>/customizations.json</code>

Make sure you replace `<media-id>` with the hashed ID of the video that you
want to customize.

The raw post data is JSON representing the customizations that should be 
explicitly set for this video. These will replace the existing customizations 
for the video.

#### Example JSON Request

The meaning of each option is explained in the
[Embed API]({{ '/embed-api' | post_url }}).

{% codeblock example_json_request.json %}
POST /medias/hxsvasanee/customizations.json HTTP/1.1
Accept: application/json
Content-Type: application/json
Form Data:
{"playerColor":"ffffcc","controlsVisibleOnLoad":false}
{% endcodeblock %}

#### The Response

If the request is successful, the server will respond with a status of 201
Created, along with the saved customizations.

Note that the saved customization values will all be strings. These are
dynamically casted to the proper type on the client side.

#### Example JSON Response

{% codeblock example_json_response.json %}
{
  "playerColor":"ffffcc",
  "controlsVisibleOnLoad":"false"
}
{% endcodeblock %}

### Customizations: Update

The Customize API allows you to do partial updates on a video's customizations.

#### The Request

<code class="full_width">PUT https://api.wistia.com/v1/medias/<media-id>/customizations.json</code>

Make sure you replace `<media-id>` with the hashed ID of the video you want to
customize.

The raw post data is be JSON representing the customizations that should be 
explicitly set for this video.

If a value is `null`, then that key will be deleted from the saved
customizations. If it is not `null`, that value will be set.

#### Example JSON Request

The meaning of each option is explained in the
[Embed API]({{ '/embed-api' | post_url }}).

{% codeblock example_json_request.json %}
PUT /medias/hxsvasanee/customizations.json HTTP/1.1
Accept: application/json
Content-Type: application/json
Form Data:
{"playerColor":"77dd77","controlsVisibleOnLoad":null,"smallPlayButton":false}
{% endcodeblock %}

#### The Response

If the media update is successful, the server will respond with a status of 
200 OK, along with the saved customizations.

Note that the saved customizations will all be strings. These are dynamically 
casted to the proper type on the client side.

#### Example JSON Response

{% codeblock example_json_response.json %}
{
  "playerColor":"77dd77",
  "smallPlayButton":"false"
}
{% endcodeblock %}

### Customizations: Delete

The Customize API allows you to delete a video's customizations.

#### The Request

<code class="full_width">DELETE https://api.wistia.com/v1/medias/<media-id>/customizations.json</code>

Make sure you replace `<media-id>` with the hashed ID of the media that you
want to delete.

This method will wipe out all explicit customizations for a video, and it will 
act like it has never been customized.

#### Example JSON Request

{% codeblock example_json_request.json %}
DELETE /medias/hxsvasanee/customizations.json HTTP/1.1
Accept: application/json
Content-Type: application/json
{% endcodeblock %}

#### The Response

If the media update is successful, the server will respond with a status of 
200 OK, along with an empty hash for the saved customizations.

#### Example JSON Response

Since all the customizations have just been reset, it's expected that this 
is an empty hash.

{% codeblock example_json_response.json %}
{}
{% endcodeblock %}
