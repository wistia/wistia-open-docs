---
title: Wistia Playlist API
layout: post
api: true
api_warning: true
special_category_link: developers
category: Developers
description: Wistia Playlists have an API which give you access to its functionality and behavior! 
post_intro: <p>Wistia playlists have a javascript API which gives you control over its behavior, and gives you access to the Player API for the currently embedded video.</p>
footer: 'for_developers'
---

## The Methods

Method | Description
----- | -----------
bind(event, function)           | Lets you bind a function to a playlist event. Check out the [Playlist Events](#playlist-events) for more info.
currentVideo()                  | Return a handle to the currently embedded video, which lets you access the [Player API]({{ '/player-api' | post_url }}).
embed(sectionIndex, videoIndex) | Embed the video in the playlist corresponding to the given indices.
embedNext()                     | Embed the next video in the playlist.
height()                        | Returns the height of the entire embed.
height(h)                       | Sets the height of the entire embed.
onFirstVideo()                  | Returns true if the current video is the first one in the playlist.
onLastVideo()                   | Returns true if the current video is the last one in the playlist.
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
volume()                        | Get the volume of the current video in the playlist.
volume(v)                       | Sets the volume of the playlist. This will carry over between videos in the playlist.
width()                         | Returns the width of the entire embed.
width(w)                        | Sets the width of the entire embed.

## How to use the API

The Playlist API can only currently be accessed from an 'API' Playlist embed. It includes a variable **''wistiaPlaylist''** to make it easy.

{% codeblock playlist_api.js %}
var wistiaPlaylist = Wistia.playlist("abcde12345", { ... options ... });
{% endcodeblock %}

In this instance, you can reference the playlist object using the `wistiaPlaylist`
variable. If you have multiple playlists on your page, you should update this 
variable to something specific to this playlist.

As an example, if the following JS code is executed, the email address 
"max@wistia.com" will be tracked for all the videos in the playlist.

{% codeblock playlist_api.js %}
wistiaPlaylist.setEmail("max@wistia.com")
{% endcodeblock %}

Or if I wanted to pause the current video:

{% codeblock playlist_api.js %}
wistiaPlaylist.currentVideo().pause()
{% endcodeblock %}

## Embedding Options

In our example embed `Wistia.playlist("abcde12345", { ... options ... });`
there are two arguments: the playlist's `hashed ID`, and a set of `embedding options`.

Here is a list of available options:

Option Name     | Type    | Description
-----------     | ----    | -----------
autoAdvance     | boolean | When true, automatically embed the next video when the current video ends. Default is true.
container       | string  | The container ID where the playlist will be embedded. Defaults to "wistia_{hashed_id}".
loop            | boolean | When true, the playlist will begin again from the start when the last video ends. Default is false.
media\_\{si}\_\{vi} | object  | Specify embedding options for a specific video by index as specified in the [Player API]({{ '/player-api' | post_url }}). sectionIndex and videoIndex represent the indices for the video in the Project.
startVideo      | integer | Designates which video (in the given section) to start the playlist with. Defaults to 0.
startSection    | integer | Designates which section to start with. Defaults to 0.
theme           | string  | The playlist's theme. Current acceptable values are "trim", "steam", "tango", or "bare". For API embeds, this needs to correspond with the script included on the page.
version         | string  | Must be "v1".
videoOptions    | object  | Specify embedding options for each video as specified in the [Player API]({{ '/player-api' | post_url }}).

## Playlist events

By default, all the standard player API events are available at the playlist 
level too. But we also have some playlist-specific events to let you do cool stuff on a per-video basis.

Event Name    | Arguments                       | Description
----------    | ---------                       | -----------
afterembed    | sectionIndex, videoIndex        | Fired after each video is embedded. This is helpful for targeting interactions for a specific video in the playlist. The arguments are the sectionIndex and videoIndex for the current video.
beforeembed   | sectionIndex, videoIndex        | Fired after each video is embedded. This is helpful for targeting interactions for a specific video in the playlist. The secondIndex and videoIndex are for the next video.
end           | sectionIndex, videoIndex        | When the state of any video in the playlist changes to "ended".
pause         | sectionIndex, videoIndex        | When the state of any video in the playlist changes to "paused".
play          | sectionIndex, videoIndex        | When the state of any video in the playlist changes to "playing". This can fire multiple times per video if the user pauses.
timechange    | sectionIndex, videoIndex, time  | Fired multiple times per second while the video is playing, or if the user seeks.

To control a specific video with the [Player API](/player-api), you'll probably want to use "afterembed". Here's a quick example.

{% codeblock playlist_api.js %}
wistiaPlaylist.bind("afterembed", function(sectionIndex, videoIndex) {
  if (sectionIndex === 1 && videoIndex === 4) {
    // This video was way louder than the others, so let's lower the volume to start.
    wistiaPlaylist.currentVideo().volume(0.2);
  }
});
{% endcodeblock %}

## Playlist API Examples

### Use a Link to Start a Specific Video or Playlist Section

Using the `play(sectionIndex, videoIndex)` method, you can build a link that 
will start a specific Section or Video for you.

Check out how to get it done in the [Demobin](http://wistia.github.com/demobin/playlist-control-links/).

---

### Load a random video on page load

You can load a random video from your playlist on page load, and then play a 
random video after each video ends, using a the playlistData methods, and a bind on "end".

Check out how it works in the [Demobin](http://wistia.github.com/demobin/random-playlist-video/).
