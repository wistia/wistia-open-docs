---
layout: post
category: For Developers
for_developers: true
title: Wistia Video Player API
description: The Wistia player has a built in Javascript API, providing you with a variety of ways to create awesome functions and interact with the player.
post_intro: <p>The Wistia video player has a JavaScript API which supports a number of ways to interact with and control the video player. It uses the same interface for both Flash and HTML5 versions of the player, and provides convenience functions to accomplish common goals.</p><p><strong>Note:</strong> for custom javascript you write to interface with a Wistia embed, add it to your source *under* the Wistia embed (ie. the footer).</p>
---

## The Methods

Method                  | Description 
------                  | -----------
bind(event, function)   | This lets you execute a function when a video event occurs. Possible values for "event" are: "play", "pause", "end", "conversion", and "timechange".
duration()              | Returns the length of the video in seconds                                                                  
height()                | Gets the current height of the embed (the video plus any plugins above or below).                                                         
height(h)               | Sets the height of the embed. The video will be resized to fit with the plugins fully visible.                                              
name()                  | Returns the name of the video                                                                                                             
pause()                 | This causes the video player to pause the video if it is currently playing.                                                               
play()                  | This causes the video player to start (or continue playing from a paused state) playing the video.                                          
ready(function)         | This method is only necessary for advanced use cases. It lets you run a function as soon as the video is loaded and ready to be played.     
setEmail(email)         | Associates the email string with this view of the video.                                                                                      
state()                 | This returns the current state of the video player: "unknown" (a.k.a not started), "ended", "playing", "paused".                            
time()                  | This returns the viewer's current position in the video (in seconds).                                                                     
time(t)                 | This causes the video player to seek to time specified by the ''t'' parameter (in seconds).                                                 
unbind(event, function) | Lets you remove a previously binded function from an event. If function is not specified, all bindings for the event will be removed.         
videoHeight()           | Gets the current height of the video, excluding any plugins.                                                                                
videoHeight(h)          | Sets the height of the video. The height of the embed will be automatically resized to fit the plugins.                                     
videoWidth()            | Gets the current width of the video, excluding any plugins.                                                                                   
videoWidth(w)           | Sets the width of the video. The width of the embed will be automatically resized to fit the plugins.                                 
volume()                | Returns the current volume level. Value between 0 and 1.                                                                              
volume(level)           | Sets the current volume level. 'level' is a decimal value between 0 and 1.                                                          
width()                 | Gets the current width of the embed (the video plus any plugins on the left and right).                                             
width(w)                | Sets the width of the embed. The video will be resized to fit with the plugins fully visible.                                       

## Using the API

Accessing the Player API is different depending on the type of embed code you're using.

*  For the iframe embed code (this is the default embed type), you can use [the iframe player API](/iframe-api.html).
*  Or, if you're using the API embed code, you can access the JavaScript API directly.

### iframe embed code

To access the API when using iframe embed codes, you just need to include an extra script on your page and you're off to the races. Take a look at the [iframe player API page](/iframe-api.html) for all the details.

### API embed code

The 'API' version of the Wistia embed codes includes a variable <span class="code">wistiaEmbed</span> to make this easy.

<pre><code class="language-javascript">
var wistiaEmbed = Wistia.embed("bfc34aa023", { ... options ... });
</code></pre>

In this instance, you can reference the video object using the **''wistiaEmbed''** variable.  If you have multiple videos on your page, you should update this variable to something specific to this video.

As an example, if the following JS code is executed, the video will start to play:

<style center>wistiaEmbed.play();{javascript}</style>

## Examples

### Trigger an event at a specific time

Wistia's video player API provides functionality to easily accomplish common goals.

In this example, let's assume that we want to fire a Javascript function when the viewer gets 60 seconds into the video. In order to accomplish this, we only need the bind method from the API.  The Javascript code can be seen below:

<pre><code class="language-javascript">
<script type="text/javascript"> 
wistiaEmbed.bind("timechange", function (t) {
  if(t > 60 && t < 62) {
    // Insert code to be executed here
  }
});
</script>
</code></pre>

The bind function monitors the state of the video in an event loop. Every 500 milliseconds, it checks to see if the video's time position has changed. If it has, it runs your function with the current time (t) as the only argument.

### Alert when the video ends

<pre><code class="language-javascript">
<script type="text/javascript"> 
wistiaEmbed.bind("end", function () {
  alert("Hello world!");
});
</script>
</code></pre>

### Grab the email address of your video viewers

