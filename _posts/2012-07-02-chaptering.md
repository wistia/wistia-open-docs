---
category: For Developers Only
---

# Example: Wistia video player API to add chapter links to a video

## Embedded video

With Wistia's video player API, it is possible to create chapter links which, when clicked, will advance (or rewind) the video player to a particular time in the video.  This is very useful for long form content to allow viewers to jump to particular points in the video where particular things happen.  Additionally, it is extremely easy to implement in HTML.   

First, we assume that the video has already been embedded on your website.  Next, view the source code for the embedded video either on your page or by generating a new embed code within Wistia.  Your embed code will look similar to the following:
\\
`<style center>`{{:embed-code-id-highlighted.png|}}`</style>`
\\
Notice the **''id''** parameter near the beginning of the embed code that is highlighted in red.  Copy this ID (wistia_82401 in this instance) as it will need to be referenced in your chapter link.

Next, copy the link below and place it in your HTML where you wish the chapter link to appear.  Replace the "wistia_82401" with your video's ID and replace the "Your link text here" with the text you wish to appear as your link text.  
\\
`<a href="#" onClick="window.document['wistia_82401'].videoSeek(60);return false;">`Your link text here`</a>` `  
\\
Finally, you will see that the onClick handler for the link (the part that actually tells the video to seek to a specific location is of the form:
\\
`window.document['wistia_82401'].videoSeek(60);return false;`
\\
Here **''videoSeek(60)''** tells the video player to go to the 60 second point in the video.  For your chapter link, replace the 60 with the time in the video (in seconds) you wish to seek to.

This is all that is necessary to create chaptering link for your embedded video.  If you wish to create multiple chaptering links for the same video, simply copy the link you created and replace the link text and seek time with the appropriate values.


## Video in the Wistia application

First, create a Description Sidebar Element on the page where the video is displayed.  To do this, hover over the green Media Actions menu and choose "Add Sidebar Element".  You will see a dialog box appear that will offer you two choice.  Click "Add" for the Description Sidebar Element.  You new Description Sidebar Element will appear on the right hand side.

`<style float-right>`{{:source-mode.png?200|}}
`</style>`
\\
\\
\\
\\
Next, it is important to get the Description element into the mode where we can enter the chapter information.  To do this, click the "Edit" button below the element.  This will switch it into Edit mode.  Next, click the "Advanced" button in the lower left-hand corner of the element.  Finally, click the "Source" button shown in the image to allow the necessary source code needed to create chapters in the video. 
\\
\\
\\
\\
The structure of the code to create Chapter links is as follows:

`<code>``<p>`
    `<span style="font-size:18px;">`
    `<a href="#media" onclick="parent.theMediaEmbed.seek(90);return(false);">`1:30 New Section`</a>`
    `</span>`
`</p>`
`</code>`

To modify this code for your video, simply replace the number in the ".seek(90)" with the location that you wish the chapter marking to seek to in seconds.  Next, edit the text "1:30 New Section" between the '>' and the '<' to be the text that you wish to display for that chapter.

Once you have made these edits, copy the code and paste it into the Description editor that is already in Source mode.  Simply click the "Save" button and your working Chapter link should appear.

To see an example of the finished product, check out the video here: [http://home.wistia.com/m/irNiZ]({{ site.url }}/{{ page.lang }}/http://home.wistia.com/m/irNiZ.html)
