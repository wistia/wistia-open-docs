# Exporting from Video Editors

This article gives you the steps to export video from various video editors for optimal performance on Wistia. However, each video is different and each person will have different priorities for their videos. So feel free to explore and mess around with the custom settings in your video editor to discover what works best for you and your videos.
## What are the optimal export settings?

Wistia does have a few specifications and guidelines we recommend following in order to obtain the best performance using our service.

In order to provide the best quality at the lowest bitrate, we recommend using the H.264 video codec and a frame size between 640 and 1280 pixels wide whenever possible. We accept videos of any aspect ratio. It is also recommended that you keep the bit rate of your video to less than 3,000 kilobits per second.

In regards to video format, Wistia accepts a majority of the most common file formats (you can find the entire list [here]({{ site.url }}/{{ page.lang }}/uploading-and-transcoding#what_types_of_files_can_be_uploaded_to_wistia.html)), but for most consistent performance, we generally recommend exporting files in an MOV or MP4 format.

## How do I export video from...?

### Adobe Premiere Pro

To export a video from Adobe Premiere Pro for use in Wistia, place your video clip in the Premiere timeline. Choose File > Export > Adobe Media Encoder. The Export Settings window will appear. Choose QuickTime from the Format drop-down menu. Click OK. Choose a filename and location. Your video will be saved to your computer as a MOV file which you can then easily [upload]({{ site.url }}/{{ page.lang }}/upload-video.html) to Wistia.

### Camtasia

The simplest and quickest way to export a screencast from Camtasia is to use the preset production options.{{ :camtasia.png?275}} With the project you wish to share open in Camtasia Studio, click the Produce and Share button. On the first page of the Production Wizard, choose Web from the drop down menu. Click Next. Give your video a name and destination and click Finish. The video will be rendered in a MP4 file which you can then easily [upload]({{ site.url }}/{{ page.lang }}/upload-video.html) to Wistia.

If you are not satisfied with the quality of the video produced using Camtasia's given presets, you can increase the quality in two ways. Whenever you first place a screencast in Camtasia's timeline you are asked to choose what dimensions you want to edit the video in. Larger dimensions allow you to watch the video at a bigger size without losing quality. You can also adjust the quality by using the custom production settings in the Production Wizard (Produce and Share button > Custom production settings > Next > MP4/FLV/SWF – Flash Output > Next > Flash Options button > Video tab).

### Compressor

To encode a QuickTime movie using Compressor for playback on Wistia, you must create an encoding job. In Compressor, choose Job > New Job With File. Select the media file you wish to use and click Open. An encoding job for the selected media file appears in the Batch window. In the Settings tab, drag the MPEG-4 setting from Apple/Formats to the job in the Batch window. If you want, you can change the name and destination of the encoded file, or just leave them the same as the source file. Click Submit in the Batch window. The video will be encoded as an MP4 file which you can then easily [upload]({{ site.url }}/{{ page.lang }}/upload-video.html) to Wistia.

### Final Cut Pro

There are three ways to export video for use on Wistia from Final Cut Pro: using QuickTime conversion, using Compressor as a standalone application, or sending from Final Cut Pro to Compressor.

#### Using QuickTime conversion

The easiest way to export a movie from Final Cut Pro is to use QuickTime conversion. Select a clip or sequence in the Browser or open a sequence in the Timeline, then choose File > Export > Using QuickTime Conversion. Choose a name and location for the file. From the Format pop-up menu choose QuickTime Movie. Choose Default Settings from the Use pop-up menu and click Save. Your video will be saved to your computer as a MOV file which you can then easily [upload]({{ site.url }}/{{ page.lang }}/upload-video.html) to Wistia.

#### Using Compressor as a standalone application

To use Compressor as a standalone application, you must first create a QuickTime movie file to submit to Compressor. Since this will only be a temporary intermediate file, we recommend creating a QuickTime reference movie, which can be created quicker and takes up less space than a standard QuickTime movie because the video refers to your sequence's original media files when possible instead of storing all of the media in the file itself. However, since this file simply references other media stored on your computer, it will not work on other computers that don't have all the required media.

{{ :fcp_ref_movie.jpg?250}}To create a QuickTime reference movie, select the sequence or clip in the Browser that you want to export and choose File > Export > QuickTime Movie. Choose a name and location for the file. Choose Current Settings and include both Audio and Video. Markers does not matter, as they will not be included in your final Wistia video. Make sure the Make Movie Self-Contained box is unchecked and click Save. Then follow the directions for [exporting video from Compressor]({{ site.url }}/{{ page.lang }}/exporting#compressor.html).

#### Sending from Final Cut Pro to Compressor

You can also send a movie to Compressor by exporting a Browser clip or sequence directly from Final Cut Pro to Compressor. Exporting a video from Final Cut Pro to Compressor works nearly the same as [using Compressor as a standalone application]({{ site.url }}/{{ page.lang }}/exporting#using compressor as a standalone application.html), the only difference being that you can skip the intermediate step of creating a QuickTime movie.

To send a sequence or clip from Final Cut Pro to Compressor, select the sequence or clip in the Browser and choose File > Send To > Compressor. Compressor will open and you will see the sequence or clip appear in a Compressor Batch window. In the Settings tab, drag the MPEG-4 setting from Apple/Formats to the job in the Batch window. Choose where the video will be saved by dragging a destination preset from the Destinations tab to your job in the Batch window. Click Submit in the Batch window. The video will be encoded as an MP4 file which you can then easily [upload]({{ site.url }}/{{ page.lang }}/upload-video.html) to Wistia.

### iMovie

To export an iMovie video project, select the project you wish to export from the iMovie Project Library and choose Share > Export Movie. {{ :imovie-size.jpg?350}} You will be prompted to select the size that you want your video to be exported as. For most purposes, a medium-sized video will work perfectly well on Wistia. (If file size and upload time are not an issue, the large size will also work.) Choose a filename and location, and click Export. Your video will be saved to your computer as an M4V file which you can then easily [upload]({{ site.url }}/{{ page.lang }}/upload-video.html) to Wistia.

### QuickTime Pro

To easily export a video from QuickTime Pro, open the movie you wish to export and choose File > Export. In the Export pop-up menu you will be given a choice of formats in which to save your video. {{:quicktime.png?300 }} For easiest and most consistent performance on Wistia, we recommend selecting Movie to QuickTime Movie, which exports your video as a MOV file. Choose Default Settings from the Use pop-up menu, choose a filename and location, and click Save. Your video will be saved to your computer as a MOV file which you can then easily [upload]({{ site.url }}/{{ page.lang }}/upload-video.html) to Wistia.

### ScreenFlow

To export a screencast from ScreenFlow, open the screen recording you wish to export and choose File > Export.{{ :100scale.jpg?275}} From the Preset pop-up menu, choose Web - High (Best Quality). For the dimensions, make it scale by 100% so that your viewers will be able to see the details of your screen as clearly as possible. Choose a filename and location, and click Export. Your video will be saved to your computer as a MOV file which you can then easily [upload]({{ site.url }}/{{ page.lang }}/upload-video.html) to Wistia.
\\ 
\\
----
\\
~~DISQUS~~
