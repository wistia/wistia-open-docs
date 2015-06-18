---
title: Optimal Export Settings
layout: post
category: Getting Set Up
description: Get the low down on our recommended file settings when finishing up your videos.
post_intro: <p>Before you start uploading to your Wistia account, get familiar with our recommendations for video resolution, settings, and formats. This will make uploading a painless experience, and you will end up with top quality web encodes for your videos!</p>
---

Wistia does have a few specifications and guidelines we recommend following in order to obtain the best performance using our service.

<div class="exporting_guide_box">
<h3>
  <i class="icon-facetime-video"></i>
  Video
</h3>
<ul>
<li>Codec: <span class="answer">h.264</span></li>
<li>Resolution: <span class="answer">between 640px and 3840px (4K) wide</span></li>
<li>Bitrate: <span class="answer">5,000 - 10,000 kbps</span></li>
<li>Aspect Ratio: <span class="answer">Get crazy! We accept videos of any aspect ratio.</span></li>
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
<li>Sample Rate: <span class="answer">44.1 kHz</span></li>
<li>Channels: <span class="answer">2-channel Stereo <em>(not surround)</em></span></li>
</ul>
</div>

**And now, a little more explanation on why these settings are preferable:**

After you upload a video, we perform encoding on it - creating multiple derivatives for different use cases and environments (like mobile devices) and we also get these versions ready to play on the web. We have video type detection and encoding settings (what we call *Smart Encoding*) so that live-action videos look great, and longer videos that require fine detail (like Webinars) will be as efficient a file-size as possible (for smooth playback).

The largest resolution we create is 4K, or 3840px by 2160px.  If you upload a 4K video, we're going to create the following derivatives:

Derivative | Bitrate
-----------|---------
3840p x 2160p | 7,500 kbps
1080 x 1920p | 3,750 kbps
720 x 1280p | 2,500 kbps
720 x 1280p (flash) | 2,500 kbps
540 x 960p | 1,200 kbps
540 x 960p (flash) | 1,200 kbps
360 x 640p | 700 kbps
360 x 640p (flash) | 700 kbps
224 x 400p | 200 kbps



----
## How Wistia Does HD

Because the way we do HD is a little different than most, it bears mentioning.

When your viewers watch a video at 'embedding' size (640px - 960px wide) it is a waste of bandwidth to show them HD - at that size, the difference in picture is nearly imperceptible.  The HD files are also much *much* larger, which means the viewer can also have that stuttering playback experience. Not good. Instead, we have chosen smart standard definition defaults (what we call *Smart Encoding*) based on your video type (i.e. screencast, action, interview) and that is the version that is shown.

_Auto-HD_ takes over when the viewer 'full screens' the video.  At the larger size, the quality difference is definitely apparent.  We do a background bandwidth test to make sure the viewer's download speed is fast enough to support the HD video smoothly, and if so, the stream automatically switches over.

Currently, the highest resolution Wistia will display by default (when we detect that a person's Internet connection speed will support it well enough) is 720p HD. Viewers who want even higher quality can right-click on the video to manually select a higher resolution. If you'd like to have your videos _automatically_ play at higher quality, check out the Video Quality section in the Account tab of your settings. (And note that only the Account Owner can access that area!) 

{{ "<strong>Quick sidebar on mobile devices:</strong> Because of the way iPhones handle 'streaming media' (i.e. playing them all full screen), we do not show HD files on iPhones or Android devices.  iPads, on the other hand, do support HD media, so we'll be able to deliver an HD asset." | note }}

----
## Formats Wistia Supports

Our bakery (where the encoding magic happens) accepts most of the common file formats (see a partial list below), but **for most consistent performance we generally recommend exporting files in MP4 format**. 

If a file type is not supported (or recognized), users will simply be able to download the file.

Media Type | Formats Accepted
-----------|------------------
Video | MOV, MPG, AVI, FLV, F4V, MP4, M4V, ASF, WMV, VOB, MOD, 3GP, MKV, DIVX, XVID
Audio | MP3, WAV, AIF, AU, M4A
Documents | PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX
Images | JPG, PNG, GIF, TIFF, BMP, DCM

{{ "Only videos are embeddable. You're welcome to upload different file types, but we only supply embed codes for videos." | note }}


----
## A Note on File Sizes

The standard Wistia upload function supports files up to **2 Gigabytes** in size. It is possible to upload larger files using the [Simple Uploader]({{ '/simple-uploader' | post_url }}), but this is not recommended. Wistia transcodes all video before it can be shared, so that your viewers have the best playback experience possible. Part of the transcoding process is compressing the video using an efficient codec like FLV and MP4. As a result, the quality of your original upload matters only up to a certain point.

**We recommend adhering to 1280px wide and 5,000 - 10,000 kbps as the max settings for upload, as it will reduce the likeliness of upload errors**. If you find yourself with a short video (under 2 hours) that is larger than 2GB, it's likely something has gone wrong or a compression step was missed.

----
## Exporting Guides

Looking for help exporting from software like Final Cut Pro, Screenflow, or Camtasia? Head over to our [exporting guides]({{ '/exporting-guide' | post_url }}).
