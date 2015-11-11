---
title: Sharing Video Privately
layout: post
category: embed and share
description: Wistia makes it easy to privately share your videos with people. Invite people via email, and track how they watch in a secure environment.
post_intro: <p>For many users, video is something that needs to be shared only amongst a few individuals; otherwise it should be completely private.</p><p>With Wistia, your account is both secure and not indexed - you can't search Google to find the videos inside.  So if you want to share the video, but keep it secure, this guide is here to help.</p><p>Private sharing is right for you if you want to:</p><ul><li>Review and Approve content before it goes live</li><li>Share instructional videos with your team</li><li>Create internal content that contains sensitive information</li><li>Charge your customers to view content in a secure environment</li>
footer: 'for_beginners'
---

<div id="bumper_test" class="wistia_embed" style="width:730px;height:411px;">&nbsp;</div>
<script charset="ISO-8859-1" src="//fast.wistia.com/assets/external/E-v1.js"></script>
<script>
  var testArray = ['rz17xouyzk','418xma6o6q']
  var randHashedId = testArray[Math.floor(Math.random() * testArray.length)];
  wistiaEmbed = Wistia.embed(randHashedId, {
    container: 'bumper_test'  
  });
</script>

----

## Invite Viewers

{% post_image hashed_id: 'b7f77d7e188bc953dfd491ae12d9476ee44f5c2c', class: 'center' %}

Managers in your Wistia account can invite new viewers to view private content
using the "Sharing and Privacy" feature.  From the Project screen, select
"Sharing and Privacy" from under the blue "Project Actions" drop-down menu. Or,
click on the padlock icon next to the title of the project.

Next, in the box where it says "Enter email addresses to add users," type in the email addresses for contact you'd like to share the project privately with. You can also customize the test of the message by clicking "Add a personal message."

{% post_image hashed_id: '82a0ef0b697b5f311d80bb9ef7fe07ca73437358', class: 'center' %}


<div class="faq">
<h4><i class="icon-search"></i> FAQ: Why don't I set a password for my viewers?</h4>

<p>The best way for unwanted viewers to view secure content is through the original email.  Sending a group email that contains the login and password needed to access secure content can be grabbed easily: from a stolen laptop, from a hacked email account, even read right off the screen at a coffee shop.  With Wistia, your invited viewers receive an email with a one-time use activation code, and then create their own password.</p>
</div>

## Privately Share Video By Link

{% post_image hashed_id: 'c0abef6318491516e0ec8044efacfa1869cb609a', class: 'right', width: 320 %}

This is the best sharing method to use if you want to:

* Send out a single link from your own email account to a group people to allow
  them to view your video.
* Track how people watch your video, but are less concerned about associating
  viewing with a viewer's email address.

Once you have uploaded your videos to your project, from within the project
hover over the *Project Actions* menu and choose the *Sharing and Privacy*
option.

When the sharing window appears, the privacy of that project will be
displayed at the top (see image below). To create a link that can be sent out
and viewed anonymously, switch the account over to **unlocked** and then
**save**.  

Once the project has been set to *unlocked*, copy the link displayed. You can
share this link in an email or put it on a webpage, and when users click on the
link, they will be taken directly into the project.

{% post_image hashed_id: '84b91f68a2d3a09bd4635648e3598bef81efb871', class: 'center' %}

To disable access to your project through the link, set the sharing level to
*locked*.

## Managing Permissions

{% post_image hashed_id: 'b7f77d7e188bc953dfd491ae12d9476ee44f5c2c', class: 'center' %}

Wistia accounts include permissions and access controls for Managers, to set
who can view media and what they can view.  To manage permissions for contacts
on a Project, click the *Sharing and Privacy* option under Project Actions.

The share screen shows which users currently have access to the Project, and what permissions they have.  From here, Managers can add permissions like:

*  **Admin**, which gives the user Manager-Level permissions for that
   particular Project.
*  **Upload**, which allows the viewer to upload new content.
*  **Download**, which allows the viewer to download content.
*  **Share**, which means the viewer can share the Project with new viewers.
*  **Stats**, which gives the viewer the ability to view stats for videos in the Project.

{% post_image hashed_id: 'f3bab334f91573315cba67b509d0274d194f5f6e', class: 'center' %}

### Removing Access

Removing viewer access can also be done by clicking the small **X** icon at the
end of each viewer row. Make sure to **save** your changes.

## Private Viewer Analytics

Now that you have invited some viewers in to view your private content, it's
time to see if they actually watched!  This is especially helpful for reviews
and approvals and training or educational content.

{% post_image hashed_id: 'b6aebd416657befa27efa259249ab2b32d158649', class: 'center' %}

To view the individual user statistics for people you've invited into Wistia,
select the *Private User Sessions* option under the *Account* tab at the top of any page
in your Wistia account.

You will see a list of all user sessions for the users that have logged into
your Wistia account.  To see exactly what each user did in each session, click
*View Details* next to the session.

{% post_image hashed_id: '3d2c0eff0d4a023770f80abea853267bf3828204', class: 'center' %}

A complete audit trail will be shown with all of the actions the user took
while they were logged in to your Wistia account.  This includes amount of time
spent on various pages as well as video heatmaps for the videos that they
viewed.

{% post_image hashed_id: '65022f264a05a073e9a1de4196481e099a112184', class: 'center' %}

## How Wistia Appears For Your Viewers

When you invite new viewers into your account to privately view video, they
will only have access to parts of the account that have been shared with them
or they have been giving access to. For a quick review on sending
invitations, see the [Invite Viewers]({{ '/private-sharing#invite_viewers' | post_url }}) section above.

Let's walk through an example of how this will look from your viewer's perspective.


### The Invitation Email

{% post_image hashed_id: 'a2892adc2c8a546416f8853efd0eaed65c76112e', class: 'float_right', width: 500 %}

After clicking the *Add User* button, your viewer will receive an email at the
address you have designated.  This email will include an invitation to view the
project you are sharing, along with a link for their access.

{{ 'This activation link is specifically designed for their email, and is only good for one use (the email cannot be forwarded).' | note }}



### The Credential Creation Screen

{% post_image hashed_id: 'b24e225a3f0567bd80589ab5ee563c05fcbedcd7', class: 'float_right', width: 500 %}

After clicking the activation link, viewers who have never interacted with the
Wistia system will land on a page where they can create Wistia credentials.  


### The Viewer's Perspective

When your viewer logs in, they will have access to the specific Project you have shared with
them, but they will only see the functionality you have enabled for them.

By default, they will not be able to access any information specific to the
account, and they will not be able to access any other Projects in the
account.

{% post_image hashed_id: '845a72ca08edbf2cf5d2055b13d02e22e5ab1f8d', class: 'center' %}

*A sample project actions menu for an invited user with Upload and Share permissions*

Some example scenarios:

* Users who have been given *Admin* permissions for the project will be able
  to see every option under Project Actions, and will also be able to see all
  other shared users on the project via the "Sharing and Privacy" screen.
* Users with the *Stats* permission will see the Stats option under
  Project Actions.
* Users with *Upload* permissions will see the Upload option under Project
  Actions.

Users who have been given the *Share* permission (but not the *Admin*
permission) will see a slightly different Sharing screen. They will be able to
add email addresses into the "Share with" box, and will only be able to give
out the permissions that they currently have for that Project. They can also
customize the email message that is sent out as well. Here is what that Sharing
screen looks like:

{% post_image hashed_id: '3f02151ecc91df28777bc63ac177d8dc66223439', class: 'center' %}
