Transcript Example:

`<html>`
`<div id="wistia_4d8229898d" style="width:640px;height:560px;" data-video-width="640" data-video-height="360">`&nbsp;`</div>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/E-v1.js">``</script>`
`<script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1-gridify%2Ctranscript-v2.js">``</script>`

`<script>`/*<![CDATA[*/
wistiaEmbed = Wistia.embed("4d8229898d", {
    videoWidth: "640",
    videoHeight: "360",
    controlsVisibleOnLoad: true
});
Wistia.plugin.transcript(wistiaEmbed, {
    version: "v2"
});
/*]]*/`</script>`
`</html>`

Transcript Options:

 | Option Name    | Type    | Description                                                                                                                 |
 | -----------    | ----    | -----------------------------------------------------------------------------------------------------------------------------
 | canCollapse    | boolean | Determines whether the transcript can be toggled open/closed. Defaults to false.                                              | 
 | canDownload    | boolean | Determines whether a download link is provided on the interactive transcript. Defaults to false.                              | 
 | canPrint       | boolean | Determines whether a print link is provided on the interactive transcript. Defaults to true.                                  | 
 | container      | string  | The container ID where we will place the interactive transcript. Only useful for API embed.                                   | 
 | height         | integer | The height of the interactive transcript. Defaults to 200px if below the video, or the height of the video if on the side.    | 
 | onloadCollapse | boolean | Determines whether the transcript starts out collapsed. Defaults to false.                                                    | 
 | position       | string  | The grid location where the transcript should live. Can be above/below/left/right.                                            | 
 | version        | string  | Must be "v2".                                                                                                                 | 
 | width          | integer | The width of the interactive transcript. Defaults to the width of the embed if below the video, or 275px if on the side.      | 

Note that, for onloadCollapse to work, canCollapse must also be true.

Iframe Example:

    `<iframe src="http://fast.wistia.com/embed/iframe/abcde12345?videoWidth=640&videoHeight=360&plugin[transcript][version]=v2&plugin[transcript][position]=below&plugin[transcript][height]=300&plugin[transcript][canDownload]=true" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" width="640" height="560">``</iframe>`

API Embed Example:

    `<div id="wistia_abcde12345" style="width:640px;height;560px;" data-video-width="640" data-video-height="360">`&nbsp;`</div>`
    `<script src="http://fast.wistia.com/static/E-v1.js">``</script>`
    `<script src="http://fast.wistia.com/static/concat/E-v1-gridify,transcript-v2.js">``</script>`
    `<script>`
    wistiaEmbed = Wistia.embed("abcde12345", {
    videoWidth: 640,
    videoHeight: 360
    });
    Wistia.plugin.transcript(wistiaEmbed, {
    version: "v2",
    position: "below",
    height: 300,
    canDownload: true
    });
    `</script>`
