---
layout: post
title: Responsive Design with Video
description: 
  So you want to put your video in a responsive design, eh? You can use this
  page as your one-stop shop to find the best way to do it.
---

## Video Foam

This is Wistia's generic solution to responsive design, and is by far the 
easiest solution if you can get away with it. It uses javascript and a very
simple strategy to make any kind of Wistia embed--iframe, API, or
popover--responsive.

To see how to turn Video Foam on for a single embed at a time, check our
[Docs on Video Foam]({{ /video-foam | post_url }}). Or if you want to enable it
for all the videos on your website, check out the
[Video Foam Lab](http://wistia.com/labs/videofoam/).

### Here's how it works.

When video foam is turned on, we look at the parent element of the Wistia video
container, and watch for changes to the width. When the width is changed, we
resize the video to match it, and resize the video height to preserve the
correct aspect ratio.

In determining the new size, we also account for things outside the video, like
the Social Bar. We try to always avoid the dreaded black bars. (Known in the
film industry as
[letterboxing](http://en.wikipedia.org/wiki/Letterboxing_(filming).)

### Cool Trick: Use a wrapper to set a min-width or max-width.

Since the video always matches the width of the parent, you can set styles that
affect the parent, and the video will respect them too.

    <div id="resizable_wrapper" style="min-width:300px;max-width:900px;width:50%;">
      ... wistia embed ...
    </div>

### Common Problem: CSS conflicts.

CSS rules meant for other responsive solutions can conflict with our own.

BAD:

    <style>
      .fluidVideo iframe, .fluidVideo object, .fluidVideo embed {
        height: auto !important;
        width: 100% !important;
      }
    </style>
    <div class="fluidVideo">
      ... wistia embed ...
    </div>

In this example, a "fluidVideo" wrapper tries to make the embed code responsive
by overriding its width and height. In so doing, it overrides the width and
height set by Video Foam too.

The only way to prevent this issue is to change or remove the conflicting
style.

### Common Problem: The parent element's width is dependent on its contents.

Take these examples.

BAD:

    <div id="inline_block_element" style="display:inline-block;width:auto;">
      ... wistia embed ...
    </div>

    <div id="floated_element" style="float:left;width:auto;">
      ... wistia embed ...
    </div>


    <span id="inline_element">
      ... wistia embed ...
    </span>

These are bad because the parent element will determine its width from the
embed code. If the parent's width is based on the embed code, and the embed
code's width is based on the parent, neither can tell what width they should
be!

GOOD:

    <div id="better_inline_block_element" style="display:inline-block;width:50%;">
      ... wistia embed ...
    </div>

    <div id="better_floated_element" style="float:left;width:50%;">
      ... wistia embed ...
    </div>

    <span id="better_span" style="display:inline-block;width:50%;">
      ... wistia embed ...
    </span>

### Common Problem: Internet Explorer is in quirks mode.

Video Foam is optimized for responsive sites, and responsive sites typically
have a DOCTYPE. For Video Foam to work correctly in Internet Explorer, the page
should have a [valid DOCTYPE](http://www.totalvalidator.com/support/doctypes.html).


## Pure CSS Approach

A few years ago, [A List Apart](http://alistapart.com/) came up with an
approach for resizing using purely CSS. With some modifications, it can be used
with Wistia embeds too.

    <style>
    /* #containingBlock is for demonstration purposes only */
    #containingBlock {
      width: 50%;
    }

    .videoWrapper {
      position: relative;
      height: 0;
    }

    * html .videoWrapper {
      margin-bottom: 45px;
      margin-bot\tom: 0;
    }

    .videoWrapper .videoPadding {
      position: absolute;
      width: 100%;
      height: 100%;
      left: 0;
      top: 0;
    }

    .videoWrapper .wistia_embed,
    .videoWrapper .wistia_playlist {
      height: 100%;
      width: 100%;
    }

    .wideScreen {
      padding-bottom: 56.25%; /* hard-coded 16:9 aspect ratio */
    }

    .fourByThree {
      padding-bottom: 75%; /* hard-coded 4:3 aspect ratio */
    }

    .withSocialBar {
      padding-top: 28px;
    }
    </style>

    <div id="containingBlock">
      <!-- An iframe embed -->
      <div class="videoWrapper wideScreen">
        <div class="videoPadding">
          <iframe src="//fast.wistia.net/embed/iframe/yx7l0vkxxl" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" allowfullscreen mozallowfullscreen webkitallowfullscreen oallowfullscreen msallowfullscreen width="640" height="360"></iframe>
        </div>
      </div>

      <!-- An API/SEO embed -->
      <div class="videoWrapper wideScreen">
        <div class="videoPadding">
          <!-- Note that the inline width and height styles have been removed. -->
          <div id="wistia_yx7l0vkxxl" class="wistia_embed"> </div>
          <script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
          <script>
          wistiaEmbed = Wistia.embed("yx7l0vkxxl");
          </script>
        </div>
      </div>

      <!-- An API/SEO embed with the socialbar -->
      <div class="videoWrapper wideScreen withSocialBar">
        <div class="videoPadding">
          <div id="wistia_yx7l0vkxxl_2" class="wistia_embed"> </div>
          <script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
          <script>
          wistiaEmbed = Wistia.embed("yx7l0vkxxl", {
            container: "wistia_yx7l0vkxxl_2",
            plugin: {
              "socialbar-v1": {
                buttons: "embed-twitter-facebook",
                height: 23
              }
            }
          });
          </script>
        </div>
      </div>
    </div>

If you only ever produce videos at one or two aspect ratios, and you have full
control over your website's responsive CSS, then this is a pretty good
solution.

Note that `padding-bottom` in the wideScreen and fourByThree classes represents
the aspect ratio of your video. To get this value for any video, you can do:

    100 * height / width

In the withSocialBar class, we use `padding-top` to adjust the height of the
embed for any elements that are in the container, but not part of the video
itself.  We could also add a withTranscript class that with
`padding-top: 200px`.

One downside: You need to manually remove the width and height styles on API
and SEO embeds for this to work properly.


## Player API

If neither of the above solutions will work for you, you could also use our
[Player API]({{ '/player-api' | post_url }}) to change the width and height of
the video. For example, maybe you want to match the width of the video to
another element on the page.

This example uses jQuery.

    <div id="other_element" style="background:green;color:#fff;width:45%;">other element</div>
    <div id="wistia_yx7l0vkxxl_3" class="wistia_embed" style="width:640px;height:360px;"> </div>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
    <script>
    wistiaEmbed = Wistia.embed("yx7l0vkxxl", {
      container: "wistia_yx7l0vkxxl_3"
    });
    function matchWidthToOtherElement() {
      wistiaEmbed.hasData(function() {
        wistiaEmbed.width($("#other_element").width(), {
          constrain: true /* constrain option preserves the video's aspect ratio */
        });
      });
    }
    $(window).resize(matchWidthToOtherElement);
    matchWidthToOtherElement();
    </script>

The solutions above need to watch for size changes to match, which means there 
can be a half second delay before the video actually resizes. But the Player
API has the advantage of resizing the video with no delay. 


## What about playlists?

### Video Foam

Playlists do not officially support Video Foam, but they still kind of work
with it. We need to update our Playlist API--when we do that, we will add more
complete support for playlists.

### Pure CSS Approach

Pure CSS should work with playlists just fine. You should be able to use the
same styles and HTML patterns as single videos.

### Playlist API

The [Playlist API]({{ '/playlist-api' | post_url }}) also supports changing the video's width and height, though
it does not yet support the `constrain` option.

To change the width and constrain the height, you can do the following:

    wistiaPlaylist.hasData(function() {
      aspectRatio = wistiaPlaylist.videoWidth() / wistiaPlaylist.videoHeight()
      newWidth = 700;
      newHeight = newWidth / aspectRatio;
      wistiaPlaylist.videoWidth(newWidth).videoHeight(newHeight)
    });
