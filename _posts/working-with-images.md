---
layout: post
title: Working With Images
description: All the ways you can manipulate images returned by Wistia APIs.
category: For Developers
---

<div class="post_intro">
<p>
By just adjusting a few query string parameters on an image's URL, you can resize, crop, and rotate it.
</p>
<p>
This is especially useful when you're working with the <a href="{{ '/data-api' | post_url }}">Data API</a> 
or <a href="{{ '/oembed' | post_url }}">oEmbed endpoint</a> and want a video's 
thumbnail image at a different size.
</p>
</div>


## The Parameters

Cropping, resizing, rotating, or adding a Wistia play button onto an image is 
easy peasy. Here are the parameters you need to know about!

Parameter | Description | Default
----------|-------------|-----------
image_resize | Geometry string used to resize the image | 
image_crop | Geometry string used to crop the image (after it’s been resized) | 
image_crop_resized | Geometry string used to create an image of the exact specified size without distortion | 
image_play_button | Whether or not to overlay a play button in the middle of the image. Specify either true or false. | false
image_play_button_color | The color of the play button. Specify an RGB or RGBA hex color string. | 68656080
image_rotate | Rotate the image clockwise by the specified number of degrees. For example, a value of 180 would flip the image upside-down. |

"Geometry Strings" follow the the same format Image Magick uses for resizing and cropping images.
[Here is a good reference on geometry strings](http://www.simplesystems.org/RMagick/doc/imusage.html#geometry).

**NOTE** When you're adjusting these parameters, our servers have to create
these new images. In some cases, we can't make the new image immediately. When
this happens, we will return a 202 Accepted response instead of the new image.
Meanwhile, our server farm will be crunching away, creating that image for you
so the next time you hit that URL it will be ready! So if you are playing
around with these parameters in your browser and don't see the new image right
away, don't worry. Just keep refreshing and it will be there soon (usually 
within 30 seconds).


## Examples

Let's start with this image of Brendan's face:

[http://embed.wistia.com/deliveries/a93c826fb3ce00dd6ac2182ed0d8bb73293c48bd.jpg](http://embed.wistia.com/deliveries/a93c826fb3ce00dd6ac2182ed0d8bb73293c48bd.jpg)

What if we want a mini Brendan that's exactly 100x50 pixels? We use the `image_crop_resized` parameter like this: 

[http://embed.wistia.com/deliveries/a93c826fb3ce00dd6ac2182ed0d8bb73293c48bd.jpg?image_crop_resized=100x50](http://embed.wistia.com/deliveries/a93c826fb3ce00dd6ac2182ed0d8bb73293c48bd.jpg?image_crop_resized=100x50)

Now let's say we want a sideways Brendan that's 200 pixels wide. We can use `image_rotate` and `image_resize`: 

[http://embed.wistia.com/deliveries/a93c826fb3ce00dd6ac2182ed0d8bb73293c48bd.jpg?image_rotate=90&image_resize=200](http://embed.wistia.com/deliveries/a93c826fb3ce00dd6ac2182ed0d8bb73293c48bd.jpg?image_rotate=90&image_resize=200)

And finally, let's put a pink play button on him with `image_play_button` and `image_play_button_color`: 

[http://embed.wistia.com/deliveries/a93c826fb3ce00dd6ac2182ed0d8bb73293c48bd.jpg?image_play_button=true&image_play_button_color=FF5CCDA0](http://embed.wistia.com/deliveries/a93c826fb3ce00dd6ac2182ed0d8bb73293c48bd.jpg?image_play_button=true&image_play_button_color=FF5CCDA0)



## Using oEmbed

When using the oEmbed endpoint, part of the JSON returned is the
`thumbnail_url`. By parsing that and appending parameters (listed above), we
can generate a thumbnail image (for a custom popover implementation, or for
showing decoratively on the page).  

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

That thumbnail includes `?image_crop_resized=640x360` by default. You
desperately want to resize it to be 450 pixels wide. No problem! We'll use the
`image_resize` parameter:

{% codeblock playlist_api.js %}
thumbnail_url = json_object.thumbnail_url + '&' + 'image_resize=450'
{% endcodeblock %}

We could have also "chopped off" the existing `image_crop_resized` parameter
first, and then appended the `image_resize` using a `?` instead of an
ampersand.

## Using the Wistia Data API Ruby Gem

When making a request against the [Data API]({{ '/data-api' | post_url }}), the
media assets includes a still image (the thumbnail!).

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

You can then apply the same geometry strings to the thumbnail URL.
You'll also have to change that `.bin` extension to `.jpg`.

{% codeblock ruby_gem.rb %}
name  = url.chomp(File.extname(url)) + ".jpg?image_crop_resized=640x360"
=> "http://embed.wistia.com/deliveries/b300126144f62ba2942ec4a4f29e949a47e16f12.jpg?image_crop_resized=640x360"
{% endcodeblock %}

Pretty fun, right?


