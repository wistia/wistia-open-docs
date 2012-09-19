---
title: Advanced In-App Wistia Video Functionality
layout: post
description: Create sweet functionality for videos being watched within the Wistia app.
post_intro: <p>If you want to customize the experience your viewers have when watching videos inside your Wistia account, start here.</p>
footer: 'for_developers'
---

## Seek to a specific time on page load

Want to show a client a particular clip in a video? Just add a "start" parameter to the query string and specify the position to seek to (in seconds).

For example, if you have a video located at http://myaccount.wistia.com/medias/123 and you want it to start playing at the 1 minute and 30 second mark, you'd link to the URL:
	
<span class="code">http://myaccount.wistia.com/medias/123?start=90</span>

**Note:** This only works for videos within your Wistia account. To seek into embedded videos, use the JavaScript player API.

---
