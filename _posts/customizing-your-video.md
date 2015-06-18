---
layout: post
title: Customizing Your Video
description: Drive more interaction and better engagement with your content using Wistia video customization features.
category: Video
post_intro: <p>Your video content is truly powerful - and Wistia customization can ensure engagement with your audience, which drives business for you.</p><p>This article will cover the customization options for your video, and how to make them work for you.</p><p>Once you customize your video, you can also choose to <a href="http://wistia.com/doc/embedding">embed it</a> with your customizations.</p>
---

## The Customize Panel

{% post_image hashed_id: 'db0025a27de21064aa0bb2c5de505445643d1795', class: 'center' %}

After uploading a new video, the *customization* step gets it ready for the big
time. Open the customization panel by selecting *Customize* from the
<span class="action_menu">Video Actions</span> menu.

{% post_image hashed_id: 'f400b4292bf2bf88052126113611635da29e4648', class: 'center' %}

The customize panel slides out to reveal an array of different options for your
video. Let's walk through the customization options, along with some of the
[*advanced level*](#advanced_customize_features) tools for customization.

## Appearance

{% post_image hashed_id: 'baf0069f5b737c8ad2115273cd4730cfaf51e2e1', width: 300, class: 'float_left' %}

The *Appearance* options are about getting your video looking *sharp*.

Make sure the **thumbnail** is the one you want (we choose one for you from the middle
of the video by default, so you may want to [change it](#changing_the_thumbnail)).

The **player color** should reflect your branding, to encourage more consistency in
your viewer's experience.

Finally - you can choose whether visitors to the video page will have the
option to [leave comments](#turn_off_comments).

{{ "Changes to the thumbnail won't apply to popover embeds without re-embedding. Since popovers reference the exact image used when they're first embedded, you'll want to update their embed codes out in the wild." | note }}

### Changing the Thumbnail

Video still, poster image, first frame... we've heard all sorts of terms for the
image that appears when the page loads, before your viewers begin watching.
We call it the **thumbnail**.

By default, our system selects the middle frame of the video. But sometimes this can
catch the speaker in mid-sentence, or can reveal something about the content
you want to keep a secret!

To change it, select one of two options: **Upload a new image** (one you
have carefully crafted) or **Use the current frame** - which means you want the
frame that is currently showing in your video to the right.

Below is a quick screencast to show you the thumbnail update moves.

{% wistia_embed hashed_id: dthrz8ewm0 %}

### Turn off Comments

{% post_image hashed_id: '2d95bb55b1657393cdd8b401dc3b41c50f3e13f2', class: 'center' %}

By default, viewers of your content will be able to leave comments. To disable
this functionality, open the Customize panel, and under the Appearance tab,
un-check the *Enable comments* checkbox.

To disable comments across all videos, see the
[project defaults](#set_project_defaults) section.

## Controls

{% post_image hashed_id: 'ff915dcff4a37c3d3d85062bb9e7ab4b1307fdc9', class: 'float_right', width: 300 %}

The *Control* area includes options to tweak the video controls on your media. 
Don't want viewers skipping important parts of your video? Adios, **Play Bar**! 
Customize your video however you'd like--by adding or removing any buttons.

## Social Bar

The *Social Bar* is our nickname for the group of social buttons that sit below 
the video and make it easy to share the video in social networks.

{% post_image hashed_id: '6315a5aa70d7d5aa1d672fc6453f0115ed3127c9', class: 'float_right', width: 300 %}

The Social Bar has a bunch of options, from social networks like Twitter and
Facebook to actions like *Email* and *Download*.

### Configuring the Social Bar Buttons

If you embed your video in a situation where content is shown in multiple
places, like a blog (where the video might be shown on the homepage *and* a
specific post page), you should use the *Buttons link to* option to make sure
all social bar buttons for that video point to the post page.

Select the *a specific page* option.

{% post_image hashed_id: 'f5c6a0a9dc0e3e428b2ced491dab0a78b5129f74', class: 'float_right', width: 300 %}

### Adding Your Logo

Adding your logo to the Social Bar is an easy way to link back to your homepage.

{% post_image hashed_id: 'ab9df82f7be1949f628c89e7003c2c30bbc70a76', class: 'float_right', width: 300 %}

Check the *Show logo on the right* checkbox. Upload your own logo (or use ours,
totally up to you!).

{{ "Logo images should have the max size of 100px by 20px, unless you want to crop it." | note }}

Finally, update the *Logo Link* to point to a page of your choosing.

### Using Video Backlinks

If you use the *embed* option on the Social Bar, you can add backlinks support - 
which means if a viewer re-embeds your video, the embed will have a link to
your original content. This is also valuable from a Video SEO perspective.

{% post_image hashed_id: '7548122af8f0985d1ff2f33e182709ca406c4936', class: 'center' %}

*The link underneath the video in the example above is a Video Backlink*

In the Social Bar customization area, click the *configure* link next to the
*Embed* option. Check the *Include backlink* option.

{% post_image hashed_id: 'c09a26462067cad142400ed120a84609d2d2f03c', class: 'center' %}

Configure the link location and link text using the *Buttons link to* and
*Specific Page* options (the embed configuration window will also include those
instructions).

Once that is done, save your customizations. Open the [Embed & Share]({{'/embedding#generate_an_embed_code' | post_url}})
window, and make sure to select an SEO embed code.

## Timeline Actions

Want your video to autoplay on page load, or loop when it's done? Need a sweet email
gate to capture leads? Then you need Timeline Actions, friend!

{% wistia_embed hashed_id: kh5w16gm6f %}

Timeline Actions are an easy way to get your viewers to take action with your videos. 
They're sort of like the sprinkles on top of your (already amazing) video cake.
Within the Timeline Actions drop down menu we house all sorts of great tools--like
start and end behaviors, [Turnstile email gate](#turnstile), [Calls to Action](#call_to_action), and [Annotation links](#annotation_link).

{{ "For more information on tracking Action analytics, check out our [Embedded Video Analytics](http://wistia.com/doc/embedded-video-analytics#actions) docs." | note }}

{% post_image hashed_id: '983a220538b127659d67228b50bc1040ee18648c', class: 'float_right', width: 300 %}

Any Action added to your video will appear as a waypoint below your video
timeline. All Actions can be placed at any time within a video. To change when 
these Actions show up you can simply adjust the time stamps under the Timeline 
Actions menu or drag the waypoints to the exact frames they're to appear.

{% post_image hashed_id: 'ab4efc1f613f79a1bf8a4438a4a525ad2354fc73', class: 'center' %}

### Annotation Link

An annotation link is a great option to notify your viewers without interrupting
the video.

{% post_image hashed_id: '0dc1db4a6f46dceeeb41af933e9a62406773bcc0', class: 'float_right', width: 300 %}

The annotation link, when added, will appear in the upper right corner of
the video. Plus, it can stick around for as long as you'd like. You can adjust the 
time by updating the time stamps or dragging the waypoint below the video timeline. 
To make your annotation links longer or shorter, adjust the length bar by clicking
and dragging.

{{ "If you want to create an annotation without a click-through link just leave the URL line blank." | tip }}

{% post_image hashed_id: 'bd5e724bda5b6cbfcadf7390dd0206951ae337b9', class: 'center' %}

{{ "Since iPhones use their native player for videos, Annotations do not currently work on the iPhone." | note }}

### A Note on Device Support for Annotation Links

Call To Action and Turnstile will work properly on pretty much every mobile device (all the environments we've tested at least... which is a _bunch_).

Annotation Links are a bit different, because they appear over the video while it's playing. They'll work properly on any device where the Wistia player controls are able to function, which includes many Android devices and pretty much every desktop environment. iOS is a little more complicated, since videos played in browser in iOS must always must play in the iOS video player.

In iOS 8 on the iPad, where videos will appear "inline" by default (that is, they won't take over the full browser window), Annotation Links will work fully. Woo!

On earlier versions of iOS (still talking about iPads and inline playback) they'll display, but can't be clicked due to a weird bug that existed in iOS until quite recently that caused any clicks within the area of a video to get swallowed into the inescapable darkness of a black hole. That was no bueno.

When the iOS video player takes over the full screen however, (which it always does on iPhones, and will do on iPads when the viewer chooses to), Annotation Links cannot appear. That's simply because nothing can be displayed in front of the native iOS player when it's in fullscreen mode.


### Call to Action

A Call to Action is a clickable message, image, or HTML script that appears
anywhere in your video, and it lets your viewers know what you want them to
do next.

{% post_image hashed_id: '990daa651616ab00874025abab13fa4d80fd1b0e', class: 'float_right', width: 300 %}

There are three types of Calls to Action:

* **Text:** add a quick, customizable message and link to direct your viewers.
* **Image:** use an image instead of a text link to direct viewers.
* **HTML:** write your own custom Call To Action *(advanced users only)*.

{{ "When adding your link, make sure you include the `http://`" | note }}

### Custom HTML Call to Action

You can build custom HTML Calls to Action that take on-page or inline styles.
Where possible, use on-page styles (i.e. including them in a `<style>` tag in
the head of your page), because they *may* be stripped out during the
customization process.

{{ "Since HTML Calls to Action allow for advanced customizations (which could lead viewers away from our stats servers), they won't collect any Action stats." | note }}

### Turnstile

Turnstile is an easy email gate for your video content. It's great for lead
generation, and connects with [a bunch of great email providers]({{ '/turnstile#set_up_your_email_provider_integration' | post_url }}) to make
tracking new leads simple. [Read more on setting up Turnstile]({{ '/turnstile' | post_url }}).

{% post_image hashed_id: '9a0c105070fb69e6377f272571a6087e805b821a', class: 'float_right', width: 300 %}

You can place a Turnstile at any point of your video by adjusting the
time stamp or dragging the waypoint to the exact frame you'd like it to appear. Neato!

{% post_image hashed_id: '28400a9a5247cda7b312e1fce2c5e932552df901', class: 'center' %}

### Integrate Turnstile with an Email Provider

Emails captured in the Turnstile email gate can be piped directly to an email
provider list, which makes it easy to follow-up with them.

To get started, click the *Setup an Email Provider* link. [Follow the
directions on the Turnstile doc page]({{ '/turnstile' | post_url }}) to get your provider fully setup and
linked.

## Captions

Captions are essential if you’re communicating with a multilingual audience. They’re 
great for educators and instructors--making sure your audience is able follow along 
in any language. Multilingual captions help to break down language barriers, 
getting your awesome content to more viewers.

They’re also a great boost for SEO ranking as the script for your video likely
contains words related to your ranking terms.

[Read more about captions with Wistia]({{ '/captions' | post_url }}).

{% post_image hashed_id: '3b64c15892efcbfb070529fa15704f0d81e683b1', class: 'float_right', width: 300 %}

If your video does not have captions, you'll be presented with the
option to order a transcript (currently only available in English) 
or upload your own captions SRT file. You can upload as many SRT 
files as you'd like, in whatever languages you choose.

{% post_image hashed_id: 'a2578d27e3a446cb352c3b723f88c1127eafe5eb', class: 'float_right', width: 300 %}

If your video already has captions, the Captions customize area will allow you
to *edit*, *download*, or *delete* the captions. You'll also see an option to
order or upload another SRT file.

## Advanced Customize Features

There are a few powerful customization features we've added to make consistency
and organization a little easier.

### Set Project Defaults

If you upload your videos in batches, or have lots of videos in your Projects, 
this one is for you.

{% post_image hashed_id: 'd61de26d6486aad9f0e455daccf69ca1d123cff1', class: 'center' %}

Once you have the customizations for your first video all set, select *Set
Project Defaults* from the <span class="action_menu">Video Actions</span> menu.

{% post_image hashed_id: '797314b431652f99333c42e735c290bc82b93292', class: 'center' %}

The *Set Project Defaults* screen has two options:

* Apply the customization settings to all videos currently in the Project.
* Apply the customization settings to all future videos added to the Project.

These are **not** mutually exclusive - you may choose to use both. This means
once you apply a set of customizations to a single video, you can apply them
automatically to all the videos in the Project, and all the videos going
forward.

### Load Settings

If your videos *across* Projects share common settings, this one will save you
lots of time.

{% post_image hashed_id: '59604c54d44a302334b952c55db51d2c7d553173', class: 'float_right', width: 500 %}

If you've just uploaded a new video, or want to add the customizations from one
video onto another video, you should *load settings*. Inside the 
[Customize Panel](#the_customize_panel), select the *Load Settings* link at the
top.

{% post_image hashed_id: '397e8921b62ca9b08b609c58c9fc9e94ac63a191', class: 'center' %}

The *load settings* includes a list of your Projects, and the videos within
those projects. When you select a specific video, the copy underneath will
describe the customizations on the video, which if you ask me is pretty slick.

## Customization FAQ

**Q: Do you have an awesome animation explaining all these differences?**

A: Yes, yes we do.

{% wistia_embed hashed_id: tn01bs4yyv %}

**Q: I have 135 videos embedded on my website...do I have to re-embed everything? HALP!**

A: No, all of your embeds will continue to work exactly as they always have.
You can update your embeds to the new *customization* paradigm at your
own pace.


**Q: I customized my video, but it isn’t updating on my website....why not?**

A: Live updating of embedded videos is *only* available for embeds created using 
the Customize & Embed paradigm. Previously embedded videos (before Customize) 
will not auto-update when you customize them. 

If you generate a new customized embed code, this will then auto-update the 
next time you make changes to your customizations.

**Q: What if I want my videos to appear differently (i.e. have different
customizations) in two different places?**

A: Each version of the video in your account will only have one set of
customizations. To have the same video with *different customizations*, you
will need to create a new instance of the video.

The quickest way to do this is with the [Copy Media]({{ '/media#copy_video' | post_url}})
tool. Create a copy of your video, and start applying new customizations to it!

**Q: In the SuperEmbed Builder, I had an account-wide default profile for my 
embeds...where is that now?**

A: We have made this functionality way more powerful with the ability to 
[load settings](#advanced_customize_features) (found at the top of the Customize panel) 
from any video in your account as well as the ability to create Project Default 
profiles (found under “Set Project Defaults” in the Video Actions menu).


**Q: Where did “Change Thumbnail” go?**

A: Change thumbnail is now found under the [Appearance tab](#appearance) in the 
Customize panel.


**Q: Where did my *Email marketing* menu item go?**

A: With Customize, we have centralized all embedding of all types in the *Embed* panel. 
Select click on *Embed* under the <span class='action_menu'>Video Actions</span>
menu. [See more on embedding]({{ '/embedding' | post_url }}).


**Q: Where did my *Captions* menu item go?**

A: Management of captions and transcriptions is now all done from within the 
Customize Panel under the [Captions tab](#captions).


**Q: You said customizations would show up on Twitter, but what about
Facebook?**

A: Unfortunately, because of the limitations of Facebook embedding, we are not 
able to push all of your awesome video customizations over there. That being 
said, we are hopeful that Facebook will start to update their methods for 
pulling video information so that we can get the customizations flowing!


<script src="//fast.wistia.com/assets/external/embed_shepherd-v1.js"></script>
<script src="//fast.wistia.com/labs/play-when-visible/plugin.js"></script>
<script>
  wistiaEmbeds.onFind(function(video) {
    if (video.hashedId() == 'dthrz8ewm0') {
      video.addPlugin('playWhenVisible', {
        src: '//fast.wistia.com/labs/play-when-visible/plugin.js',
        outsideIframe: true
      });
    }
  });
</script>
