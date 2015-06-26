---
title: Exporting from Video Editors
layout: post
category: Getting Set Up
description: Get the skinny on using specific software to export video for uploading to Wistia.
post_intro: <p>We know just enough to be dangerous about most video export software. Here's our tips and tricks to using them.</p><p>Looking for a guide to optimal export <em>settings</em>? You should also see our <a href="/doc/export-settings">export settings</a> page.</p><p>If you're looking for free video transcoding software, we recommend <a href="#handbrake">Handbrake</a>.</p>
---

----
## Final Cut Pro X

There are three ways to export video for use on Wistia from Final Cut Pro: 

* [Sharing from Final Cut Pro](#sharing_from_final_cut_pro), 
* [using Compressor as a standalone application](#using_compressor_as_a_standalone_application), or 
* sending from [Final Cut Pro to Compressor](#final_cut_pro_to_compressor).

To make things even easier, we've also put together an awesome 
[Wistia preset](#the_wistia_final_cut_pro_preset) for you to download. We know. 
You're welcome. :)

### Sharing From Final Cut Pro

>> insert video 

Exporting videos for Wistia from Final Cut Pro is pretty straightforward.

First, select a clip or sequence in the Browser, or open a sequence in the Timeline. 
From there choose **File** > **Share** > **Export File**.

If **Export File** isn't in the **Share** list, you'll have to add it as a destination.
Go to **File** > **Share** > **Add Destination**. Once here, double click 
 **Export File** in the list of options and close the window.

In the Export File menu, under **Settings**, change the format from Video & Audio 
to **Computer**. This will change the codec to an H.264 MP4 file. (AKA, Wistia's favorite
setting.)

Next, make sure the resolution is set to **1080p**, and that the Video Codec is 
set to **Better Quality** and not Faster Encode. This means the video will export at 
a higher bit rate.

Then, click **Next**, and choose where you want this file to export to. After it's 
done exporting, you're good to upload it to Wistia. Look at you go!


### Using Compressor as a standalone application

To use Compressor as a standalone application, you must first create a QuickTime 
movie file to submit to Compressor. Since this will only be a temporary 
intermediate file, we recommend creating a QuickTime reference movie. These can 
be created quicker and takes up less space than a standard QuickTime movie. This 
is because the video refers to your sequence's original media files when possible, 
instead of storing all of the media in the file itself. However, since this file 
simply references other media stored on your computer, it will not work on other 
computers that don't have all the required media.

To create a QuickTime reference movie, select the sequence or clip in the Browser 
that you want to export and choose **File** > **Export** > **QuickTime Movie**. 

Choose a name and location for the file. Choose **Current Settings** and include 
both Audio and Video. Make sure the *Make Movie Self-Contained* box is unchecked 
and click **Save**. Then follow the directions for exporting video from Compressor.

### Final Cut Pro to Compressor

>> insert video

You can also send a video to Compressor by exporting a Browser clip or sequence 
directly from Final Cut Pro to Compressor. Exporting a video from Final Cut Pro 
to Compressor works nearly the same as [using Compressor as a standalone application](#using_compressor_as_a_standalone_application),
but you can skip the intermediate step of creating a QuickTime movie.

To send a sequence or clip from Final Cut Pro to Compressor, select the sequence 
or clip in the Browser and choose **File** > **Send To** > **Compressor**. 

Compressor will open and you will see the sequence (or clip) appear in a Compressor 
Batch window. In the **Settings** tab, drag the MPEG-4 setting from Apple/Formats to 
the job in the Batch window. Choose where the video will be saved by dragging a 
destination preset from the Destinations tab to your job in the Batch window. 

Click **Submit** in the Batch window. The video will be encoded as an MP4 file which 
you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

###The Wistia Final Cut Pro Preset

If you haven't already, [download The Wistia Preset for Compressor](https://support.wistia.com/medias/0trd5956ed/download?media_file_id=80944519). 
It's a custom preset we've made for exporting 1080p videos, that look and upload
great to Wistia.

Once it's downloaded, in drag the preset into the Compressor settings window. 
This will add the preset to your list of custom presets. Then just drag the 
Wistia Preset setting to the job in the Batch window, and click submit. The 
video will be encoded as an MP4 file which you can then easily upload to Wistia. 
Hooray!

---
## Adobe Premiere Pro

Our video team loves Premiere Pro! Consider this our top pick for video editing,
if you were asking. :) We also made you a [preset](#the_wistia_premiere_pro_preset).
Check it out!

### Exporting From Premiere Pro

>>insert video

To export a video from Adobe Premiere Pro for use in Wistia, place your video clip in
the Premiere timeline. Choose **File** > **Export** > **Media**. In the export settings,
change the file format to a H.264. Keep the preset at **Match Source - High Bitrate**.

Under the Bitrate settings, change the Bitrate Encoding to a **VBR 2-Pass**. 
Bump the target and maximum Bitrate up to 15.

Then, in the **Audio** settings, change the Bitrate to **256 kbps**. Once you've locked these 
settings in, choose the destination for your file, and click **Export**.

This will be encoded as an MP4 file which you can then easily upload to Wistia.

### The Wistia Premiere Pro Preset

>>insert download button

Want to be extra snazzy? [Download the Wistia preset for Premiere Pro](https://support.wistia.com/medias/w737c75ueq/download?media_file_id=80944554).
It's a custom preset we've made for exporting 1080p videos, that look and upload great 
to Wistia.

Once it's downloaded, in Premiere head over to **File** > **Export** > **Media**. Look 
for the **Import Preset** icon, and navigate to the downloaded preset to install it. 

>>insert graphic screenshot

Then click **Export** at the bottom of the window and the video will be encoded as an 
MP4 file which you can then easily upload to Wistia.


---

## Adobe Captivate

To export a file from Adobe Captivate, select **Publish** from under the **File** menu.  
In the Publish dialogue box, select **Media**. 

Select **H.264** or **MP4** as the format for export.  

If prompted to enter a title, enter one without the full file extension 
(this will be added automatically).

---

## Camtasia

Camtasia comes with preset production options to make export easier. 
With the project you wish to share open in Camtasia Studio, click the 
**Produce and Share** button. On the first page of the Production Wizard, choose 
Web from the drop down menu, and click **Next**. 

Give your video a name and destination and click **Finish**. The video will be 
rendered in a MP4 file which you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

If you are not satisfied with the quality of the video produced using Camtasia's 
given presets, you can increase the quality in two ways. Whenever you first 
place a screencast in Camtasia's timeline you are asked to choose what 
dimensions you want to edit the video in. 

Larger dimensions allow you to watch the video at a bigger size without losing 
quality. You can also adjust the quality by using the custom production settings
 in the Production Wizard:

  * **Produce and Share** > 
  * **Custom production settings** > 
  * **Next** > 
  * **MP4/FLV/SWF – Flash Output** > 
  * **Next** > 
  * **Flash Options button** > 
  * **Video tab**

---

## After Effects

If you are adding your After Effects export back into an editor like Avid or Premiere 
(our normal workflow), match the native sequence settings you are using in your edit.
Make sure you match codec (ProRes, ProRes LT, HDV), frame size (1920x1080, 1440x1080), 
and frame rate (24, 23.98, 29.97).

If you are exporting out of After Effects for upload to Wistia, use h.264 Quicktime 
settings and 1920x1080 frame size.

---

## Garageband

>>insert screenshot

To export your video + audio track/score from Garageband, start by clicking on the **File**
 option and under **Movie** select **Export Audio to Movie**.

You will then be prompted with a dropdown menu for Video Presets. Select **Full Quality** 
and click the **Save** button (this will save it as the same file format as the original 
movie).

Your video will be saved to your computer as an .mov file that you can easily [upload]({{ '/upload-video' | post_url }})
 into your Wistia account.

---
## iMovie

>>insert video

To export your iMovie video project, select the project you wish to export from the iMovie 
Project Library and choose **File** > **Share** > **File**.

Set the Format to **Video & Audio**, and make sure the resolution is set to 1080p. Then 
change the quality from High to **Custom**, and set the Bitrate to 15 mbps.

Click **Next**, and choose a filename and location, and then **Save**. Your video will 
be saved to your computer as an MP4 file which you can then easily [upload]({{ '/upload-video' | post_url }}) 
to your Wistia account.

---

## QuickTime Pro

>>insert screenshot

To easily export a video from QuickTime Pro, open the movie you wish to export and choose 
**File** > **Export** > **1080p**. In the Export pop-up menu, choose a filename and location, 
and click **Save**. Your video will be saved to your computer as a .mov file which you can 
then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

---

## ScreenFlow

>>insert video

Wistia has an awesome integration with Screenflow 5 that allows you to publish a video right 
from Screenflow to Wistia. In the editor, head up to **File** > **Publish to** > **Wistia**.

Here, you can choose 720p for HD or 1080p. If you want to keep a copy of the file, just click
 *Save Copy To Disk* and choose the destination.

After you click Sign In, it will launch a modal that looks like your Wistia login page.

Enter your username and password, Authorize Screenflow to post to your account, and then 
choose which project you'd like to upload to. You can even create a new "Untitled Project" to 
upload into.

Once you hit **Publish**, it will begin the exporting and uploading process.

Then, hop into your Wistia account, and you'll see the Screenflow video is in a new project 
ready to be customized. Hot dog!

---

## Handbrake

Handbrake is a great, free solution for smoothing out problems with weird video files.
To export a video for Wistia from Handbrake, click *Source* in the top right 
corner and select the file that you'd like to convert. Some of the fields will 
auto-populate. We recommend making sure that:

* The "Video Codec" on the video tab is set to *H.264 (x264)*
* The "Video Quality" uses "Average Bitrate" and is set to around 3000kbps, or whatever the maximum bitrate of your video is if it's lower. Also, you can check off "2-pass encoding."
* On the "Audio" tab, use the "AAC (CoreAudio)" codec and set the bitrate to at least 128 kbps, or the maximum bitrate for the audio track in your video.
* In the top right, click "Picture Settings" and make sure the aspect ratio is correct.

Then, click "Start" at the top right and your video will begin encoding to the 
Destination folder you chose!

{% post_image hashed_id: 'e3fd26ae960a419c75c933421fa22e4aa4fc1fb2', class: 'center' %}

---

## GoToMeeting

Getting high-quality video out of GoToMeeting (or GoToWebinar / GoToTraining)
is tricky tricky, but luckily our friend Kyle from HubSpot has come to the
rescue with a great workflow to convert your GoToMeeting to *WMV format*.

{% post_image hashed_id: '4a96c6faef3058addf78bdffbfa5cad0204cb2e9', class: 'right', width: 320 %}

Start by opening your GoToMeeting *Preferences* (screenshot is for Windows, as
the Mac version doesn't convert to WMV).

{% post_image hashed_id: 'c503b74b25048612defae000902ebc577c716f4d', class: 'center' %}

In the *Recording* preference category, select *convert to Windows Media Player
file*.

And that is it! Your WMV will encode at much higher quality after being
uploaded to Wistia than the default G2M4 video. If you have any trouble, check
out the [GoToMeeting Transcoding Wizard](http://support.citrixonline.com/en_US/GoToMeeting/knowledge_articles/000081292?title=Using+The+GoToMeeting+Transcoding+Wizard%7D).
