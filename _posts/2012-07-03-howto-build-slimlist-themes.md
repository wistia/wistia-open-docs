---
title: Building Custom Slimlist Themes
layout: post
category: For Developers
description: Interested in building your own Wistia playlist themes? Now you can!

---

The Slimlist is an ultra-lightweight, video playlist framework built entirely in JavaScript.
It has a powerful theme engine that allows for easy customization of the playlist. The documentation below should give you an overview of how to create a custom theme for your playlist.

If you develop your own theme, we'd love to know about it! Email us at `<support@wistia.com>`, and we will lavish you with praise!

\\

# The Anatomy of a Slimlist Theme

A Slimlist theme is very simple. It has two pieces:


*  **''style.css''** -- the styling for the HTML elements of the Slimlist

*  **''script.js''** -- custom JavaScript that is executed when the playlist is instantiated

These files should live in a directory whose name is the name of the theme. For example, the files for the **''trim''** theme are located here:


*  http://static.wistia.com/playlists/themes/trim/style.css

*  http://static.wistia.com/playlists/themes/trim/script.js



## style.css

Your theme's **''style.css''** contains all the CSS for your theme.

You'll want to scope your CSS rules so they only apply to your theme (so people can have several playlists on one page, all using different themes). The top-level `<div>` element will be assigned a class **''slimlist-`<theme name>`. So if your theme is named **''example''**, your Slimlist element will be of class **''slimlist-example''**.

And in that case, you'll want to construct CSS rules like so:

`<code css style.css>`
.slimlist-example .slimlist-playlist a { color: pink; }
.slimlist-example .slimlist-video { border: 10px solid gold; }
`</code>`

You'll want to understand the Slimlist's HTML structure in order to style it appropriately. See the "Structure of the Slimlist's Markup" section below for more information on that.

So that's pretty much it for **''style.css''**. Just style your theme to your heart's content.
Take a look at our stock themes for some inspiration:


*  http://static.wistia.com/playlists/themes/trim/style.css

*  http://static.wistia.com/playlists/themes/steam/style.css


## script.js

Your theme's **''script.js''** can contain any JavaScript you like.
Most commonly it's used to dynamically size elements, add animations, and enhance the user experience.

For a theme called **''example''**, the skeleton of your **''script.js''** should look like this:

`<code javascript script.js>`
Wistia.Playlist.Theme.example = {
    initialize: function(slimlist){
    // your code goes here
    }
};
`</code>`

The initialize function is called when the Slimlist is loaded. It takes one argument, the Slimlist object. To see what's available to you in the Slimlist object, take a look at [playlist.js]({{ site.url }}/{{ page.lang }}/http://static.wistia.com/playlists/playlist.js.html)

If you just want to style your playlist with CSS and don't care to do any advanced JavaScript work, all you need is the above skeleton for your **''script.js''**.

