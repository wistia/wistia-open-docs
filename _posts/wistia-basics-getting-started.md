---
title: Wistia Basics - Getting Started
category: Wistia Basics
description: OK, so you've got your new Wistia account set up. Now what? Watch this quick video to get a solid foundation set up!
layout: video
type: post
post_intro: <em>Wistia Basics</em> features uploading, embedding, analytics, and account settings with Wistia.
video_hashed_id: 8a5e87899d
---

<h3>
  <a href="#" class="chapter_link" onclick="wistiaEmbed.time(0).play(); return false;">
    Uploading Your Video
  </a>
</h3>

* *(0:25)* to create a New Project, select "New Project" from under the Actions drop-down menu
* *(0:45)* We did a bit of time-warping to accomplish this.  It can take some time to upload & process videos!
* *(1:00)* For a list of the formats we accept, refer here: [Optimal Export settings]({{ '/export-settings#optimal_export_settings_for_wistia' | post_url }})
* *(1:15)* This was the best thumbnail because Chris looks so awkward.

<h3>
  <a href="#" class="chapter_link" onclick="wistiaEmbed.time(96).play(); return false;">
    Embedding On Your Site
  </a>
</h3>

* *(2:10)* To see that video on customization, head here: [Customizing Your Embed]( {{ '/wistia-basics-customization' | post_url }})
* *(2:20)* In this example, I used a Wordpress blog, but there are lots of different site types and platforms you can embed Wistia videos into.  See our [list of tested sites]({{ '/integration' | post_url }}).

<h3>
  <a href="#" class="chapter_link" onclick="wistiaEmbed.time(159).play(); return false;">
    Analytics Overview
  </a>
</h3>

* *(3:20)* For more on Wistia Analytics, head here: [Understanding Analytics]({{ '/wistia-basics-analytics' | post_url }}).

<h3>
  <a href="#" class="chapter_link" onclick="wistiaEmbed.time(219).play(); return false;">
    Account Settings
  </a>
</h3>

* *(4:00)* You can access the Account Dashboard under the "Account" drop-down menu anywhere in your account.
* *(4:40)* For more on what different user-levels can access in your account, read up on [permissions]({{ '/permissions' | post_url }}).
* *(5:40)* It's true, Chris couldn't wait.  In fact, he watches the other videos daily.



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