With [Wistia Turnstile](http://wistia.com/product/turnstile), you can require your viewers to enter an email address to view video content on your webpage.  Using the "conversion" event, you can trigger actions based on the email being entered - including passing that email on to another service!

<pre><code class="language-javascript">
<script type="text/javascript">
wistiaEmbed.bind("conversion", function(type, val) {
  // function to be executed
});
</script>
</code></pre>

At this time, the "type" of conversion is always 'pre-roll-email', and the "val" is the viewers email address.

### Alert on play just once

With the bind method, every time "play" is triggered, your function will be executed. But sometimes a user will scroll back to the beginning and hit Play again. If you want to avoid your function being executed again, you need to unbind it. 

<pre><code class="language-javascript">
<script type="text/javascript">
function playFunc() {
  alert("Played the first time!");
  wistiaEmbed.unbind("play", playFunc);
}

wistiaEmbed.bind("play", playFunc);
</script>
</code></pre>

### Playing a second video on Post Roll click

By binding a click event onto the video container and verifying that the post roll has run, you can play a second video in the same container (Post Roll: "Click here to watch your free video!" and then have the video actually play in the same video container).

Notes:

  * *the ID on the video &lt;div&gt; is made generic: 'video_container'*
  * *the 'on' method requires jQuery 1.7 or greater*

<pre><code class="language-javascript">
&lt;div id="video_container" class="wistia_embed" style="width:640px;height:360px;" data-video-width="640" data-video-height="360"&gt;&nbsp;&lt;/div&gt;
&lt;script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1%2CpostRoll-v1.js"&gt;&lt;/script&gt;

&lt;script&gt;
firstVideo = Wistia.embed("993554ba94", {
  version: "v1",
  videoWidth: 640,
  videoHeight: 360,
  controlsVisibleOnLoad: true,
  container: "video_container"
});
Wistia.plugin.postRoll(firstVideo, {
  version: "v1",
  text: "Play the Second Video!",
  link: "#",
  style: {
    backgroundColor: "#616161",
    color: "#ffffff",
    fontSize: "36px",
    fontFamily: "Gill Sans, Helvetica, Arial, sans-serif"
  }
});

$('#video_container').on('click', '.wistia-postroll', function(e) {
  e.preventDefault();
  firstVideo.remove();
  secondVideo = Wistia.embed("9dc0fc7d3a", {
    version: "v1",
    videoWidth: "640",
    videoHeight: "360",
    controlsVisibleOnLoad: true,
    container: "video_container",
    autoPlay: true
  });
});
&lt;/script&gt;
</code></pre>

## Embedding Options

In our example embed **''Wistia.embed("bfc34aa023", { ... options ... });''** there are two arguments: the media's hashed ID, and a set of embedding options. Here is a list of available options:

 | Option Name           | Type    | Description                                                                                                                                                                                                                                                                                                                                            | 
 | -----------           | ----    | -----------                                                                                                                                                                                                                                                                                                                                            | 
 | autoPlay              | boolean | flash/html5 only. Doesn't work on mobile. When true, the video plays as soon as it's ready.                                                                                                                                                                                                                                                            | 
 | canonicalTitle        | string  | The title of the page, used for social features.                                                                                                                                                                                                                                                                                                       | 
 | canonicalUrl          | string  | The url of the page, used for social features.                                                                                                                                                                                                                                                                                                         | 
 | chromeless            | boolean | flash only. When true, player is created without controls.                                                                                                                                                                                                                                                                                             | 
 | container             | string  | The element that should container the embed. Defaults to wistia_{hashed_id}                                                                                                                                                                                                                                                                            | 
 | controlsVisibleOnLoad | boolean | flash only. When true, controls are visible before you click play.                                                                                                                                                                                                                                                                                     | 
 | doNotTrack            | boolean | When true, embed will not track views.                                                                                                                                                                                                                                                                                                                 | 
 | endVideoBehavior      | string  | flash only. Behavior when the video ends: default/reset/loop.                                                                                                                                                                                                                                                                                          | 
 | fullscreenButton      | boolean | Show fullscreen button. Default is true.                                                                                                                                                                                                                                                                                                               | 
 | pageUrl               | string  | The page that the embed thinks it's embedded on. Defaults to the current page.                                                                                                                                                                                                                                                                         | 
 | platformPreference    | string  | Accepts: 'flash', 'html5', or 'external'. This specifies the preferred underlying video embed mechanism. If your specified type is not supported by a client it will seamlessly fallback to the other types. Defaults to 'flash'.                                                                                                                      | 
 | playButton            | boolean | flash/external only. When true, display play button over video poster.                                                                                                                                                                                                                                                                                 | 
 | playbar               | boolean | Show playbar. Default is true.                                                                                                                                                                                                                                                                                                                        
 | playerColor           | string  | Set custom color on play button/controls. HTML5 player has access to custom play button color only.                                                                                                                                                                                                                                                    | 
 | smallPlayButton       | boolean | Show small playbutton in the bottom left. Default is true.                                                                                                                                                                                                                                                                                             | 
 | stillUrl              | string  | The still image that should appear before the video is played.                                                                                                                                                                                                                                                                                         | 
 | trackEmail            | string  | flash/html5 only. The email address to associate with the viewing session.                                                                                                                                                                                                                                                                             | 
 | videoFoam             | boolean | The embed will conform to the width of the parent element, resizing to maintain the correct aspect ratio. For iframes, requires the [iframe API](/iframe-api.html). API/SEO embeds don't need any modifications. [Check out the demo!](http://wistia.github.com/demobin/video-foam) | 
 | videoQuality          | string  | Specify the starting video quality. sd-only/hd-only/auto                                                                                                                                                                                                                                                                                               | 
 | videoWidth            | integer | The original width of the video.                                                                                                                                                                                                                                                                                                                       | 
 | videoHeight           | integer | The original height of the video.                                                                                                                                                                                                                                                                                                                      | 
 | volumeControl         | boolean | Show volume control. Default is false.                                                                                                                                                                                                                                                                                                                 | 
 | wmode                 | string  | flash only. The flash window mode of the embed. window/direct/opaque/transparent/gpu.                                                                                                                                                                                                                                                                  | 

### Miscellaneous Options

To show how options work, suppose I want to embed a video that defaults to the HTML5 player and plays automatically on page load. I might alter the embed javascript to look like this:

<pre><code class='language-javascript'>
<div id="my_container"></div>
var wistiaEmbed = Wistia.embed("bfc34aa023", {
  platformPreference: "html5",
  autoPlay: true,
  container: "my_container"
});
</code></pre>


## Plugin Options

Our plugins have a lot of options too! Check them out:

*  [Socialbar](/socialbar-params.html)
*  [Post-Roll Call To Action](/postroll-params.html)
*  [Interactive Transcript](/transcript-params.html)
*  [Turnstile Email Capturing](/turnstile-params.html)

And if you're looking at these, you might want more info on [constructing an embed code](/construct-an-embed-code.html).
