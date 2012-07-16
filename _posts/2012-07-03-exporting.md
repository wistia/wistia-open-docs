---
title: Exporting from Video Editors
layout: post
category: Before You Upload
post_intro: <p>This article gives you the steps to export video from various video editors for optimal performance on Wistia. However, each video is different and each person will have different priorities for their videos. So feel free to explore and mess around with the custom settings in your video editor to discover what works best for you and your videos.</p>
---

## Optimal Export Settings for Wistia

Wistia does have a few specifications and guidelines we recommend following in order to obtain the best performance using our service.

### Video

In order to provide the best quality at the lowest bitrate, we recommend using the H.264 video codec and a frame size between 640 and 1280 pixels wide whenever possible. We accept videos of any aspect ratio. It is also recommended that you keep the bit rate of your video to less than 3,000 kilobits per second.

In regards to video format, Wistia accepts most of the common file formats (see a partial list below), but **for most consistent performance we generally recommend exporting files in an MP4 or MOV format**. If a file type is not explicitly supported (or recognized) by Wistia, users will simply be able to download the file.

<table>
  <tbody>
    <tr>
      <th>Media Type</th>
      <th>Formats Accepted</th>
    </tr>
    <tr>
      <td>Video</td>
      <td>MOV, MPG, AVI, FLV, F4V, MP4, M4V, ASF, WMV, VOB, MOD, 3GP, MKV, DIVX, XVID</td>
    </tr>
    <tr>
      <td>Audio</td>
      <td>MP3, WAV, AIF, AU, M4A</td>
    </tr>
    <tr>
      <td>Documents</td>
      <td>PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX</td>
    </tr>
    <tr>
      <td>Images</td>
      <td>JPG, PNG, GIF, TIFF, BMP, DCM</td>
    </tr>
  </tbody>
</table>

### Audio

What? You mean the audio on these things is important!?  Well of course it is!

Videos uploaded to Wistia should use **2-channel stereo, and we recommend the AAC codec, 44.4mhz**.

### Note on File Sizes

The standard Wistia upload function supports files up to **2 Gigabytes** in size. It is possible to upload larger files using the [Simple Uploader](/simple-uploader.html), but this is not recommended. Wistia transcodes all video before it can be shared, so that your viewers have the best playback experience possible. Part of the transcoding process is compressing the video using an efficient codec like FLV and MP4. As a result, the quality of your original upload matters only up to a certain point.

We recommend adhering to 1280px wide and 3 - 5,000kbps as the max settings for upload, as it will reduce the likeliness of upload errors. If you find yourself with a short video (under 2 hours) that is larger than 2GB, it's likely something has gone wrong or a compression step was missed.

---

## Adobe Premiere Pro

To export a video from Adobe Premiere Pro for use in Wistia, place your video clip in the Premiere timeline. Choose File &gt; Export &gt; Adobe Media Encoder. The Export Settings window will appear. Choose QuickTime from the Format drop-down menu. Click OK. Choose a filename and location. Your video will be saved to your computer as a MOV file which you can then easily [upload](/upload-video.html) to Wistia.

---

## Adobe Captivate

To export a file from Adobe Captivate, select 'Publish' from under the File menu.  In the Publish dialogue box, select "Media". Then select either H.264 or MP4 as the format for export.  If prompted to enter a title, enter one without the full file extension (this will be added automatically).

---

## Camtasia

The simplest and quickest way to export a screencast from Camtasia is to use the preset production options.{{ :camtasia.png?275}} With the project you wish to share open in Camtasia Studio, click the Produce and Share button. On the first page of the Production Wizard, choose Web from the drop down menu. Click Next. Give your video a name and destination and click Finish. The video will be rendered in a MP4 file which you can then easily [upload](/upload-video.html) to Wistia.

If you are not satisfied with the quality of the video produced using Camtasia's given presets, you can increase the quality in two ways. Whenever you first place a screencast in Camtasia's timeline you are asked to choose what dimensions you want to edit the video in. Larger dimensions allow you to watch the video at a bigger size without losing quality. You can also adjust the quality by using the custom production settings in the Production Wizard (Produce and Share button &gt; Custom production settings &gt; Next &gt; MP4/FLV/SWF – Flash Output &gt; Next &gt; Flash Options button &gt; Video tab).

---

## Exporting from Compressor

To encode a QuickTime movie using Compressor for playback on Wistia, you must create an encoding job. In Compressor, choose Job &gt; New Job With File. Select the media file you wish to use and click Open. An encoding job for the selected media file appears in the Batch window. In the Settings tab, drag the MPEG-4 setting from Apple/Formats to the job in the Batch window. If you want, you can change the name and destination of the encoded file, or just leave them the same as the source file. Click Submit in the Batch window. The video will be encoded as an MP4 file which you can then easily [upload](/upload-video.html) to Wistia.

