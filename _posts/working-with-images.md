---
layout: post
title: Working With Images
description: All the ways you can manipulate images returned by Wistia APIs.
category: For Developers
---

<div class="post_intro">
<p>
When working with the <a href="{{ '/data-api' | post_url }}">Wistia Data API and <a href="{{ '/oembed' | post_url }}">oEmbed endpoint</a>, it is possible to control the thumbnail image that is returned.
</p>
</div>

For example, the oEmbed endpoint is designed to return a thumbnail without the Wistia play button overlaid (for use in applications that utilize their own play button). Adding back in the Wistia play button, updating the color, and cropping/re-sizing is no problem!

Parameter | Description | Default
----------|-------------|-----------
image_resize | geometry string used to resize the image | 
image_crop | geometry string used to crop the image (after it’s been resized) | 
image_crop_resized | geometry string used to create an image of the exact specified size without distortion | 
image_play_button | true or false | false
image_play_button_color | RGB or RGBA hex color string | 68656080


"Geometry Strings" follow the the same format Image Magick uses for resizing and cropping images.
[Here is a good reference on geometry strings](http://www.simplesystems.org/RMagick/doc/imusage.html#geometry).

## Using oEmbed

When using the oEmbed endpoint, part of the JSON returned is the `thumbnail_url`. By parsing that and appending parameters (listed above), we can generate a thumbnail image (for a custom popover implementation, or for showing decoratively on the page).

First, we'll make the oEmbed request:

<code class="full_width">http://fast.wistia.net/oembed?url=http%3A//home.wistia.com/medias/e4a27b971d</code>

The JSON returned:

{% codeblock working-with-images.json %}
{
  "version":"1.0",
  "type":"video",
  "html":"<iframe src=\"http://fast.wistia.net/embed/iframe/e4a27b971d?version=v1&videoHeight=360&videoWidth=640\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" class=\"wistia_embed\" name=\"wistia_embed\" width=\"640\" height=\"360\"></iframe>",
  "width":640,
  "height":360,
  "provider_name":"Wistia, Inc.",
  "provider_url":"http://wistia.com",
  "title":"Brendan - Make It Clap",
  "thumbnail_url":"http://embed.wistia.com/deliveries/2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg?image_crop_resized=640x360",
  "thumbnail_width":640,
  "thumbnail_height":360,
  "duration":16.43
}
{% endcodeblock %}

Parse out that `thumbnail_url`!

{% codeblock playlist_api.js %}
thumbnail_url = json_object.thumbnail_url
=> "http://embed.wistia.com/deliveries/2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg?image_crop_resized=640x360"
{% endcodeblock %}

That thumbnail includes `?image_crop_resized=640x360` by default. You desperately want to resize it to be 450 pixels wide. No problem! We'll use the `image_resize` parameter:

{% codeblock playlist_api.js %}
thumbnail_url = json_object.thumbnail_url + '&' + 'image_resize=450'
{% endcodeblock %}

We could have also "chopped off" the existing `image_crop_resized` parameter first, and then appended the `image_resize` using a `?` instead of an ampersand.

## Using the Wistia Data API Ruby Gem

When making a request against the [Data API]({{ '/data-api' | post_url }}), the media assets includes a still image (the thumbnail!).

{% codeblock ruby_gem.rb %}
m = Wistia::Media.first
m.assets.select{ |a| a.attributes["type"] == "StillImageFile" }.first
=> #<Wistia::Media::Asset:0x007fa67caced68 @attributes={
    "url"=>"http://embed.wistia.com/deliveries/b300126144f62ba2942ec4a4f29e949a47e16f12.bin",
    "width"=>640, "height"=>360, "fileSize"=>48442, "contentType"=>"image/jpeg", 
    "type"=>"StillImageFile"
  }, @prefix_options={}, @persisted=false>
url = _.url
=> "http://embed.wistia.com/deliveries/b300126144f62ba2942ec4a4f29e949a47e16f12.bin"
{% endcodeblock %}

You can then apply the same geometry strings to the thumbnail URL - I would recommend updating the extension as well.

{% codeblock ruby_gem.rb %}
name  = url.chomp(File.extname(url)) + ".jpg?image_crop_resized=640x360"
=> "http://embed.wistia.com/deliveries/b300126144f62ba2942ec4a4f29e949a47e16f12.jpg?image_crop_resized=640x360"
{% endcodeblock %}

Pretty fun, right?

## Other Examples

Here are some other examples, just for kicks!

What you want to do     | Query string to do it
------------------------|--------------------------
Resize the image to be 400 pixels wide | ?image_resize=400
Create a thumbnail that's exactly 450x200 pixels | ?image_crop_resized=450x200
Resize an image to 640 px wide, but if it's less than 640px leave it alone | ?image_resize=640>

