---
title: Uploading
layout: post
category: Getting Started
description: Learn how uploading with Wistia works.
post_intro: <p> The first step to getting started with Wistia is to upload your content. So let's do it! <p/>
footer: 'for_beginners'
---

{% wistia_embed hashed_id: s1dmqzh5ua %}

## Quick Intro to Projects

All content in Wistia must be uploaded inside a **Project**.
Projects work just like folders on your computer - great for organizing and
managing your stuff.

To create a new Project, select *New Project* under the
<span class="action_menu">Actions</span> menu.

{% post_image hashed_id: 'ee3f80662bb6152948b9cf954babb732ded4f8b7', class: 'center'%}

Once you are in your new Project, give it a title by clicking
Edit next to the title bar (by default it's called **Untitled Project**).

To see more on Projects, head to the [projects help page]({{ '/projects' | post_url }}).

Now we're ready to upload a video.

## Upload Your Video

Select **Upload** under the
<span class="action_menu">Project Actions</span> menu.

{% post_image hashed_id: 'd830cb9fdbf566a0a8d823343a677b831189de77', class: 'center'%}

From the upload dialogue box, choose the file to upload from your computer.

{{ "To upload multiple media at once, hold down the shift or control buttons while browsing." | tip }}

Once a file has been chosen, the progress bar displays where you are in the
uploading process.

{% post_image hashed_id: '69498e53ff4f696cc3810229c2bfd88375bcd10d', class: 'center'%}

If you are having trouble with uploads completing, please try our
[backup uploader]({{ '#backup_uploader'}}). One
downside - no progress bar. You can also take a peek at our [upload troubleshooting guide]({{ '/upload-troubleshooting' | post_url }}) to get things fixed right up.

For instructions on the best way to encode your video prior to uploading it,
check our [video exporting page]({{ '/export-settings' | post_url }}).

Once your video is uploaded, [it's time to customize]({{ '/customizing-your-video' | post_url }}).

## Drag and Drop

{% wistia_embed hashed_id: 3kch1e5qvq %}

Do you hate clicking through so many menus, just to upload your files? Want to
make your Wistia experience even easier? Oh, do I have a surprise for you.

Drag that video file into your browser and let the magic happen. Wistia supports
Drag and Drop video uploads. Say what?

## Backup Uploader

If you're having trouble with uploads completing, try our Backup
Uploader instead! (Heads up, this upload process doesn't show a progress bar.)

The Backup Uploader can be accessed by adding `?backup_uploader` to a Project
URL.

So from a project URL like `https://support.wistia.com/projects/qdybaq78y0`, you'd
navigate to `https://support.wistia.com/projects/qdybaq78y0?backup_uploader` to
get to the backup uploader. It's like a secret clubhouse.

From there just select **Upload** from the <span class="action_menu">Project Actions</span>
menu, and you're sitting pretty.

{% post_image hashed_id: 'e047724b81ecb66924dafb596ce2d58d439c4ea9', class: 'center' %}

**If something seems fishy, you can always check out our [Status Page](http://status.wistia.com) for more information about what might be going on. Still no luck? [Contact us](http://wistia.com/support/contact). We'd be more than happy to help you out!**
