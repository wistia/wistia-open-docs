---
title: Optimal Export Settings
layout: post
category: Getting Set Up
description: Get the low down on our recommended file settings when finishing up your videos.
post_intro: <p>Before you start uploading to your Wistia account, get familiar with our recommendations for video resolution, settings, and formats.</p><p>This will make uploading a painless experience, and you will end up with top quality web encodes for your videos!</p>
---

Wistia does have a few specifications and guidelines we recommend following in order to obtain the best performance using our service.

<div class="exporting_guide_box">
<h3>
  <i class="icon-facetime-video"></i>
  Video
</h3>
<ul>
<li>Codec: <span class="answer">h.264</span></li>
<li>Resolution: <span class="answer">between 640px and 1280px wide</span></li>
<li>Bitrate: <span class="answer">2,000 - 5,000kbps</span></li>
<li>Aspect Ratio: <span class="answer">Get Crazy! We accept videos of any aspect ratio.</span></li>
</ul>
</div>

<p></p>

<div class="exporting_guide_box">
<h3>
  <i class="icon-volume-up"></i>
  Audio
</h3>
<ul>
<li>Codec: <span class="answer">AAC (Advanced Audio Codec)</span></li>
<li>Sample Rate: <span class="answer">44.1mhz</span></li>
<li>Channels: <span class="answer">2-channel Stereo <em>(not surround)</em></span></li>
</ul>
</div>

**And now, a little more explanation on why these settings are preferable:**

After you upload a video, we perform encoding on it - creating multiple derivatives for different use cases and environments (like iOS devices) and we also get these versions ready to stream on the web. We have video type detection and encoding settings (what we call *Smart Encoding*) so that live-action videos look great, and longer videos that require fine detail (like Webinars) will be as efficient a file-size as possible (for smooth playback).

The largest resolution we create is 720p, or *1280px by 720px*.  If you upload any video larger than 1280px wide, we're going to create the following derivatives:

* 1280px wide HD
* 960px wide MD
* 640px wide SD
* iPhone
* HD iPhone (for iPad3)

We recommend uploading video at 1280px wide because it is the most efficient approach - your original files won't be taking up extra space in your account, and your uploading/processing times will be as speedy as possible as well.

----
## How Wistia Does HD

Because the way we do HD is a little different than more, it bears mentioning.

When your viewers watch a video at 'embedding' size (640px - 960px wide) it is a waste of bandwidth to show them HD - at that size, the difference in picture is nearly imperceptible.  The HD files are also much *much* larger, which means the viewer can also have that stuttering playback experience. Not good. Instead, we have chosen smart standard definition defaults (what we call *Smart Encoding*) based on your video type (i.e. screencast, action, interview) and that is the version that is shown.

Auto-HD takes over when the viewer 'full screens' the video.  At the larger size, the quality difference is definitely apparent.  We do a background bandwidth test, to make sure the viewer's download speed is fast enough to support the HD video smoothly, and if so, the stream automatically switches over.

{{ "<strong>Quick sidebar on mobile devices:</strong> Because of the way iPhones handle 'streaming media' (i.e. playing them all full screen), we do not show HD files on iPhones or Android devices.  iPads, on the other hand, do support HD media, and we have created a Retina-friendly version for the iPad 3." | note }}

----
## Formats Wistia Supports

Our bakery (where the encoding magic happens) accepts most of the common file formats (see a partial list below), but *for most consistent performance we generally recommend exporting files in an MP4 or MOV format*. 

If a file type is not supported (or recognized), users will simply be able to download the file.

Media Type | Formats Accepted
-----------|------------------
Video | MOV, MPG, AVI, FLV, F4V, MP4, M4V, ASF, WMV, VOB, MOD, 3GP, MKV, DIVX, XVID
Audio | MP3, WAV, AIF, AU, M4A
Documents | PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX
Images | JPG, PNG, GIF, TIFF, BMP, DCM


----
## A Note on File Sizes

The standard Wistia upload function supports files up to **2 Gigabytes** in size. It is possible to upload larger files using the [Simple Uploader]({{ '/simple-uploader' | post_url }}), but this is not recommended. Wistia transcodes all video before it can be shared, so that your viewers have the best playback experience possible. Part of the transcoding process is compressing the video using an efficient codec like FLV and MP4. As a result, the quality of your original upload matters only up to a certain point.

**We recommend adhering to 1280px wide and 3 - 5,000kbps as the max settings for upload, as it will reduce the likeliness of upload errors**. If you find yourself with a short video (under 2 hours) that is larger than 2GB, it's likely something has gone wrong or a compression step was missed.

----
## Exporting Guides

Looking for help exporting from software like Final Cut Pro, Screenflow, or Camtasia? Head over to our [exporting guides]({{ '/exporting-guide' | post_url }}).
