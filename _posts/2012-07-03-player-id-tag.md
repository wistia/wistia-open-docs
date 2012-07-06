---
title: Embed Code Id Tagging
layout: post
category: Analytics
---

Using the Video Player API, you can create simple ID tagging that passes user info into your Wistia stats.  Your two options for executing this is:
 1.  using the 'wemail=' URL query string
 2.  a separate function using the trackEmail embed option.
\\
\\
----
\\
### URL Query String Approach

\\
The custom query string URL approach produces a link like this: "http://your-video-URL.com?wemail=example@mail.com".  If you have access to the user's email address (through log-in or form submittal, etc.) you can replace the 'example@mail.com' string with this information.  Note, the URL on the page where the video is embedded (and played from) must have the custom query string.
\\
\\
----
\\
### Function with trackEmail Embed option

The new Wistia API embeds includes an option to track the viewer's email when they watch the video.  This process is predicated on there being a variable available on the client-side for tracking emails (ie. after they log in, their user info is tracked in a cookie).
\\
\\

*Note: you will need to use the "API" version of the embed code to utilize this feature*
\\
\\
Inside the embed code, you will see a snippet that appears like this:

	
	`<script type="text/javascript">` 
	  var wistiaEmbed = Wistia.embed("bfc34aa023", {
	    platformPreference: "html5",
	    autoPlay: true,
	    wmode: "transparent",
	    container: "my_container"
	  });
	`</script>`

\\
We will be adding the 'trackEmail' embed option:
\\
\\

	
	`<script type="text/javascript">` 
	  var wistiaEmbed = Wistia.embed("bfc34aa023", {
	    platformPreference: "html5",
	    autoPlay: true,
	    wmode: "transparent",
	    container: "my_container",
	    trackEmail: "userEmail"
	  });
	`</script>`

The variables for Wistia video hashed ID ('bfc34aa023') and email address ('UserEmail') need to be updated to reflect your embedded video ID and the variable of your identifiable user information.
\\
\\
----
\\


