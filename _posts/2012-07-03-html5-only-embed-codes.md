---
title: Wistia & HTML5
layout: post
category: For Developers
---

Every single Wistia embed code type automatically supports HTML5 when it detects a device that requires it (ie. iPhones, iPads).  There is no extra work needed - standard HTML embed codes will work on your iOS device out-of-the-box.
\\
\\

### Forcing HTML5

In some cases, it makes sense to force the video to only display in HTML5 - skipping the device detection step altogether.  With Wistia iframe embeds, forcing your videos to display in HTML5 is easy.
\\

### The Platform Preference Parameter

Using iframe embed codes, forcing them to default in HTML5 is as easy as adding a parameter:

"&platformPreference=html5"

So a full HTML5 player embed code would look like this:
\\
\\

**Code:**
`<iframe width="960" height="450" src="http://app.wistia.com/embed/medias/e71f9baf4d?platformPreference=html5" frameborder="0">``</iframe>`
\\
\\

**HTML5 Player Example**
\\
`<html>`
`<iframe width="640" height="360" src="http://app.wistia.com/embed/medias/e71f9baf4d?platformPreference=html5" frameborder="0">``</iframe>`
`</html>`

## HTML5 Video Player API

Looking to add some functionality to your Wistia videos in HTML5?  They are controllable through our standard javascript [player API]({{ site.url }}/{{ page.lang }}/player-api.html).
\\
\\
\\
\\
----
\\

