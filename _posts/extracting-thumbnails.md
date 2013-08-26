---
layout: post
title: Extracting Thumbnails from a Video
description: Generate thumbnails at different times in a video using the Wistia API.
category: For Developers
---

<div class="post_intro">
<p>
Once you have the direct URL of a video in Wistia, you can easily extract thumbnails 
from it and resize them.
</p>
</div>


## Getting the Asset URL

In order to extract a thumbnail, we first need to get the video's URL.

To do this, use the <a href="{{ '/data-api' | post_url }}">Data API</a> -- 
specifically the <a href="{{ '/data-api' | post_url }}#media_show">Media#show endpoint</a>.

The response to that request will include a list of assets for the video. 
You should probably take the URL for the `HdMp4Video` asset or one of the other 
higher resolution formats. But if the thumbnail you're making will ultimately 
be resized down, you can also use the `IPhoneVideoFile` or something of a 
more modest resolution.


## Extracting the Thumbnail

Once we have our video URL, we just change the format to `.jpg` and append 
a `video_still_time` parameter.

So say we have this video URL:

[http://embed.wistia.com/deliveries/5413caeac5fdf4064a2f9eab5c10a0848e42f19f.bin](http://embed.wistia.com/deliveries/5413caeac5fdf4064a2f9eab5c10a0848e42f19f.bin)

And we want to get a thumbnail from 10 seconds into the video. We change the 
`.bin` to `.jpg` and append `?video_still_time=10` to it, like this:

[http://embed.wistia.com/deliveries/5413caeac5fdf4064a2f9eab5c10a0848e42f19f.jpg?video_still_time=10](http://embed.wistia.com/deliveries/5413caeac5fdf4064a2f9eab5c10a0848e42f19f.jpg?video_still_time=10)

That was easy!

**NOTE** Extracting thumbnails like this isn't instaneous. In most cases, our 
system will have to pull the original video file out of storage to operate on it.
When this happens, we will return a 202 Accepted response instead of the 
thumbnail image when you hit that URL, and in the background our servers will be 
extracting the thumbnail for you. This usually takes anywhere from 15 seconds 
to a few minutes depending on the size of the video file you're pulling the 
thumbnail from.

So if you're displaying a new thumbnail image to users and want to make sure 
they don't see a blank image, it's best to fire off that request in advance so 
that by the time they request it, the image will already be ready!


## Cropping and Resizing Thumbnails

Want to also resize the thumbnails you get back? You can just tack on some extra
query string parameters and we'll resize it for you.

Say you want a 100x60 version of the example above. Just add in `image_crop_resized=100x60` like this:

[http://embed.wistia.com/deliveries/5413caeac5fdf4064a2f9eab5c10a0848e42f19f.jpg?video_still_time=10&image_crop_resized=100x60](http://embed.wistia.com/deliveries/5413caeac5fdf4064a2f9eab5c10a0848e42f19f.jpg?video_still_time=10&image_crop_resized=100x60)

For the full list of image options see: 
<a href="{{ '/working-with-images' | post_url }}">Working with Images</a>.
