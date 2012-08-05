---
title: Wistia Playlist API
layout: post
category: For Developers
for_developers: true
post_intro: <p>Wistia playlists have a javascript API which gives you control over its behavior, and gives you access to the <a href="/player-api.html">Player API</a> for the currently embedded video.</p>
---

## The Methods

Method | Description
----- | -----------
currentVideo()                  | Return a handle to the currently embedded video, which lets you access the [Player API](/player-api.html).
embed(sectionIndex, videoIndex) | Embed the video in the playlist corresponding to the given indices.
embedNext()                     | Embed the next video in the playlist.
height()                        | Returns the height of the entire embed.
height(h)                       | Sets the height of the entire embed.
pause()                         | Pause the current video.
play()                          | Plays the current video.
play(sectionIndex)              | Plays the first video in the specified section.
play(sectionIndex, videoIndex)  | Plays a specific video by index.
ready(fn)                       | Execute the function when the playlist is ready. A playlist may not be ready at various times during its lifecycle, usually while it's removing the current video and embedding the next. 
setEmail(email)                 | Sets the email for all videos in the playlist.
setPlayerColor(hexColor)        | Sets a custom color for the player and playlist.
videoHeight()                   | Returns the height of the video.
videoHeight(h)                  | Sets the height of the video. The height of the entire embed will change to compensate.
videoWidth()                    | Returns the width of the video.
videoWidth(w)                   | Sets the width the of the video. The width of the entire embed will change to compensate.
width()                         | Returns the width of the entire embed.
width(w)                        | Sets the width of the entire embed.

## How to use the API

The Playlist API can only currently be accessed from an 'API' Playlist embed. It includes a variable **''wistiaPlaylist''** to make it easy.

<pre><code class='language-javascript'>var wistiaPlaylist = Wistia.playlist("abcde12345", { ... options ... });</code></pre>

In this instance, you can reference the playlist object using the <span class="code">wistiaPlaylist</span> variable. If you have multiple playlists on your page, you should update this variable to something specific to this playlist.

As an example, if the following JS code is executed, the email address "max@wistia.com" will be tracked for all the videos in the playlist.

<pre><code class='language-javascript'>wistiaPlaylist.setEmail("max@wistia.com")</code></pre>

Or if I wanted to pause the current video:

<pre><code class='language-javascript'>wistiaPlaylist.currentVideo().pause()</code></pre>

## Embedding Options

In our example embed <span class="code">Wistia.playlist("abcde12345", { ... options ... });</span> there are two arguments: the playlist's <span class="code">hashed ID</span>, and a set of <span class="code">embedding options</span>. Here is a list of available options:

Option Name     | Type    | Description                                                                                                                                                                  | 
-----------     | ----    | -----------                                                                                                                                                                  | 
autoAdvance     | boolean | When true, automatically embed the next video when the current video ends. Default is true.
container       | string  | The container ID where the playlist will be embedded. Defaults to "wistia_{hashed_id}".
loop            | boolean | When true, the playlist will begin again from the start when the last video ends. Default is false.
media_{si}_{vi} | object  | Specify embedding options for a specific video by index as specified in the [Player API](/player-api.html). si and vi should each be a number. 
theme           | string  | The playlist's theme. Current acceptable values are "trim", "steam", "tango", or "bare". For API embeds, this needs to correspond with the script included on the page.
version         | string  | Must be "v1".
videoOptions    | object  | Specify embedding options for each video as specified in the [Player API](/player-api.html).
