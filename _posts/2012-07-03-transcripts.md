---
title: Create an Interactive Transcript for your Wistia Video
layout: post
category: Sharing
---

Transcripts are an incredible way for viewers to follow the content of your video.  Our transcripts are also linked word by word to your video, so your viewers can jump ahead (or rewind) by simply clicking on a specific word in the transcript.  The transcripts can also be indexed as part of your video sitemap, which makes the transcript extremely powerful for SEO purposes.  See more about our transcript product on the [transcripts tour page]({{ site.url }}/{{ page.lang }}/http://wistia.com/product/transcripts.html).\\
\\
So how do you go about creating a transcript?  This quick tutorial will show you the way.\\
\\
### Step 1: Select Your Video

`<style float-right>`{{:transcript1.png?400}}`</style>`
\\
\\
\\
\\
First, you need to choose on your account you'd like to have transcribed.  Then, navigate to the media page for that video (the page where you can play the video itself).\\
\\
\\
\\
\\

### Step 2: Order the Transcript

`<style float-right>`{{:transcript2.png?300}}`</style>`
\\
\\
\\
\\
\\
\\
Now that you've chosen your video, you will need to order the transcript.  Under the green Media Actions drop-down menu, select the 'Create Transcript' option.
\\
\\
\\
\\
\\
\\
\\
\\
\\
\\
\\
`<style float-right>`{{:transcript3.png?400}}`</style>`
\\
This will launch a dialogue box that shows the rates and total cost of transcribing your video.  Once you're ready to order the transcript, click "create transcript".  Within 24 hours, you will receive an email confirming the transcript is now available on the media page for that video.
\\
\\
\\
\\
\\

### Step 3: Use Your Transcript

`<style float-right>`{{:transcript4.png?300}}`</style>`
\\
\\
\\
Once your transcript is ready, it will appear to all viewers who view the video within your account, or it can be embedded publicly with the video.
\\
\\
\\
\\
\\
`<style float-right>`{{:superembed_dialogue_transcripts.png?400}}`</style>`
\\
\\
To embed your transcript, select the `</>` Embed' dialogue as you normally would to embed your video (for more help on this, head over here: [embedding a video]({{ site.url }}/{{ page.lang }}/http://wistia.com/doc/media#how_to_embed_a_video.html)).  Check the "Include Interactive Transcript" checkbox, and then copy and paste your embed code as you normally would.  You can style the transcript to appear to the left, underneath, or to the right of the video.
\\
\\
\\
\\
\\
\\
`<style float-right>`{{:transcript6.png?300}}`</style>`
\\
\\
\\
\\
\\
Voila! The transcript will load at the same time as the video for easy interaction by your viewers. As Brendan would say, "happy transcribing guys!"
\\
\\
\\
\\
\\
\\
## Advanced Transcript Actions

Here are some advanced options you can take to control how your viewers interact with your transcripts.

### List of Options


*  canCollapse

*  canPrint

*  canDownload

*  collapseOnload (requires canCollapse)

### Implementation

For implementing in iframe embeds, you must use the percent-encoding or URI approach (which the iframe embed already uses, it's what creates those weird %5B and %5D you see):
\\
\\

	
	&plugin%5Btranscript%5D%5Bversion%5D=v2&plugin%5Btranscript%5D%5BcanCollapse%5D=true&plugin%5Btranscript%5D%5BcollapseOnload%5D=true

\\
\\
the example above adds the transcript plug-in, and then adds the canCollapse and collapseOnload plug-ins as well.  When URL-decoded, it looks like this:

	
	plugin[transcript][version]=v2 & plugin[transcript][canCollapse]=true & plugin[transcript][collapseOnload]=true

\\
\\
For implementing with SEO/API embeds, you will add additional directions into the embed code itself:
\\
\\

	
	Wistia.plugin.transcript(wistiaEmbed, {
	  version: "v2"
	  canCollapse: true,
	  collapseOnload: true
	});

\\
\\
\\
----
\\
\\



