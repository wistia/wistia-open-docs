---
title: Embed Troubleshooting
layout: post
category: Embedding
description: Does your embed look a bit funky? Is it inside out, backwards, or upside down? You've come to the right place. 
post_intro:
  <p>Does your embed look a bit funky? Is it inside out, backwards, or upside down? You've come to the right place.</p>
temper: true
---

We're always working hard to make Wistia-hosted videos function properly, no extra tinkering required. That being said, it can be tricky to make them display _just right_ in certain situations. Here are some common challenges, and how to overcome them. <a href="//fast.wistia.net/embed/iframe/jfgvzbaxu2?popover=true" class="wistia-popover[height=360,playerColor=84afde,width=640]">Never give up. Never surrender.</a><script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script><script src="//fast.wistia.net/static/iframe-api-v1.js"></script>


## Popover embed taking over the full browser window

Instead of "popping over" the rest of the page in a lightbox, does your video take up the full browser window like the one below?

<a href="//fast.wistia.net/embed/iframe/9oee4njvs1?popover=true"><img src="https://embed-ssl.wistia.com/deliveries/3277caba75e6b99c184b4546a1b240133bb47158.jpg?image_play_button=true&image_play_button_color=3ea9f5e0&image_crop_resized=300x169" alt="" /></a>

This can happen when the popover script, `fast.wistia.com/assets/external/popover-v1.js"`, has either been removed from the page, or is unable to function properly due to a conflict with other code. Check the page source to make sure that script is present. If it's there but your video still isn't quite _popping_, [send us a link](http://wistia.com/support/contact) and we'll help you figure it out!

## Black bars on the top and bottom or sides of the video

Does your video look sort of like this one?

<div id="wistia_hj6gi4rn4g" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("hj6gi4rn4g");
</script>

Those lines on the left and right sides of your video (or perhaps top and bottom) are the worst! That can happen if the dimensions of your embed code don't match the dimensions of your video. 

While there are many possible causes for this, one common reason is that the [Social Bar]({{ "/customizing-your-video#social_bar" | post_url }}) was either added or removed _after_ the video was embedded. Since the Social Bar takes up some extra space below the video, the embed code's dimensions need to adjust to accomodate for it. Try re-embedding your video to see if that helps!

## Loading...

Are you (or your customers) experiencing slow loading, or seeing a "Loading..." message on your videos? The most common cause of that problem is that the viewer's Internet connection speed is not fast enough to support video playback reliably. While we take many steps to optimize the playback experience for each viewer, there are some [minimum requirements]({{ '/viewer-requirements#internet_connection_speed' | post_url }}) for a smooth playback experience.

If your Internet connection is super speedy but you're still having playback issues, [send us a link](http://wistia.com/support/contact) to the page you're seeing the problem on, and we'll help you figure out what's happening there.

## Video not resizing correctly

There are generally two ways in which a video might not display at the size you'd expect: 

1. You're [embedding in WordPress with oEmbed]({{ "/wordpress#using_an_oembed_url" | post_url }}), but your video is displaying at smaller dimensions than what you set on the _Embed & Share_ screen. If that's happening, it's possible that your WordPress theme specifies a maximum width for content embedded with oEmbed. See [this tip in the Wistia WordPress docs]({{ "/wordpress#video_appearing_smaller_than_it_should_be" | post_url }}) for details on fixing that.

2. You'd like your video to be responsive, but it's not changing size when it should. First things first, make sure you're using [Video Foam]({{ '/video-foam' | post_url }})! Video Foam is the best way to make a video responsive. 
If you're using Video Foam already but your video is not responding correctly, check to make sure that the parent container (that's the HTML element surrounding your video, like a set of `<div>` tags) is set to the width you'd like. That's what Video Foam will use to determine how wide the video should be.

If you're having a problem with the size of your video and the tips above don't do the trick, [send us a link to the video](http://wistia.com/support/contact) and we'll help you get it looking great!

## Video not displaying on mobile devices

Do you see a blank white box or a message that says "missing plugin" where your video should be? That can happen if your embed code (usually and API or SEO embed code) is getting modified after you copy it from Wistia.

Check to make sure the embed code on your website looks exactly like the embed code you generated in Wistia. If it's different, try re-embedding it to see if that helps! Certain website building tools (like a CMS) can often make changes to embedded code that will cause it to malfunction. Your embed code will need to be intact in order to work properly.

Still having trouble getting that video to play on a mobile device? [Send us a link to the page](http://wistia.com/support/contact) and we'll help you fix it up right.

## Video not collecting stats

This can happen for the same reason as "[Video not displaying on mobile devices](#video_not_displaying_on_mobile_devices)" above. Is your video working on mobile? If it's looking good there but it's still not collecting stats, [send us a link](http://wistia.com/support/contact) and we'll be happy to help.



<script>
  wistiaJQuery(document).bind("wistia-popover", function(event, iframe) {
    iframe.wistiaApi.bind("end", function() {
      wistiaJQuery.fancybox.close();
    });
  });
</script>
