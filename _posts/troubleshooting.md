---
title: "Troubleshooting"
layout: post
category: troubleshooting
description: Something gone rogue with your embeds? Can't see the video? Loading problems? Don't sweat! We've got you covered.
post_intro: <p> Nobody likes it when their video's askew. Maybe you're seeing a black screen, maybe you've got a loading block, maybe you just can't seem to embed it. Fear not, video friend! We've got some down and dirty tips to get things sorted. You've got this. :) </p>
footer: for_intermediates
---
## Uploading

Video not uploading? Bummer! There's a quick checklist we like to run through if
you're experiencing uploading issues.

### Clear your Cache

First, clear your browser's cache. It seems silly, but it's saved us in a
*number* of tough situations, so we always recommend it to start. The cache (or
temporary internet files) can be cleared in the following locations:

  * **Chrome** *Preferences --> Show advanced settings... --> Browsing data*
  * **Safari** *Preferences --> Privacy --> Remove All Browsing Data*
  * **Firefox** *History --> Clear recent history*
  * **Internet Explorer** *Tools --> Internet Options --> Browsing History*

### Update Your Browser

Next, make sure your browser is up-to-date. Again, this might seem a bit
trivial, but since we use an HTML5 uploader, we want to make sure you can
access the good stuff. Check your browser's status
[here](http://browsehappy.com/).

### Try the Backup Uploader

Third, try the backup uploader. (Just a heads up, this upload process doesn't
show a progress bar.)

The Backup Uploader can be accessed by adding `?backup_uploader` to a project
URL.

So from a project URL like `https://support.wistia.com/projects/qdybaq78y0`,
you'd navigate to
`https://support.wistia.com/projects/qdybaq78y0?backup_uploader` to get to the
backup uploader.

From there just select **Upload** from the
<span class="action_menu">Project Actions</span> menu, and you're good to go!

### Reset Your Internet Connection

Finally, try resetting your internet connection. Some say it's the oldest trick
in the book, but when it comes to connection issues it can be a lifesaver. Try
resetting your router and making sure you have a secure connection; a shaky
connection can be a nightmare when trying to upload (especially for larger
files).

### Export Settings and HandBrake

If you're still unable to upload the video, check out our
[Optimal Export Settings]({{ '/export-settings' | post_url}}), and make sure
your video is within our suggestions.

Wistia plays best with **MP4 files** with an **h.264 codec** and bitrate between
**5,000 - 10,000 kbps**. If your file doesn't fit within these guidelines, try
running the file through [HandBrake](https://handbrake.fr/) (a free transcoding
software) to see if that resolves the problem.
[Check out our suggested HandBrake settings]({{ '/exporting-guide#handbrake' | post_url }}).

Still struggling? Bummer! [Give us a shout](http://wistia.com/support/contact)
and we'll be happy to dive in deeper with you.

{{ "To expedite the support process, please send along the file that's giving you trouble via DropBox, Google Drive, or another file sharing system." | tip }}

## Unable to Process

So you've successfully uploaded your video, and it's queued for processing. But
then the processing fails. That's the pits!

{% post_image hashed_id: 'b0e87da94a81983fe2a335ebcbeff606d40ed115', class: 'center' %}

Don't panic, there are a few easy fixes.

Most of the time when a video fails to process, it means Wistia was not able to
create the correct derivatives for smooth playback. This is often caused by an
error in the initial exporting process.

First, we recommend **exporting the file from your video editor again**. If
there's any error in the file, this is the easiest place to scrub it out. Check
out our [exporting guide]({{ 'exporting-guide' | post_url }}) for a quick
overview of our suggested settings. Then try uploading the video to Wistia
again.

If you don't have access to the original file export, we suggest **running the
file through [HandBrake](https://handbrake.fr/)**. This will often clear out any
corruptions in the file, and get it ready for upload to Wistia.
[Check out our suggested HandBrake settings]({{ '/exporting-guide#handbrake' | post_url }}).

Still no dice? Time to call for backup.

**Leave the file in the failed state** (don't delete it!), and
[send us a link to the video](http://wistia.com/support/contact). We'll get it
cleaned up in no time. :)

## No Video (Black Screen)

Is your video all bark and no bite - all audio, no video?

This is likely caused by a very low frame rate associated with your video.
Usually webinars and screencasts suffer from this problem.

The good news is that there is a fix! And that's bumping up that frame rate.

If you can do this from your video exporter, it's easiest to make that change
right in the original file. Bump up the frame rate to 24 fps, and then
[replace that video]({{ '/replace-video' | post_url }}).

Otherwise, we've got the old standby - [HandBrake](https://handbrake.fr/).

You'll want to run the file through HandBrake and **increase** the frames per
second to **24 fps** at a Constant frame rate.

{% wistia_embed hashed_id: wn87v8u3zq, embedType: legacy_api %}

Then you can [replace that video]({{ '/replace-video' | post_url }})!

### A Note about Screencasts

There's some magic behind-the-scenes on the Wistia side where we can detect
screencasts and encode them differently. Our system will create a
different set of derivatives for screencasts to help maintain visual quality.
Those three derivatives are:

 - iPhone (mobile) asset - **640 px wide** MP4 at **800 kbps**
 - HD Flash asset at **1200 kbps** (size is determined by the original file)
 - HD MP4 asset at **1200 kbps** (size is determined by the original file)

The key thing to know with screencasts is that they'll be encoded with
screencast logic if the **bitrate is lower than 1200 kbps**. This way Wistia
will deliver an HD asset in-line (usually 1080p), so your content is crisper and
easier to watch. If you'd like your videos encoded with screencast logic, we
recommend keeping your bitrate below 1200 kbps (this is total bitrate -
including *both* audio and video).

If you don't have control over this in your video editor, you can always run the
file through HandBrake (it's our best friend). Just make sure to set the bitrate
to **1200 kbps.**

{{ "HandBrake controls can be a bit finnicky (since it's factoring in *both* audio and video bitrate), so if you're still not seeing the correct assets, drop down the bitrate a touch lower. Usually the safest place is 1000 kbps, but you can always check out the final bitrate by inspecting the file." | note }}

## Embedding

Someday we'll live in an embed-less world, but until then, things can get a
little wonky when you're pasting in that embed code. Luckily, lots of issues can
be fixed with a few quick tweaks.

Here are some common challenges, and how to overcome them. <a href="//fast.wistia.net/embed/iframe/jfgvzbaxu2?popover=true" class="wistia-popover[height=360,playerColor=84afde,width=640]">Never give up. Never surrender.</a><script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/popover-v1.js"></script><script src="//fast.wistia.net/static/iframe-api-v1.js"></script>

### Fallback Embed

The Standard inline embed, while awesome, doesn't work in every situation. We
plan for a lot, but we can't plan for everything. If you're not seeing your
embed, or something is funky, try using the Fallback (iframe) Embed.

Then, [give us a holler](http://wistia.com/support/contact), so we can improve
the Standard Embed! You'll get our undying love for making Wistia better. 💙

### Black Bars on the Top and Bottom or Sides of the Video

Does your video look sort of like this one?

<div id="wistia_hj6gi4rn4g" class="wistia_embed" style="width:640px;height:360px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
wistiaEmbed = Wistia.embed("hj6gi4rn4g");
</script>

Those lines on the left and right sides of your video (or perhaps top and
bottom) are the worst! That can happen if the dimensions of your embed code
don't match the dimensions of your video.

While there are many possible causes for this, one common reason is that the
[Social Bar]({{ '/customizing-your-video#social_bar' | post_url }}) was either
added or removed _after_ the video was embedded. Since the Social Bar takes up
some extra space below the video, the embed code's dimensions need to adjust to
accommodate for it. Try re-embedding your video to see if that helps!

### This Video is Not Authorized to Be Embedded Here

Do you see this big white box when you embed your video?

{% post_image hashed_id: 'd37e8e31fab5981477f07be91c54d09caf35ddb4', class: 'center' %}

This means you have **Domain Restrictions** turned on. To change the domains
where your video can be embedded, you'll need to be the **Account Owner**. This
can be done from the [Account Settings]({{ '/account-setup#domain_restrictions' | post_url }})
menu.

### Video Not Resizing Correctly

There are generally two ways in which a video might not display at the size
you'd expect.

The first, you're [embedding in WordPress with oEmbed]({{ "/wordpress#using_an_oembed_url" | post_url }}),
but your video is displaying at smaller dimensions than what you set on the
_Embed & Share_ screen. If that's happening, it's possible that your WordPress
theme specifies a maximum width for content embedded with oEmbed. See
[this tip in the Wistia WordPress help page]({{ "/wordpress#video_appearing_smaller_than_it_should_be" | post_url }})
for details on fixing that.

Alternatively, you'd like your video to be responsive, but it's not changing size when it
should. First things first, make sure you're using the
[Responsive option]({{ '/embedding#embedding_responsively' | post_url }}). If
you're using that already but your video is not responding correctly, check to
make sure that the parent container (that's the HTML element surrounding your
video, like a set of `<div>` tags) is set to the width you'd like. That's what
the embed code will use to determine how wide the video should be.

If you're having a problem with the size of your video and the tips above don't
do the trick, [send us a link to the video](http://wistia.com/support/contact)
and we'll help you get it looking great!

## Playback

Lots of things can cause playback issues, and at Wistia we're always working on
improving your viewer's experience. If you think something might be up site-wide,
the best place to look is our [Status Page](http://status.wistia.com/). Here
we'll report any outages as soon as they happen, and let you know as soon as
they're resolved.

If nothing is amiss there, it's time to start troubleshooting.

### Loading...

Got loading problems? The video just isn't playing? Let's figure this out, and
rule out the easy things first.

### Check Your Internet Speed

Are you (or your customers) experiencing slow loading, or seeing a "Loading..."
message on your videos? The most common cause of this problem is that the
viewer's Internet connection speed is not fast enough to support video playback
reliably. While we take many steps to optimize the playback experience for each
viewer, there are some [minimum requirements]({{ '/viewer-requirements#internet_connection_speed' | post_url }})
for a smooth playback experience.

[Check your internet speed](http://www.speedtest.net/). If you're not up-to-par,
contact your Internet provider. If so, let's move on.

### Clear Your Cache

Like with video uploading problems, it may seem silly, but it's an amazing fix
in a number of situations. Try clearing your browser's cache and restarting your
web browser.

* **Chrome** *Preferences --> Show advanced settings... --> Browsing data*
* **Safari** *Preferences --> Privacy ---> Remove All Browsing Data*
* **Firefox** *History --> Clear recent history*
* **Internet Explorer** *Tools --> Internet Options --> Browsing History*

### Reset Your Internet Connection

Just like uploading, internet connection can affect playback. Try resetting your
router and make sure you have a secure connection. All set? It's time to start
investigating.

### Try a Different Browser

Sometimes different browsers can cause problems. If you're using Firefox and
your video doesn't play, but things are hunky-dory in Chrome,
[let us know](http://wistia.com/support/contact)! We'll be happy to dig deeper
with you.

### HTML5 vs. Flash

Does your playback issue happen in both the HTML5 player and the Flash player?
The easiest way to test this is to right click and choose "Switch to Flash"
and then switch between the two. Alienating one or the other will help us to figure out
the source of the problem. [Give us a shout](http://wistia.com/support/contact)
with these details, and we'll be happy to jump in.

## Opening a Playback Support Ticket

Sometimes you pull out all the stops, and still nothing works. It's time to call
for backup. To help expedite your troubleshooting playback experience, we'd love
it if you:

 - Send along the link that's provided from
 [What's My Browser](http://www.whatsmybrowser.org/) -- this way we can try to
 mimic the environment. When we can reproduce the problem, we can usually fix
 it! 🔧
 - Let us know if this is browser-specific. If you try a different browser, does
 it work? Which browsers?
 - What about [Flash vs. HTML5](#html5_vs_flash)? Do you have the same
 experience in both environments?
 - Is it happening for a specific group of users? Are they in a specific
 country? Telling us where you're located could help us pinpoint the issue
 faster.
 - **Send us a link to where the problem is happening**. Does it happen on both
 your embedded page, and your Wistia media page? If it's one and not the other,
 we want to know!

 All of this information will help us to narrow down where your issue is coming
 from. The more information you give us, the faster we can work to solve your
 problem. 🚀

## Account

Sometimes things might look a little funny within your account. Maybe you can't
see the right menus, or access certain credentials. Let's check out some
common account issues.

### I Can't See Settings Menu!

Do [your account settings](https://my.wistia.com/account) look something like
this?

{% post_image hashed_id: 'b82433f860cce1d029da5b27e887f582c795fa66', class: 'center' %}

That's because you're a *user* on your Wistia account. Only the **Account
Owner** has access to the full
[Account Settings]({{ '/account-setup' | post_url }}) menu. A Wistia account is
only allowed **one** Account Owner.

We recommend contacting whoever invited you to your Wistia account if you
believe you should have more access. If you think you should be the Account
Owner, or would like to know who your Account Owner is,
[give us a holler](http://wistia.com/support/contact). We'll be happy to walk
you through the steps to [transfer account ownership]({{ '/account-setup#transferring_ownership_of_your_account' post_url }}).

### My Video Actions Options Aren't the Same

In most of our help pages, we show a Video Actions menu that looks something
like this.

{% post_image hashed_id: '9755bb826d1bf21097818347b7485d6e19211c47', width: 260, class: 'float_left' %}

But you might see something like this.

{% post_image hashed_id: '5fb032ba35736a4b282bad63c0b2293baadaa55f', width: 260, class: 'float_left' %}

Or even no menu at all!

This is because your permissions don't allow you access to everything within
this menu. If you believe you should have different rights, contact whoever
initially invited you to the Wistia account.

If you need more clarity around what permissions you have, check out our help
pages on [permissions]({{ '/permissions' | post_url }}) and
[private sharing]({{ '/private-sharing' | post_url }}).

Still confused? [We'll be happy to help.](http://wistia.com/support/contact)

## Stats

Something strange with your stats? Maybe your heatmaps aren't showing up? We've
got you covered.

### Unable to see heatmaps!

So you've uploaded your video to Wistia, and you're ready to watch it and start
pulling in stats. But they don't appear in your engagement graph, or the Viewer
Stream!

This is because Wistia separates any logged in views (Account Owner, Manager,
User) from audience views. If you're logged into your Wistia account (and
watching your video within your Wistia account) your views will be logged as
[Private User Sessions]({{ '/private-analytics' post_url }}).

{% post_image hashed_id: '38ce6972b0bc6bdecc97e566b0f9d3cd98e4f329', class: 'center' %}

{{ "Heads up - this is different from IP Filtering. [IP Filtering](http://wistia.com/doc/account-setup#filtering_out_internal_stats) will ignore any views from designated IP addresses - these will not be logged as Private User Sessions." | note }}

Still can't see your heatmaps? They should show up pretty immediately. First
check out our [status page](http://status.wistia.com/) (we'll tell you if heatmaps
are at all behind real time). If everything is good, feel free to
[reach out to us](http://wistia.com/support/contact). We'll get to the bottom of
it!

<script src="//fast.wistia.com/assets/external/embed_shepherd-v1.js"></script>
<script src="//fast.wistia.com/labs/play-when-visible/plugin.js"></script>
<script>
  wistiaEmbeds.onFind(function(video) {
    if (video.hashedId() == 'wn87v8u3zq') {
      video.addPlugin('playWhenVisible', {
        src: '//fast.wistia.com/labs/play-when-visible/plugin.js',
        outsideIframe: true
      });
    }
  });
</script>
