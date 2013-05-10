---
layout: post
for_developers: true
title: Transcript Params
description: Want the parameters of the transcripts? Say no more, here they are!
footer: 'for_developers'
---

## Transcript Example:

<div class="video_embed">
  <iframe src="http://fast.wistia.com/embed/iframe/e9daad32af?controlsVisibleOnLoad=true&playerColor=aae3d8&version=v1&videoHeight=371&videoWidth=660&plugin%5Btranscript%5D%5Bversion%5D=v2" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="660" height="571"></iframe>
</div>

## Transcript Options

 Option Name    | Type    | Description                                                                                                                 
 -----------    | ----    | ----------------------------------------------------------------------------------------------------------------------------
 canCollapse    | boolean | Determines whether the transcript can be toggled open/closed. Defaults to false.                                             
 canDownload    | boolean | Determines whether a download link is provided on the interactive transcript. Defaults to false.                             
 canPrint       | boolean | Determines whether a print link is provided on the interactive transcript. Defaults to true.                                 
 container      | string  | The container ID where we will place the interactive transcript. Only useful for API embed.                                  
 height         | integer | The height of the interactive transcript. Defaults to 200px if below the video, or the height of the video if on the side.   
 collapseOnload | boolean | Determines whether the transcript starts out collapsed. Defaults to false.                                                   
 position       | string  | The grid location where the transcript should live. Can be above/below/left/right.                                           
 version        | string  | Must be "v2".                                                                                                                
 width          | integer | The width of the interactive transcript. Defaults to the width of the embed if below the video, or 275px if on the side.     

Note that, for <span class="code">onloadCollapse</span> to work, <span class="code">canCollapse</span> must also be true.

## iframe Example

{% codeblock transcript-params.html %}
<iframe src="http://fast.wistia.com/embed/iframe/abcde12345
  ?videoWidth=640&videoHeight=360&plugin[transcript][version]=v2
  &plugin[transcript][position]=below&plugin[transcript][height]=300
  &plugin[transcript][canDownload]=true" 
  allowtransparency="true" frameborder="0" scrolling="no" 
  class="wistia_embed" name="wistia_embed" width="640" height="560">
</iframe>
{% endcodeblock %}

## API Embed Example

{% codeblock transcript-params.html %}
<div id="wistia_abcde12345" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360">&nbsp;</div>
<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
<script>
  wistiaEmbed = Wistia.embed("abcde12345", {
    version: "v1",
    videoWidth: 640,
    videoHeight: 360,
    controlsVisibleOnLoad: true,
    playerColor: "aae3d8"
  });
  Wistia.plugin.transcript(wistiaEmbed, {
    version: "v2",
    position: "below",
    height: 300,
    canDownload: true
  });
</script>
{% endcodeblock %}
