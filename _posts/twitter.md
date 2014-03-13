---
layout: post
title: Sharing Your Videos on Twitter
category: Embedding
description: Use Twitter functionality with your Wistia videos to drive valuable views and grow your audience!
post_intro: <p>Twitter is recognized as one of the most powerful social sharing vehicles out there. With our <a href="http://wistia.com/labs/twitter-follows">Twitter Follow Lab</a> and media sharing functionality, you can use your Wistia content to grow your audience.</p>
---

## Twitter Follow Lab

The [Twitter Follow lab](http://wistia.com/labs/twitter-follows) is for adding an
interactive mid-roll link to your video that prompts viewers to *follow* the Twitter
handle you've specified.

Here's an example:

{% include twitter-follow-embed.html %}

So when a speaker is on screen, you can add the follow button prompt. Viewers 
can start following the handle you specified, and the video will just keep on 
playing without interruption.

To use the Twitter Follow lab, head to your account and open the video you would
like to use. First, get it [customized]({{ '/customizing-your-video' | post_url }}) 
the way you want. Next, select *Embed & Share* from the <span class="action_menu">Video Actions</span> menu.

{% post_image hashed_id: 'c184782eab1ae24589872575580f084bd1de6bca', class: 'center' %}

In the **Inline Embed** area, copy the Embed Code.

{{ "The Twitter Follow lab uses a Post-Roll call-to-action, so you cannot use a customize call-to-action and the Twitter Follow lab (it will be overwritten if you do)." | note }}

{% post_image hashed_id: 'd6cccb65c6f27bb6735bf1372c126075172910cd', class: 'center' %}

Now that you have your embed code copied, open the [Twitter Follow lab](http://wistia.com/labs/twitter-follows)
paste your embed code into the box labeled *Paste embed code* (aren't we good with names?).

{% post_image hashed_id: '659f7172c9ccd9eb8634462f8983dda2d7f2d41c', class: 'center' %}

Update the *Mid-Rolls* area with the twitter handles you want to highlight, and 
the timing of when they should appear.  You can also add a *Post-Roll*, which can
give viewers an handle to follow (i.e. we used `@brendan`, `@csavage`, and then 
`@wistia` at the end). You can also check the *recap names at end* option, which
will also list the handles you highlighted earlier at the end.

Because Mid-Roll interactivity is not yet accepted for iOS playback (iOS doesn't
allow anything *over* the video), Twitter Follow functionality will use a Post-Roll
by default.

Once you are ready to start using your Twitter Follow-enabled video, select the 
new embed code in the *Your new embed code* box, copy it, and then paste on your
external site. Enjoy your new followers!

## Sharing Wistia Content from Your Account With Twitter Cards

Twitter's Twitter Card functionality is pretty slick - you can now play media from
accepted sites inside of the Twitter stream. Super useful, as it doesn't require
leaving the Twitter stream to view your video. Well guess who got Twitter Card
approval? These guys!

{% post_image hashed_id: '0747172f115e050285cb96d7cc5ec3b49586d303', class: 'center' %}

So, you're asking, how can I take advantage of this awesome-ness.  Here we go:

Open up the media in your account that you want to share in your Twitter feed.
From the <span class="action_menu">Video Actions</span> menu, select *Embed & Share*.

{% post_image hashed_id: 'c184782eab1ae24589872575580f084bd1de6bca', class: 'center' %}

In the *Share & Embed* window, select the *Social Sharing* area at the top. 
If you don't have a description for your video yet, we will include a line 
recommending you do so. Descriptions show up on the Twitter cards, which makes 
them pretty useful for setting context for your viewers and piquing their interest.

{{ "If your Project is currently set to Private, you will be prompted to switch it to Public. This means viewers who click through the link will be able to watch your video." | note }} 

{% post_image hashed_id: '7834d139a11867813ded24d2bc75c67597d7754f', class: 'center' %}

After you click the *Tweet* button, the Twitter tweet modal will appear (you may
be asked to login). The default tweet text is the name of the media and the 
description.

Once you confirm that you want to tweet the link out, check your feed! It's like
Christmas morning, except instead of presents you get your video content in your
Twitter feed.

{% post_image hashed_id: 'a2255839136f83fdde7f87dc924e5361404d8491', class: 'center' %}

{{ "The inline video feature on Twitter will not work for CNAMEd accounts unless you get your own Twitter Card, which you can do here: https://dev.twitter.com/docs/cards." | note }}
