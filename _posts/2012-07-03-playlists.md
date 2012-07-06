---
title: Wistia Video Playlists
layout: post
category: Embedding
---

`<style float-right>`{{:playlist-menu.png?200|}}`</style>`Video playlists are a great way to embed multiple videos on your website through a single embed.  Playlists allow you to update content in your playlist without messing with embed codes (even after embedding!).  They take up less real estate than separate video embeds, while being easier to navigate.  In short, they are a super cool and useful embed type.
\\
\\
Wistia playlists (SlimLists) are representative of a Project's contents within your Wistia account.  Embedded playlists automatically show the videos contained in the project.  If videos are added to the project, those videos will automatically show up in the playlist.  If the videos are re-ordered in the project, the videos in the playlist will be re-ordered accordingly.  If the titles of the videos in the project are changed....you guessed it, the titles of the videos in the playlist will change as well.
\\
\\
`<html>`
`<div id='slimlist_22570' style='width:640px;height:181px;margin-top:50px;margin-bottom:25px;'>``<span style='padding:.5em 1em;background:#fff;color:#bbb;font-size:12px;'>`Loading playlist ...`</span>``</div>``<script type='text/javascript' src='//get-embed.wistia.com/javascripts/head.load.min.js'>``</script>``<script type='text/javascript'>`var proto = document.location.protocol,playlistUrl = proto + '//' + 'static.wistia.com/playlists/playlist.js',playlistEmbedUrl = proto + '//' + 'get-embed.wistia.com/embed/playlists/5bcf9a781b5f046c1dfe.js?theme=steam&amp;playthrough=true&amp;autoplay=false';head.js(playlistUrl, playlistEmbedUrl);`</script>`
`</html>`

The section tabs above the video correspond to sections in a Wistia project.  New tabs are created on your playlist when you create a new section in your Wistia project and add videos to it.  These videos will then appear in that tab in your playlist.

----
\\
### Creating a Video Playlist

To get started, go into a project in your Wistia account you wish to create a playlist for.  Next, select "Playlist embed" from the Project Actions menu as shown on the right.

Once you have selected the "Playlist embed" option, you will be taken to a page where you can customize your playlist and get the embed code.  An example of this customization screen can be seen below.
\\
\\
`<style center>`{{:playlist-customize1b.jpg|}}`</style>`

On this screen you can choose the theme you want to use, the size for the embedded playlist, as well as whether the playlist will automatically play the next video when the user reaches the end of the current video.
\\
\\
----
\\
### Theming Your Wistia Playlist

By default, three playlist themes are available for your use.
\\
\\

** Trim **
`<style float-left>`{{:trim3.png}}`</style>`
\\
\\
\\
\\
\\
\\
\\
\\
----
\\

** Steam **
`<style float-left>`{{:steam.png}}`</style>`
\\
\\
\\
\\
\\
\\
\\
----
\\

** Tango **
`<style float-left>`{{:tango.png}}`</style>`
\\
\\
\\
\\
\\
\\
\\
\\
\\
\\
\\
\\
\\
\\
\\
----
\\
Different themes can be useful for different page layouts, or depending on how much room you allotted for your playlist.  Playlists can also be fully customized using CSS and Javascript - see the [custom SlimList theme]({{ site.url }}/{{ page.lang }}/howto_build_slimlist_themes.html) page for more info.
\\
\\
\\
\\
----
\\
\\

