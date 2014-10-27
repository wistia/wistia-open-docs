---
layout: post
title: Customizing Your Video
description: Drive more interaction and better engagement with your content using Wistia video customization features.
category: Video
post_intro: <p>Your video content is truly powerful - and Wistia customization can ensure engagement with your audience, which drives business for you.</p><p>This article will cover the customization options for your video, and how to make them work for you.</p><p>Once you customize your video, you can also choose to <a href="http://wistia.com/doc/embedding">embed it</a> with your customizations.</p>
temper: true
---

## The Customize Panel

{% post_image hashed_id: 'db0025a27de21064aa0bb2c5de505445643d1795', class: 'center' %}

After uploading a new video, the *customization* step gets it ready for the big
time. Open the customization panel by selecting *Customize* from the
<span class="action_menu">Video Actions</span> menu.

{% post_image hashed_id: '1cb27f6a4d8a302de3f2e6fc72c44b2ff15236a1', class: 'center' %}

The customize panel slides out to reveal an array of different options for your
video. Let's walk through the customization options, along with some of the
*advanced level* tools for customization.

## Appearance

{% post_image hashed_id: 'ce7c8e288eadec78f049a63a4ed6660e09123dc9', width: 300, class: 'float_left' %}

The *Appearance* options are about getting your video looking *sharp*.

Make sure the **thumbnail** is the one you want (we choose one for you from the middle
of the video by default, so you may want to [change it](#changing_the_thumbnail)).

The **player color** should reflect your branding, to encourage more consistency in
your viewer's experience.

Finally - you can choose whether visitors to the video page will have the
option to [leave comments]('#disable-comments').

{{ "Changes to the thumbnail won't apply to popover embeds without re-embedding due to them referencing the exact image that was the thumbnail when you embedded the video." | note }}

## Changing the Thumbnail

Video still, poster image, first frame...we've heard all sorts of terms for the
image that appears when the page loads, before your viewer's begin watching.
We call it the **thumbnail**.

By default, we select the middle frame of the video. But sometimes this can
catch the speaker in mid-sentence, or can reveal something about the content
you want to keep a secret!

To change it, select one of two options: **Upload a custom image** (one you
have carefully crafted) or **Use current frame** - which means you want the
frame that is currently showing in your video to the right.

Below is a quick screencast to show you the thumbnail update moves.

{% wistia_embed hashed_id: oo6cr5kz8p %}

## Disable Comments

{% post_image hashed_id: '22e89f019b63d4c71b84843aad9f5e5c418b1857', class: 'center' %}

By default, viewers of your content will be able to leave comments. To disable
this functionality, open the Customize panel, and under the Appearance tab,
un-check the *Enable comments* checkbox.

To disable comments across all videos, see the 
[project defaults](#set_project_defaults) section.

## Controls

{% post_image hashed_id: '27d9df9224bd47f11b58ca0ea3aebe6aeeda1ee5', class: 'float_right', width: 300 %}

The *Control* area includes the different control options you can add to your
video. Remove the play button, remove the full screen button, or make the video
autoplay.

## Social Bar

The *Social Bar* is our nickname for the group of social buttons that sit below 
the video and make it easy to share the video in social networks.

{% post_image hashed_id: '9f47519fd807ec8436a030b32d97f1649f88ac99', class: 'float_right', width: 300 %}

The Social Bar has a bunch of options, from social networks like Twitter and
Facebook to actions like *share stats* and *download*.

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

## Call to Action

A call-to-action (or CTA) is a clickable message or image that appears
immediately after your video, and lets your viewers know what you want them to
do next.

{% post_image hashed_id: '09bfc5c29c924a7bbd1b08e6125f65b4054e3927', class: 'float_right', width: 300 %}

There are three types of CTAs:

* **Text:** add a quick, customizable message and link to direct your viewers.
* **Image:** use an image instead of a text link to direct viewers.
* **HTML:** write your own custom call-to-action *(advanced users only)*.

{{ "When adding your link, make sure you include the `http://`" | note }}

### Custom HTML Calls to Action

You can build custom HTML calls to action that take on-page or inline styles.
Where possible, use on-page styles (i.e. including them in a `<style>` tag in
the head of your page), because they *may* be stripped out during the
customization process.

## Turnstile Email Gate

Turnstile is an easy email gate for your video content. It's great for lead
generation, and connects with [a bunch of great email providers]({{ '/turnstile' | post_url }}) to make
tracking new leads easy. [Read more on setting up Turnstile]({{ '/turnstile' | post_url }}).

{% post_image hashed_id: '2e45d0c67f1e99b430335b73c9a8fea3f0471534', class: 'center' %}

There are three options for when you request viewer emails:

* Before they click play
* At the end of the video
* At a specific time in the video

### Integrate Turnstile with an Email Provider

Emails captured in the Turnstile email gate can be piped directly to an email
provider list, which makes it easy to follow-up with them.

To get started, click the *Setup an Email Provider* link. [Follow the
directions on the Turnstile doc page]({{ '/turnstile' | post_url }}) to get your provider fully setup and
linked.

## Captions

Captions are a must for the hearing impaired. They are also
useful for educational content, to make sure the audience is able to follow the
instructor. 

The captions for a video can also help boost SEO ranking of your video content,
since the script of your video likely contains words related to your ranking terms.

[Read more about captions with Wistia]({{ '/captions' | post_url }}).

{% post_image hashed_id: '53bec864330fdd48fdfde29d74b46c817c3734d4', class: 'float_right', width: 300 %}

If your video already has captions, the Captions customize area will allow you
to *edit*, *download*, or *delete* the captions, as well as choose if you want
to include them by default.

{% post_image hashed_id: 'd3306d81104947e4c9a4a3954cf418053ef20c56', class: 'float_right', width: 300 %}

If your video does not have captions, you will instead be presented with the
option to order a transcript or upload your own captions SRT file.

## Public Preview

See that lonely button at the bottom of your Customize Panel? 

Once your video is looking the way you want, the 
<span class="faux_button">Public Preview</span> button will
allow you to see the video as your viewers will see it.

Selecting the <span class="faux_button">Public Preview</span> mode will
temporarily close the customization panel and you will see exactly what your
viewers will experience on your Wistia page!

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

{% post_image hashed_id: '67a73a2a473ff11373d1dcc7217758c3ebee7f07', class: 'center' %}

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


**Q: What is “Public Preview”?**

A: *Public Preview* allows you to see your video as a viewer would see it when 
clicking through from a link you may have shared via email, twitter, or Facebook.


**Q: You said customizations would show up on Twitter, but what about
Facebook?**

A: Unfortunately, because of the limitations of Facebook embedding, we are not 
able to push all of your awesome video customizations over there. That being 
said, we are hopeful that Facebook will start to update their methods for 
pulling video information so that we can get the customizations flowing!
