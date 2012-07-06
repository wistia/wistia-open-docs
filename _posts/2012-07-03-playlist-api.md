---
title: Wistia Playlist API
layout: post
category: For Developers
---

## Overview

Wistia playlists have a javascript API which gives you control over its behavior, and gives you access to the [Player API]({{ site.url }}/{{ page.lang }}/player-api.html) for the currently embedded video.

## The Methods

 | Method                          | Description                                                                                                                                                                               | 
 | ------                          | -----------                                                                                                                                                                               | 
 | currentVideo()                  | Return a handle to the currently embedded video, which lets you access the [Player API]({{ site.url }}/{{ page.lang }}/player-api.html).                                                  | 
 | embed(sectionIndex, videoIndex) | Embed the video in the playlist corresponding to the given indices.                                                                                                                       | 
 | embedNext()                     | Embed the next video in the playlist.                                                                                                                                                     | 
 | height()                        | Returns the height of the entire embed.                                                                                                                                                   | 
 | height(h)                       | Sets the height of the entire embed.                                                                                                                                                      | 
 | pause()                         | Pause the current video.                                                                                                                                                                  | 
 | play()                          | Plays the current video.                                                                                                                                                                  | 
 | play(sectionIndex)              | Plays the first video in the specified section.                                                                                                                                           | 
 | play(sectionIndex, videoIndex)  | Plays a specific video by index.                                                                                                                                                          | 
 | ready(fn)                       | Execute the function when the playlist is ready. A playlist may not be ready at various times during its lifecycle, usually while it's removing the current video and embedding the next. | 
 | setEmail(email)                 | Sets the email for all videos in the playlist.                                                                                                                                            | 
 | setPlayerColor(hexColor)        | Sets a custom color for the player and playlist.                                                                                                                                          | 
 | videoHeight()                   | Returns the height of the video.                                                                                                                                                          | 
 | videoHeight(h)                  | Sets the height of the video. The height of the entire embed will change to compensate.                                                                                                   | 
 | videoWidth()                    | Returns the width of the video.                                                                                                                                                           | 
 | videoWidth(w)                   | Sets the width the of the video. The width of the entire embed will change to compensate.                                                                                                 | 
 | width()                         | Returns the width of the entire embed.                                                                                                                                                    | 
 | width(w)                        | Sets the width of the entire embed.                                                                                                                                                       | 

## How to use the API

The Playlist API can only currently be accessed from an 'API' Playlist embed. It includes a variable **''wistiaPlaylist''** to make it easy.

`<style center>`var wistiaPlaylist = Wistia.playlist("abcde12345", { ... options ... });`{javascript}`</style>`

In this instance, you can reference the playlist object using the **''wistiaPlaylist''** variable. If you have multiple playlists on your page, you should update this variable to something specific to this playlist.

As an example, if the following JS code is executed, the email address "max@wistia.com" will be tracked for all the videos in the playlist.

`<style center>`wistiaPlaylist.setEmail("max@wistia.com")`{javascript}`</style>`

Or if I wanted to pause the current video:

`<style center>`wistiaPlaylist.currentVideo().pause()`{javascript}`</style>`

## Embedding Options

In our example embed **''Wistia.playlist("abcde12345", { ... options ... });''** there are two arguments: the playlist's hashed ID, and a set of embedding options. Here is a list of available options:

 | Option Name     | Type    | Description                                                                                                                                                                  | 
 | -----------     | ----    | -----------                                                                                                                                                                  | 
 | autoAdvance     | boolean | When true, automatically embed the next video when the current video ends. Default is true.                                                                                  | 
 | container       | string  | The container ID where the playlist will be embedded. Defaults to "wistia_{hashed_id}".                                                                                      | 
 | loop            | boolean | When true, the playlist will begin again from the start when the last video ends. Default is false.                                                                          | 
 | media_{si}_{vi} | object  | Specify embedding options for a specific video by index as specified in the [Player API]({{ site.url }}/{{ page.lang }}/player-api.html). si and vi should each be a number. | 
 | theme           | string  | The playlist's theme. Current acceptable values are "trim", "steam", "tango", or "bare". For API embeds, this needs to correspond with the script included on the page.      | 
 | version         | string  | Must be "v1".                                                                                                                                                                | 
 | videoOptions    | object  | Specify embedding options for each video as specified in the [Player API]({{ site.url }}/{{ page.lang }}/player-api.html).                                                   | 