---

## Final Cut Pro

There are three ways to export video for use on Wistia from Final Cut Pro: using QuickTime conversion, using Compressor as a standalone application, or sending from Final Cut Pro to Compressor.

### Using QuickTime conversion

The easiest way to export a movie from Final Cut Pro is to use QuickTime conversion. Select a clip or sequence in the Browser or open a sequence in the Timeline, then choose File &gt; Export &gt; Using QuickTime Conversion. Choose a name and location for the file. From the Format pop-up menu choose QuickTime Movie. Choose Default Settings from the Use pop-up menu and click Save. Your video will be saved to your computer as a MOV file which you can then easily [upload](/upload-video.html) to Wistia.

### Using Compressor as a standalone application

To use Compressor as a standalone application, you must first create a QuickTime movie file to submit to Compressor. Since this will only be a temporary intermediate file, we recommend creating a QuickTime reference movie, which can be created quicker and takes up less space than a standard QuickTime movie because the video refers to your sequence's original media files when possible instead of storing all of the media in the file itself. However, since this file simply references other media stored on your computer, it will not work on other computers that don't have all the required media.

{{ :fcp_ref_movie.jpg?250}}To create a QuickTime reference movie, select the sequence or clip in the Browser that you want to export and choose File &gt; Export &gt; QuickTime Movie. Choose a name and location for the file. Choose Current Settings and include both Audio and Video. Markers does not matter, as they will not be included in your final Wistia video. Make sure the Make Movie Self-Contained box is unchecked and click Save. Then follow the directions for [exporting video from Compressor](/exporting#compressor.html).

### Final Cut Pro to Compressor

You can also send a movie to Compressor by exporting a Browser clip or sequence directly from Final Cut Pro to Compressor. Exporting a video from Final Cut Pro to Compressor works nearly the same as [using Compressor as a standalone application](/exporting#using compressor as a standalone application.html), the only difference being that you can skip the intermediate step of creating a QuickTime movie.

To send a sequence or clip from Final Cut Pro to Compressor, select the sequence or clip in the Browser and choose File &gt; Send To &gt; Compressor. Compressor will open and you will see the sequence or clip appear in a Compressor Batch window. In the Settings tab, drag the MPEG-4 setting from Apple/Formats to the job in the Batch window. Choose where the video will be saved by dragging a destination preset from the Destinations tab to your job in the Batch window. Click Submit in the Batch window. The video will be encoded as an MP4 file which you can then easily [upload](/upload-video.html) to Wistia.

---

## Final Cut X

<div class="post_image float_right"><img src="/images/finalcutx_export.png" alt="finalcutx_export" /></div>

Exporting from Final Cut X is similar to iMovie export.  To reach the Export Menu, select "Export" from under the "Share" drop-down menu.

From the file format drop-down, select the "H.264" codec.  Then click "next", and save the file in a useful location.

---

## iMovie

To export your iMovie video project, select the project you wish to export from the iMovie Project Library and choose Share &gt; Export Movie.

<div class="post_image center"><img src="/images/imovie-size.jpg" alt="imovie-size" width="350px" /></div>

You will be prompted to select the size that you want your video to be exported at.  For situations where most users will be viewing the video within your Wistia page, a 'medium size' video will work perfectly.  If you are confident that most of your viewers will be using higher-speed internet connections, or if you would like to display the video at a larger resolution on your web page, a 'large size' video will work well.

Choose a filename and location, and click Export. Your video will be saved to your computer as an M4V file which you can then easily [upload](/upload-video.html) to your Wistia account.

---

## QuickTime Pro

<div class="post_image float_right"><img src="/images/quicktime_pro.png" alt="quicktime_pro" width="300px" /></div>

To easily export a video from QuickTime Pro, open the movie you wish to export and choose File &gt; Export. In the Export pop-up menu you will be given a choice of formats in which to save your video. For easiest and most consistent performance on Wistia, we recommend selecting Movie to QuickTime Movie, which exports your video as a MOV file. Choose Default Settings from the Use pop-up menu, choose a filename and location, and click Save. Your video will be saved to your computer as a MOV file which you can then easily [upload](/upload-video.html) to Wistia.

---

## ScreenFlow

<div class="post_image float_right"><img src="/images/screenflow_export.jpg" alt="" width="300px" /></div>

To export a screencast from ScreenFlow, open the screen recording you wish to export and choose File &gt; Export. From the Preset pop-up menu, choose Web - High (Best Quality). For the dimensions, make it scale by 100% so that your viewers will be able to see the details of your screen as clearly as possible. Choose a filename and location, and click Export. Your video will be saved to your computer as a MOV file which you can then easily [upload](/upload-video.html) to Wistia.
