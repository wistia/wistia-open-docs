---
title: Exporting from Video Editors
layout: post
category: Getting Set Up
description: Get the skinny on using specific software to export video for uploading to Wistia.
---

Looking for a guide to optimal export settings? You should also see our [export settings]({{ '/export-settings' | post_url }}) page.

---

## Adobe Premiere Pro

To export a video from Adobe Premiere Pro for use in Wistia, place your video clip in the Premiere timeline. Choose File &gt; Export &gt; Adobe Media Encoder. The Export Settings window will appear. Choose QuickTime from the Format drop-down menu. Click OK. Choose a filename and location. Your video will be saved to your computer as a MOV file which you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

---

## Adobe Captivate

To export a file from Adobe Captivate, select 'Publish' from under the File menu.  In the Publish dialogue box, select "Media". Then select either H.264 or MP4 as the format for export.  If prompted to enter a title, enter one without the full file extension (this will be added automatically).

---

## Camtasia

The simplest and quickest way to export a screencast from Camtasia is to use the preset production options.{{ :camtasia.png?275}} With the project you wish to share open in Camtasia Studio, click the Produce and Share button. On the first page of the Production Wizard, choose Web from the drop down menu. Click Next. Give your video a name and destination and click Finish. The video will be rendered in a MP4 file which you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

If you are not satisfied with the quality of the video produced using Camtasia's given presets, you can increase the quality in two ways. Whenever you first place a screencast in Camtasia's timeline you are asked to choose what dimensions you want to edit the video in. Larger dimensions allow you to watch the video at a bigger size without losing quality. You can also adjust the quality by using the custom production settings in the Production Wizard (Produce and Share button &gt; Custom production settings &gt; Next &gt; MP4/FLV/SWF – Flash Output &gt; Next &gt; Flash Options button &gt; Video tab).

---

## Exporting from Compressor

To encode a QuickTime movie using Compressor for playback on Wistia, you must create an encoding job. In Compressor, choose Job &gt; New Job With File. Select the media file you wish to use and click Open. An encoding job for the selected media file appears in the Batch window. In the Settings tab, drag the MPEG-4 setting from Apple/Formats to the job in the Batch window. If you want, you can change the name and destination of the encoded file, or just leave them the same as the source file. Click Submit in the Batch window. The video will be encoded as an MP4 file which you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

---

## Final Cut Pro

There are three ways to export video for use on Wistia from Final Cut Pro: using QuickTime conversion, using Compressor as a standalone application, or sending from Final Cut Pro to Compressor.

### Using QuickTime conversion

The easiest way to export a movie from Final Cut Pro is to use QuickTime conversion. Select a clip or sequence in the Browser or open a sequence in the Timeline, then choose File &gt; Export &gt; Using QuickTime Conversion. Choose a name and location for the file. From the Format pop-up menu choose QuickTime Movie. Choose Default Settings from the Use pop-up menu and click Save. Your video will be saved to your computer as a MOV file which you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

### Using Compressor as a standalone application

To use Compressor as a standalone application, you must first create a QuickTime movie file to submit to Compressor. Since this will only be a temporary intermediate file, we recommend creating a QuickTime reference movie, which can be created quicker and takes up less space than a standard QuickTime movie because the video refers to your sequence's original media files when possible instead of storing all of the media in the file itself. However, since this file simply references other media stored on your computer, it will not work on other computers that don't have all the required media.

{{ :fcp_ref_movie.jpg?250}}To create a QuickTime reference movie, select the sequence or clip in the Browser that you want to export and choose File &gt; Export &gt; QuickTime Movie. Choose a name and location for the file. Choose Current Settings and include both Audio and Video. Markers does not matter, as they will not be included in your final Wistia video. Make sure the Make Movie Self-Contained box is unchecked and click Save. Then follow the directions for exporting video from Compressor.

### Final Cut Pro to Compressor

You can also send a movie to Compressor by exporting a Browser clip or sequence directly from Final Cut Pro to Compressor. Exporting a video from Final Cut Pro to Compressor works nearly the same as using Compressor as a standalone application (above), the only difference being that you can skip the intermediate step of creating a QuickTime movie.

To send a sequence or clip from Final Cut Pro to Compressor, select the sequence or clip in the Browser and choose File &gt; Send To &gt; Compressor. Compressor will open and you will see the sequence or clip appear in a Compressor Batch window. In the Settings tab, drag the MPEG-4 setting from Apple/Formats to the job in the Batch window. Choose where the video will be saved by dragging a destination preset from the Destinations tab to your job in the Batch window. Click Submit in the Batch window. The video will be encoded as an MP4 file which you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

---

## Final Cut X

{% post_image hashed_id: '9462a250be482463bfc2f6015279b6642e66f643', width: 320, class: 'float_right' %}

Exporting from Final Cut X is similar to iMovie export.  To reach the Export Menu, select "Export" from under the "Share" drop-down menu.

From the file format drop-down, select the "H.264" codec.  Then click "next", and save the file in a useful location.

---

## iMovie

To export your iMovie video project, select the project you wish to export from the iMovie Project Library and choose Share &gt; Export Movie.

{% post_image hashed_id: 'd9fed1664fce966debccdefec84b9f564a94d6cb', class: 'center' %}

You will be prompted to select the size that you want your video to be exported at.  For situations where most users will be viewing the video within your Wistia page, a 'medium size' video will work perfectly.  If you are confident that most of your viewers will be using higher-speed internet connections, or if you would like to display the video at a larger resolution on your web page, a 'large size' video will work well.

Choose a filename and location, and click Export. Your video will be saved to your computer as an M4V file which you can then easily [upload]({{ '/upload-video' | post_url }}) to your Wistia account.

---

## QuickTime Pro

{% post_image hashed_id: '42d2696efddb067ca8e238212444c6c19eff923a', width: 320, class: 'float_right' %}

To easily export a video from QuickTime Pro, open the movie you wish to export and choose File &gt; Export. In the Export pop-up menu you will be given a choice of formats in which to save your video. For easiest and most consistent performance on Wistia, we recommend selecting Movie to QuickTime Movie, which exports your video as a MOV file. Choose Default Settings from the Use pop-up menu, choose a filename and location, and click Save. Your video will be saved to your computer as a MOV file which you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.

---

## ScreenFlow

{% post_image hashed_id: 'e2ea358871e38d394195c6a207cdd648b1296914', width: 320, class: 'float_right' %}

To export a screencast from ScreenFlow, open the screen recording you wish to export and choose File &gt; Export. From the Preset pop-up menu, choose Web - High (Best Quality). For the dimensions, make it scale by 100% so that your viewers will be able to see the details of your screen as clearly as possible. Choose a filename and location, and click Export. Your video will be saved to your computer as a MOV file which you can then easily [upload]({{ '/upload-video' | post_url }}) to Wistia.
