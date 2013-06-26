---
title: Media in Wistia
layout: post
category: Getting Set Up
description: From changing the title, to embedding it on your website or blog, learn all the functionality for uploaded media here.

---

{% post_image hashed_id: 'abc9da23d7fa5920bd70ada7a8f1b9a729b26175', class: 'center' %}

## Upload Video

Before you can do anything awesome with your videos, you have to upload them! 

To get started, open a Project in your account you'd like to upload video into.

Select *Upload Media* under the
<span class="action_menu">Project Actions</span> menu.

From the upload dialogue box, choose the file to upload from your computer.

{{ "To upload multiple media at once, hold down the shift or control buttons while browsing." | note }}

Once a file has been chosen, you will see the progress of the file uploading
as in the image below.

{% post_image hashed_id: '69498e53ff4f696cc3810229c2bfd88375bcd10d', class: 'center'%}

If you are having trouble with uploads completing, please try our
[simple uploader]({{ '/simple-uploader' | post_url }}). Most upload troubles
are caused by Flash plugin issues - the Simple Uploader does not use Flash. 

{{ "The Simple Uploader does not have a progress bar. Instead, you will need to wait until the upload is complete." | note }}

For instructions on the best way to encode your video prior to uploading it,
check our [video exporting page]({{ '/export-settings' | post_url }}).

---

## Update Video Title

{% post_image hashed_id: '6237ca4305b7280113ff157b42bbe9455f28e317', width: 320, class: 'float_right' %}

The title of the Media is how you will find it in your Account.  By default,
the title is the name of the media you uploaded, but can be updated anytime 
(doesn't have to be set before uploading). Changing the title of the video won't
affect embed codes or links, either.

To edit the title, hover over it with your mouse, and click the 
<span class="edit_tag"></span> tag. Edit the title text, and press the 
<span class="code">return</span> key to finish editing.

---

## Change the Thumbnail

{% wistia_embed hashed_id: 05f95d19ea %}

When you upload your video, Wistia will automatically select the frame closest
to the center as the thumbnail. Sometimes, this can produce some pretty funny 
results. Want to change the thumbnail to a different frame, or upload one of
your own?

No problem - the Change Thumbnail tool is here to help. 

* *Set to a new frame in the video*: select the frame you would like, and then 
  select *Update Thumbnail* from the <span class="action_menu">Media Actions</span> menu.
* *Upload an image as the thumbnail*: select the *Update Thumbnail* from the 
  <span class="action_menu">Media Actions</span> menu, and choose your image, 
  then select Upload Thumbnail.

---

## Embed Video

The ins-and-outs of embedding your video is the subject of our 
[embedding documentation]({{ '/embedding' | post_url }}).

---

## Downloading Media 

By default, contacts invited into Wistia are not permitted to download your
media files. A contact's ability to download files is controlled via 
permissions at the project level. 

To adjust a contact's permissions for a particular project, go into that 
project and choose *Manage Viewers* from the
<span class="action_menu">Project Actions</span> menu. 

There is more on contact permissions in the [private sharing]({{ '/private-sharing' | post_url}})
documentation.

---

## Comments

### What are timecoded comments?

Timecoded comments allow the user to link a comment on a video to a particular 
time in the video.  The timecode is captured and stored with the comment such 
that when another user views the comment, they can click on the time code, the 
video will skip directly to the point in the video where the comment was made.

{% post_image hashed_id: '05da00993fead0c4d20ab2914f415ee4200d7e87', class: 'center' %}

---

### How to make a timecoded comment

To make a timecoded comment, pause the video at the time to which you wish the 
comment to be linked.  Then, simply check the box next to the Post Comment button 
which says "Link comment to current time in video".  Once the box is checked and 
the comment has been written, click the 
<span class="faux_button">Post comment</span> and your comment will be saved.

{% post_image hashed_id: '98a66b9660a799dc284bcf3d0b97f8b4c7bc9176', class: 'center' %}

---

### Delete Comments

To delete comments, hover over the comment you'd like to delete, and the trash
can icon will appear. Select the trash can to remove the comment permanently.

{% post_image hashed_id: '53ca66ac5b6fb55713c9b3b274be578c9f3fd59e', class: 'center' %}

### Can I turn off comments for videos and other media?

Yes. Comments can be disabled/enabled at the project level. See
[How to disable comments for a project]({{ '/projects#project_settings' | post_url }})
to learn how.

---

## Video Description

To add a description to your video, hover your mouse under the Media title.
Click the *Add a Description* text that appears.

{% post_image hashed_id: '7123835d053afbb27a3408f292348575f5dfe8f6', class: 'center' %}

Descriptions are most helpful for sharing links to view video in your Wistia
account (where viewers need additional context). Your video description will
also be passed through to services like Facebook ([see more on social sharing]({{ '/social-sharing' | post_url }})). 

---

## Copy Video

{% post_image hashed_id: '13c548876a74d57756358e445cc1c81fda810144', width: 220, class: 'float_right' %}

{% post_image hashed_id: '291a422b9c226d33d9c44a30539e42f4e4627b04', width: 220, class: 'float_right' %}

First, navigate to the project you want the copied video **to end up in**. Under
the <span class="action_menu">Project Actions</span> menu, choose the *Copy media* option.

This will open up the Copy Media panel in the right-hand sidebar.  From the 
drop-down menu in the Copy Media panel, choose the project from which you wish 
to copy media.  Once the project is selected in the Copy Media panel, all of the 
media from that project will be displayed below the drop down box.

Select the media in the Copy Media panel to copy it to the current project.

