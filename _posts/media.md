---
title: Media in Wistia
layout: post
category: Getting Set Up
description: From changing the title, to embedding it on your website or blog, learn all the functionality for uploaded media here.

---

{% post_image hashed_id: 'abc9da23d7fa5920bd70ada7a8f1b9a729b26175', class: 'center' %}

## Upload Video

Before you can do anything awesome with your videos, you have to upload them! 

Check out the [uploading documentation]({{ '/upload-video' | post_url }}) for
more info on uploading.

## Update Video Title

The title of the Media is how you will find it in your Account.  By default,
the title is the name of the media you uploaded, but can be updated anytime 
(doesn't have to be set before uploading). Changing the title of the video won't
affect embed codes or links, either.

{% post_image hashed_id: 'ef21edd3c495688fb104d461e202109812afce5a', class: 'center' %}

To edit the title, hover over it with your mouse, and click the 
<span class="edit_tag"></span> tag. Edit the title text, and press the 
<span class="code">return</span> key to finish editing.

## Change the Thumbnail

Changing the thumbnail of your video is covered in detail in the [Customize documentation]({{ '/customizing-your-video' | post_url }}).

## Moving and Copying Media

Moving and copying media is a normal part of the organizational workflow for
your videos.

*Copying* is good for creating multiple instances of a video with different
customizations, or for zero-ing out stats for a certain video (i.e. you make a
copy and then re-embed).

*Moving* is good for keeping your account tidy. You might set up a project
called "Active Videos" and another called "Archive". Moving an old video to the
"Archive" project means you can reference the stats for that video later, but
it doesn't clutter up the "Active Videos" project. Or maybe we're just
obsessive compulsive when it comes to organization :).

{% post_image hashed_id: 'cf7972e5b6055eb26078644ea9a99a40a79d1df2', class: 'center' %}

Select *Move & Copy* from the <span class="action_menu">Project Actions</span>
menu. This will open up the *Move & Copy panel*.

{{ "You must be an admin on the project to view and open the Move & Copy panel." | note }}

{% post_image hashed_id: '2c91018f45702bfc159e5659f5815398d8ffbcc7', class: 'center' %}

You can drag & drop the media you wish to move in either direction (left to
right, or right to left). Hold the `Shift` key to select multiple media.

To Copy, hold the `Ctrl` (Windows) or `⌘` (Apple) key while you arrange media.

Watch the video to see Move & Copy in action.

{% wistia_embed hashed_id: 50uxm03679 %}

### Moving Videos Between Accounts

If you are an admin on multiple accounts, the *Move & Copy panel* will allow
you to move media to other accounts. For videos with stats, however, the stats
will not transfer between accounts.

**If you move a video between accounts accidentally**, and need the stats back,
moving the video to it's original account and project will automatically
restore the stats. Phew.

## Embed Video

The ins-and-outs of embedding your video is the subject of our 
[embedding documentation]({{ '/embedding' | post_url }}).

## Downloading Media 

By default, contacts invited into Wistia are not permitted to download your
media files. A contact's ability to download files is controlled via 
permissions at the project level. 

To adjust a contact's permissions for a particular project, go into that 
project and choose *Manage Viewers* from the
<span class="action_menu">Project Actions</span> menu.

There is more on giving download permissions in the [private sharing]({{ '/private-sharing' | post_url}})
documentation.

## Timecoded Comments

Timecoded comments allow the user to link a comment on a video to a particular 
time in the video.  The timecode is captured and stored with the comment such 
that when another user views the comment, they can click on the time code, the 
video will skip directly to the point in the video where the comment was made.

{% post_image hashed_id: '05da00993fead0c4d20ab2914f415ee4200d7e87', class: 'center' %}

### How to make a timecoded comment

To make a timecoded comment, pause the video at the time to which you wish the 
comment to be linked.  Then, simply check the box next to the Post Comment button 
which says *Link comment to current time in video*.

Once the box is checked and the comment has been written, click the 
<span class="faux_button">Post comment</span> and your comment will be saved.

{% post_image hashed_id: '98a66b9660a799dc284bcf3d0b97f8b4c7bc9176', class: 'center' %}

### Delete Comment

To delete comments, hover over the comment you'd like to delete, and the trash
can icon will appear. Select the trash can to remove the comment permanently.

{% post_image hashed_id: '53ca66ac5b6fb55713c9b3b274be578c9f3fd59e', class: 'center' %}

### Disable Comments

Comments can be disabled for each video. The [Customize documentation]({{ '/customizing-your-video#disable_comments' | post_url }}) 
covers this in further detail.

## Video Description

To add a description to your video, hover your mouse under the Media title.
Click the *Add a Description* text that appears.

{% post_image hashed_id: '7123835d053afbb27a3408f292348575f5dfe8f6', class: 'center' %}

Descriptions are most helpful for sharing links to view video in your Wistia
account (where viewers need additional context). Your video description will
also be passed through to services like Facebook ([see more on social sharing]({{ '/social-sharing' | post_url }})).

{{ "Embedding elements via HTML in video descriptions is currently not recommended and can cause issues with the page displaying." | note }} 
