---
title: Wistia and MailChimp
layout: post
category: Integrations
description: Have a MailChimp Campaign? Have a Wistia account? Combine their powers for all sorts of awesome.
post_intro: <p><a href="http://mailchimp.com">MailChimp</a> is one of our favorite email marketing systems. When we need to send out emails, and don't want them to get stuck in spam filters, we use MailChimp. <br></br>They also provide some pretty neat tools for discovering how your email marketing funnel works. For our Wistia users, we wanted to create a seamless experience where they could send tailored email campaigns that included Wistia videos, and then track how their contacts interacted with the video itself. <br></br>So let's dive in to how to create an email campaign with Wistia & MailChimp!
footer: 'for_intermediates'
---

{% post_image hashed_id: 'e298970f564442cd0fb182c592a2de140e283515', width: 200, class: 'intro_image float_right' %}

## Prework

The first step is choosing the video you'd like to show off in your campaign.

Start by embedding the video on the landing page you'll be using. (If you're having the email merge tag point to your Wistia Media Page, you can skip this step.)  Follow the embedding steps if you have any trouble: [Embedding Your Video]({{ '/embedding' | post_url }}).

## The MailChimp/Wistia Integration

There's a few ways to use the magic of MailChimp and Wistia together. You can use the power of Turnstile to collect leads, and send them to different MailChimp lists. To begin, you'll want to head to Account > Settings while logged in as the **Account Owner**. Then, navigate to the _Integrations_ section under _Advanced_.

{% post_image hashed_id: 'c7e4d7e2cbf06c333ec0d8237ed50be5bc692024', class: 'center' %}

Select MailChimp from the list, and you'll be prompted to connect via MailChimp.

{% post_image hashed_id: 'edaa0c77cf712143e5c266d0438a3bcfaa44b614', class: 'center' %}

Enter your login credentials and do a little dance. You're almost to the sweet goods!

## Turnstile

The first way to enjoy the magic is to set up a Turnstile on one or more of your videos. Navigate to the video that you want to collect leads with. Select **Customize** from the **Video Actions** drop-down menu. Then, under **Timeline Actions**, add a Turnstile. Customize it to your specifications (names too? can they skip?), and choose a list in MailChimp.

{% post_image hashed_id: '060187ce88347d1df8d81b6641c50d2d412b5037', width: 300, class: 'intro_image float_right' %}

Save your changes, and you're good to go! Bonus: we built Turnstile to be smart enough to know when to lay low. Turnstile can recognize where someone is watching the video from, so if you choose to share the same video in a MailChimp campaign, your viewers won't get stuck with the Turnstile.

Want to know more? Check out the [Turnstile page]({{ '/turnstile' | post_url }}) for all the details.

{% wistia_embed hashed_id: 72vlc3r1bq %}

## Create Your Merge Tag

{% post_image hashed_id: '4d2958a071174434e28d467fe104296e6937ed6d', width: 500, class: 'float_right' %}

Another way you can gather and nurture leads is to share your video through a MailChimp campaign. First you'll want to navigate to the video you'd like to share within Wistia.

Next, select Embed and Share from under the Video Actions menu.

In the Embed and Share modal, head to the _Link in Email Campaign_ tab. If you've already integrated your Wistia account with your MailChimp account, the email merge tag will be automatically styled for MailChimp.

But just to be sure, double check that "MailChimp" is selected from the Email provider drop-down (it should be first, because we &lt;3 them). Then tweak your settings for thumbnail size (how big it will appear in the email) and landing page (once they click on the thumbnail, where should they go? - hint: where the video is!).

{{ "Our thumbnail default size of 450px is the same as MailChimp and looks great in most email software. If you'd like to test a different size, use 'enter preview mode' in MailChimp after pasting in a revised Merge Tag." | tip }}

## Paste Your Merge Tag Into MailChimp

{% post_image hashed_id: '6640def6298b0baf6bbb205415790c7c90d2c475', width: 800, class: 'float_right' %}

After getting the thumbnail and link settings working the way you'd like, copy the Email Merge Tag code, and paste it into the body of your MailChimp email. You can add it as either an HTML element, or just as a text box.

The email merge tag won't immediately show the thumbnail--check out the preview mode for that!

{% post_image hashed_id: '00d787a05872dfc7390c79e5b7894923228012d0', width: 800, class: 'float_right' %}

**Tip:** The best bet is to send yourself a test email, to make sure everything is working correctly. Careful, though, if you're viewing the video when you're logged in it won't pass through the e-mail quite right (your login will override it).

## Start Tracking Viewing!

Once your viewers receive their emails, they will start clicking your video!

The great part about MailChimp and Wistia together is that the merge tag has your recipient's email address built in - so when tracking the stats you can see exactly which emails watched the video, and up to the second how much they watched.  Now how cool is that? Just navigate to the media stats page by selecting "Stats" from the Video Actions button.

{% post_image hashed_id: '4b415b335458a43db156d733fca4f88f43200f0e', class: 'center' %}

{{ "If you would like to keep the email campaign separate from the other embedded viewings of the video, set up a separate project specifically for the email version of the video." | tip }}

## Style Tips

### Center Your MC Embed

Something we want to do frequently, but isn't always straight-forward, is *centering
our thumbnail in a MailChimp campaign*. Here's the skinny:

* Copy out your MailChimp merge tag - and take special note of the `width` (you
  might have it set up as the default, `450px`)
* Before I paste in the merge tag, I create a `<div>` tag to wrap it in, like
  this:

{% codeblock mailchimp_merge_tag.html %}
<div style="width: 450px; margin: 0 auto;">
  *|WISTIA:[$vid=w18s9azjov,$max_width=450,$watch_url=http://jeff.wistia.com/medias/w18s9azjov,$title=N,$border=N,$trim_border=N,$play_button_color=636155e0]|*
</div>
{% endcodeblock %}

Note, I set the following styles on the div:

* `width` is set to the width of your merge tag.
* `margin` is set to `0` (vertically) and `auto` (horizontally). This will
  center the thumbnail.

Give this a shot with your next MailChimp merge tag embed!

## Troubleshooting

Sometimes you may run into a little trouble with not seeing emails appear in your MailChimp lists. In our experience, there are a few reasons why this may happen.

* If you have previously had this email included in one of your lists in MailChimp but have since deleted it, MailChimp will not allow the email to be included in a list again. This is something that we often run into with test emails!

* MailChimp will sometimes cache old thumbnails, if you've previously used a different video in the same template. You can create a new campaign to solve the problem.

* MailChimp uses a double opt-in system. If the viewer that has checked out your video hasn't yet had the opportunity to confirm their opt-in for your email list, MailChimp will not populate their email. You can read more about this [here](http://kb.mailchimp.com/article/how-does-confirmed-optin-or-double-optin-work). Thanks! Happy embedding!
