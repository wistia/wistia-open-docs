---
title: Create an Interactive Transcript for your Wistia Video
layout: post
category: Embedding
description: Wistia has partnered with 3PlayMedia to provide an awesome feature: transcripts. These transcripts, which are linked to the videos word for word, provide your viewers with an incredible and easy way to follow along with the content of your video.
post_intro: <p>Transcripts are an incredible way for viewers to follow the content of your video.  Our transcripts are also linked word by word to your video, so your viewers can jump ahead (or rewind) by simply clicking on a specific word in the transcript.  The transcripts can also be indexed as part of your video sitemap, which makes the transcript extremely powerful for SEO purposes.  See more about our transcript product on the <a href="http://wistia.com/product/transcripts">transcripts tour page</a>.</p><p>So how do you go about creating a transcript?  This quick tutorial will show you the way.</p>
---

## Step 1: Select Your Video

<div class="post_image float_right"><img src="/images/transcript1.png" alt="transcript1" /></div>

First, you need to choose on your account you'd like to have transcribed.  Then, navigate to the media page for that video (the page where you can play the video itself).

## Step 2: Order the Transcript

<div class="post_image float_right"><img src="/images/transcript2.png" alt="transcript2" /></div>

Now that you've chosen your video, you will need to order the transcript.  Under the green Media Actions drop-down menu, select the 'Create Transcript' option.

<div class="post_image center"><img src="/images/transcript3.png" alt="transcript3" /></div>

This will launch a dialogue box that shows the rates and total cost of transcribing your video.  Once you're ready to order the transcript, click "create transcript".  Within 24 hours, you will receive an email confirming the transcript is now available on the media page for that video.

## Step 3: Use Your Transcript

<div class="post_image center"><img src="/images/transcript4.png" alt="transcript4" /></div>

Once your transcript is ready, it will appear to all viewers who view the video within your account, or it can be embedded publicly with the video.

<div class="post_image float_right"><img src="/images/superembed_dialogue_transcripts.png" alt="superembed_dialogue_transcripts" /></div>

To embed your transcript, select the </> Embed' dialogue as you normally would to embed your video (for more help on this, head over here: [embedding a video](/media#how_to_embed_a_video.html)).  Check the "Include Interactive Transcript" checkbox, and then copy and paste your embed code as you normally would.  You can style the transcript to appear to the left, underneath, or to the right of the video.

<div class="post_image float_right"><img src="/images/transcript6.png" alt="transcript6" /></div>

Voila! The transcript will load at the same time as the video for easy interaction by your viewers. As Brendan would say, "happy transcribing guys!"

## Advanced Transcript Actions

Here are some advanced options you can take to control how your viewers interact with your transcripts.

### List of Options

*  canCollapse
*  canPrint
*  canDownload
*  collapseOnload (requires canCollapse)

### Implementation

For implementing in iframe embeds, you must use the percent-encoding or URI approach (which the iframe embed already uses, it's what creates those weird %5B and %5D you see):

<div class="code"><pre>&plugin%5Btranscript%5D%5Bversion%5D=v2&plugin%5Btranscript%5D%5BcanCollapse%5D=true&plugin%5Btranscript%5D%5BcollapseOnload%5D=true</pre></div>

the example above adds the transcript plug-in, and then adds the canCollapse and collapseOnload plug-ins as well.  When URL-decoded, it looks like this:

<div class="code"><pre>plugin[transcript][version]=v2 & plugin[transcript][canCollapse]=true & plugin[transcript][collapseOnload]=true</pre></div>

For implementing with SEO/API embeds, you will add additional directions into the embed code itself:

<div class="code"><pre>
Wistia.plugin.transcript(wistiaEmbed, {
  version: "v2"
  canCollapse: true,
  collapseOnload: true
});
</pre></div>