If you're looking for some inspiration and want to see what's possible, the [trim theme's script.js]({{ site.url }}/{{ page.lang }}/http://static.wistia.com/playlists/themes/trim/script.js.html) isn't a bad place to start.

\\

# Structure of the Slimlist's Markup

In order to style a Slimlist, one must understand the structure of its markup.

Here's the HTML skeleton of a Slimlist:

	:::html
	`<div class="slimlist slimlist-example">`
	  `<div class="slimlist-player">`
	    
	    `<!-- These correspond to the sections in the Wistia project -->`
	    `<div class="slimlist-sections">`
	      `<ul>`
	        `<li class="selected">`
	          `<a href="#">`First Section`</a>`
	        `</li>`
	        `<li>`
	          `<a href="#">`Second Section`</a>`
	        `</li>`
	      `</ul>`
	    `</div>`
	    
	    `<!-- This is the div that contains the currently loaded video object -->`
	    `<div class="slimlist-video">``</div>`
	    
	    `<!-- The menu of videos, complete with titles and thumbnails -->`
	    `<div class="slimlist-playlist">`
	
	      `<!-- List of videos in the 'First Section' -->`
	      `<ul class="selected">`
	        `<li class="title">`First Section`</li>`
	        
	        `<!-- First video in the 'First Section' -->`
	        `<li>`
	          `<a href="#">`
	            `<img src="...thumbnail..." width="100" height="60"/>`
	            `<span>`Video 1.1`</span>`
	          `</a>`
	        `</li>`
	        
	        `<!-- Second video in the 'First Section' -->`
	        `<li>`
	          `<a href="#">`
	            `<img src="...thumbnail..." width="100" height="60"/>`
	            `<span>`Video 1.2`</span>`
	          `</a>`
	        `</li>`
	      `</ul>`
	
	      `<!-- List of videos in the 'Second Section' -->`
	      `<ul>`
	        `<li class="title">`Second Section`</li>`
	        
	        `<!-- First video in the 'Second Section' -->`
	        `<li>`
	          `<a href="#">`
	            `<img src="...thumbnail..." width="100" height="60"/>`
	            `<span>`Video 2.1`</span>`
	          `</a>`
	        `</li>`
	        
	        `<!-- Second video in the 'Second Section' -->`
	        `<li>`
	          `<a href="#">`
	            `<img src="...thumbnail..." width="100" height="60"/>`
	            `<span>`Video 2.2`</span>`
	          `</a>`
	        `</li>`
	      `</ul>`
	      
	    `</div>`
	`</div>`


\\

# The Slimlist Embed Code

Here's a sample Slimlist embed code:

	:::html
	`<div id='slimlist_22570' style='width:640px;height:272px;'>`
	  `<span style='padding:.5em 1em;background:#fff;color:#bbb;font-size:12px;'>`Loading playlist ...`</span>`
	`</div>`
	`<script src='http://static.wistia.com/playlists/playlist.js' type='text/javascript'>``</script>`
	`<script src='http://embed.wistia.com/embeds/v.js' type='text/javascript'>``</script>`
	`<script src='http://app.wistia.com/embed/playlists/5bcf9a781b5f046c1dfe.js?theme=trim&playthrough=true' type='text/javascript'>``</script>`


Let's break it down:


*  First, we've got the `<div>`. Right now it contains the loading indicator, but when the Slimlist loads, that will be replaced with the HTML for the Slimlist.

*  Next, there's the **''playlist.js''** script. This is the Slimlist library code.

*  **''v.js''** is our HTML5 video tracking library.

*  And finally, the last JavaScript include is what will load the Slimlist. It is dynamically generated by Wistia and provides the Slimlist library with information on all the assets in a particular project. You'll also notice that we're instructing the Slimlist to use the 'trim' theme.


In this example playlist embed, we're using the 'trim' theme. Since this whole article is about creating custom theme, we're obviously going to need to change this. To use your custom theme, simply change this to the name of your theme.

For example, if your theme is called 'example', you'd adjust the last line of the playlist embed snippet like so: 

	:::html
	`<script src='http://app.wistia.com/embed/playlists/5bcf9a781b5f046c1dfe.js?theme=example&playthrough=true' type='text/javascript'>``</script>`


Remember, you'll need to have included your theme's CSS and JavaScript on your page in order for this to work.

Alternatively, you can have the playlist framework automatically load your JS and CSS theme files by passing a URL to the theme parameter. In this case, you'll need to have both your script.js and style.css files in the same folder whose name is the name of your theme. So if your theme is named 'example' you'd need to store your files like this:


*  http://somedomain.com/themes/example/script.js

*  http://somedomain.com/themes/example/style.css

Then you'd modify your playlist embed snippet to look like:

	:::html
	`<script src='http://app.wistia.com/embed/playlists/5bcf9a781b5f046c1dfe.js?theme=http://somedomain.com/themes/example&playthrough=true' type='text/javascript'>``</script>`


\\

# Need some more help?

We're happy to help guide you in the creation of a new theme. Feel free to email us at `<support@wistia.com>`.

