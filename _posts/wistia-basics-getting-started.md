---
title: Getting Started
category: Wistia Basics
special_category_link: Wistia Basics
description: OK, so you've got your new Wistia account set up. Now what? Watch this quick video to get a solid foundation set up!
layout: video
type: post
post_intro: <em>Wistia Basics</em> features uploading, embedding, analytics, and account settings with Wistia.
video_hashed_id: 8a5e87899d
---

<h2>
  <a href="#" class="chapter_link" onclick="wistiaEmbed.time(0).play(); return false;">
    Uploading Your Video
  </a>
</h2>

* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(25).play(); return false;"><i class="icon-play"></i>(0:25)</a> to create a New Project, select "New Project" from under the Actions drop-down menu
* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(45).play(); return false;"><i class="icon-play"></i>(0:45)</a> We did a bit of time-warping to accomplish this.  It can take some time to upload & process videos!
* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(60).play(); return false;"><i class="icon-play"></i>(1:00)</a> For a list of the formats we accept, refer here: [Optimal Export settings]({{ '/export-settings#optimal_export_settings_for_wistia' | post_url }})
* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(75).play(); return false;"><i class="icon-play"></i>(1:15)</a> This was the best thumbnail because Chris looks so awkward.

<h2>
  <a href="#" class="chapter_link" onclick="wistiaEmbed.time(96).play(); return false;">
    Embedding On Your Site
  </a>
</h2>

* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(130).play(); return false;"><i class="icon-play"></i>(2:10)</a> To see that video on customization, head here: [Customizing Your Embed]( {{ '/wistia-basics-customization' | post_url }})
* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(140).play(); return false;"><i class="icon-play"></i>(2:20)</a> In this example, I used a Wordpress blog, but there are lots of different site types and platforms you can embed Wistia videos into.  See our [list of tested sites]({{ '/integration' | post_url }}).

<h2>
  <a href="#" class="chapter_link" onclick="wistiaEmbed.time(159).play(); return false;">
    Analytics Overview
  </a>
</h2>

* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(200).play(); return false;"><i class="icon-play"></i>(3:20)</a> For more on Wistia Analytics, head here: [Understanding Analytics]({{ '/wistia-basics-analytics' | post_url }}).

<h2>
  <a href="#" class="chapter_link" onclick="wistiaEmbed.time(219).play(); return false;">
    Account Settings
  </a>
</h2>

* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(240).play(); return false;"><i class="icon-play"></i>(4:00)</a> You can access the Account Dashboard under the "Account" drop-down menu anywhere in your account.
* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(280).play(); return false;"><i class="icon-play"></i>(4:40)</a> For more on what different user-levels can access in your account, read up on [permissions]({{ '/permissions' | post_url }}).
* <a href="#" class="chapter_link" onclick="wistiaEmbed.time(340).play(); return false;"><i class="icon-play"></i>(5:40)</a> It's true, Chris couldn't wait.  In fact, he watches the other videos daily.



<script src="http://fast.wistia.com/labs/twitter-follows/wistia-follows.js"></script>
<script>
wistiaEmbed = Wistia.embed("8a5e87899d", {
  version: "v1",
  plugin: {
    wistiafollows: {
      postRoll: {
        screenName: "wistia",
        showScreenName: true
      },
      people: [
        {
          screenName: "csavage",
          start: 2,
          end: 13
        },
        {
          screenName: "jeffvincent",
          start: 2,
          end: 13
        }
      ],
      recap: [
        {
          screenName: "csavage"
        },
        {
          screenName: "jeffvincent"
        }
      ],
      src: "http://fast.wistia.com/labs/twitter-follows/wistia-follows.js"
    }
  }
});
</script>
