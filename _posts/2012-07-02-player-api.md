If you're just looking for a quick demo of the API in action, check this out:
[http://wistia.com/pages/video_player_api]({{ site.url }}/{{ page.lang }}/http://wistia.com/pages/video_player_api.html)

# Wistia Video Player API

The Wistia video player has a Javascript API which supports a number of ways to interact with and control the video player.  There are five basic  methods you can call on the video player via Javascript.  These are:

*  **''videoPlay()''** - This causes the video player to start (or continue playing from a paused state) playing the video.

*  **''videoPause()''** - This causes the video player to pause the video if it is currently playing

*  **''videoSeek(time)''** - This causes the video player to seek to time specified by the ''time'' parameter (in seconds)

*  **''getCurrentTime()''** - This returns the viewer's current position in the video (in seconds)

*  **''getCurrentState()''** - This returns the current state of the video player: unstarted (-1), ended (0), playing (1), paused (2).

*  **''getVolume()''** - Returns the current volume level.  Value between 0 and 100.

*  **''setVolume(level)''** - Sets the current volume level.  'level' is an integer value between 0 and 100.

*  **''getDuration()''** - Returns the length of the video in seconds.

To use these functions, you will need to reference the video object.  With the straight embed code from Wistia, it can be referenced by the **''id''** attribute in the **''object''** tag which is the same as the **''name''** attribute in the **''embed''** tag.

As an example, if the following JS code is executed on a page where the Wistia video with ID 'wistia_553' is embedded, the video will start to play:

`<style center>`window.document['wistia_553'].videoPlay();`</style>`

Likewise, if the following JS code is executed before the video has been played, the variable **''myState''** will be set to **''-1''**:

`<style center>`var myState = window.document['wistia_553'].getCurrentState();`</style>`
\\
#### Example: Using JS API calls to trigger an event at a specific time

Wistia's video player API provides some of the base level functions to create higher level functionality.  As an example, here we will show how to trigger an arbitrary Javascript event when the video playback gets to a certain point.

In this example, let's assume that we want to fire a Javascript function when the viewer gets 60 seconds into the video. In order to accomplish this, we only need to use the **''getCurrentTime()''** API function.  The Javascript code can be seen below:

`<code>``<script type="text/javascript">` 
var checkInterval = setInterval(checkTime, 1000); 
 
function checkTime()
{
    var curPosition = document["wistia_92877"].getCurrentTime();
    if ((curPosition > 60) && (curPosition < 62))
    {
     clearInterval(checkInterval);
     //Insert code to be executed here
    }
} 
`</script>` `</code>`  

First, an interval is set up to call the function **''checktTime()''** every 1000 milliseconds (1 second).  Each time **''checktTime()''** is called, it gets the viewer's current position in the video.  If the viewer is in a small window near the 60 second mark, the interval is cleared and the client code is executed.  If the viewer is not in that time window around 60 seconds, nothing will happen.  The interval is cleared to prevent the client code being executed multiple times. 

## Callback

In addition to the Javascript functions that can be called on the Wistia video player, there is also the option to have the player call back to Javascript on your HTML page.  By augmenting the Wistia embed code to contain the **''endVideoCallback''** parameter, the video player will call the assigned function when the video reaches the end.

As an example, the code below shows how to modify the embed code to add this **''endVideoCallback''** parameter:

### Original Embed Code

`<style center>`{{:embed-orig.png|}}`</style>`

### Modified Embed Code

`<style center>`{{:embd-mod.png|}}`</style>`

Now, if the following code is placed on the same page as the above embed code, the Javascript function **''myFunction''** will be called when the video completes and in this case an alert dialog will pop up with the message "Hello World!".

`<code>`    `<script type="text/javascript">`
      function myFunction() {
	alert('Hello World!');
      } 
    `</script>``</code>`
