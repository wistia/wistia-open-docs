---
layout: post
title: Working With Images
description: All the ways you can manipulate images returned by Wistia APIs.
category: for_developers
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

### Using oEmbed

When using the oEmbed endpoint, part of the JSON returned is the `thumbnail_url`. By parsing that and appending parameters (listed above), we can generate a thumbnail image (for a custom popover implementation, or for showing decoratively on the page).

First, we'll make the oEmbed request:

<pre><code class="language-markup">http://fast.wistia.com/oembed?url=http%3A//home.wistia.com/medias/e4a27b971d</code></pre>

The JSON returned:

<pre><code class="language-json">
{
  "version":"1.0",
  "type":"video",
  "html":"<iframe src=\"http://fast.wistia.com/embed/iframe/e4a27b971d?version=v1&videoHeight=360&videoWidth=640\" allowtransparency=\"true\" frameborder=\"0\" scrolling=\"no\" class=\"wistia_embed\" name=\"wistia_embed\" width=\"640\" height=\"360\"></iframe>",
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
</code></pre>

Parse out that `thumbnail_url`!

<pre><code class="language-javascript">
thumbnail_url = json_object.thumbnail_url
=> "http://embed.wistia.com/deliveries/2d2c14e15face1e0cc7aac98ebd5b6f040b950b5.jpg?image_crop_resized=640x360"
</code></pre>

That thumbnail includes `?image_crop_resized=640x360` by default. You desperately want to resize it to be 450 pixels wide. No problem! We'll use the `image_resize` parameter:

<pre><code class="language-javascript">
thumbnail_url = json_object.thumbnail_url + '&' + 'image_resize=450'
</code></pre>

We could have also "chopped off" the existing `image_crop_resized` parameter first, and then appended the `image_resize` using a `?` instead of an ampersand.

### Other Examples

Here are some other examples, just for kicks!

What you want to do     | Query string to do it
------------------------|--------------------------
Resize the image to be 400 pixels wide | ?image_resize=400
Create a thumbnail that's exactly 450x200 pixels | ?image_crop_resized=450x200
Resize an image to 640 px wide, but if it's less than 640px leave it alone | ?image_resize=640>

