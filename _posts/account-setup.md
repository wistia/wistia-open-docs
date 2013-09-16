---
title: Account Setup
layout: post
category: Getting Set Up
description: Questions about admin type stuff? Account Dashboards? Billing statements? Don't worry, we've got it all covered right here.
footer: 'for_intermediates'
---

{% wistia_embed hashed_id: b0778cb217 %}

---

## Open Your Account Dashboard

{% post_image hashed_id: 'b9c54623ae5c7aef464dc3802ec54122f6a29ea9', width: 600, class: 'center' %}

Most of the important Wistia settings for your Account are housed in the
*Account Dashboard*. Many of the tips below require you to open the Account
Dashboard as well.

First, you will need to be logged in as the Account Owner. Find the *Account*
drop-down menu in the upper-right hand corner of your account. Next, select the
*Account Dashboard* option.

{% post_image hashed_id: '86e27462ccb1bdcbeb169dbfbdf5eaa30056475c', width: 600, class: 'center' %}

---

## Uploading Your Logo
From the *Account Dashboard*, choose
<span class="faux_button">Upload your logo</span>.  The Upload Your Logo dialog
will guide you through the process of uploading and displaying your company
logo in your Wistia account.

{% post_image hashed_id: '4ea0e2a40e66c31af1d275deafd1cfbfa91ae9f4', width: 600, class: 'center' %}

---

## Filtering Out Internal Stats

{% post_image hashed_id: 'c3b7767bf8523160c7ded97ff69ea4bf260b5ce1', width: 600, class: 'center' %}

You can filter out your own views, and those of the other testers you might
have looking at your Wistia videos before launch, based on IP.

In the Account Dashboard, click the *Embed Settings* option - this contains an
IP filtering section where you can enter comma-separated IP addresses.

At this time, we do not support wildcards - only the full IP address.


{{ "The IP Filtering tool is only available on the Account Dashboard, so you will need owner-level permissions to access it." | note }}

<div class="clear"></div>


---

## Change the Subdomain (URL) of your Wistia Account
To change your Wistia account URL, you must be logged in as the account owner.
Click <span class="faux_button">Settings</span> on the *Account Dashboard*.
A dialog box like the one shown below will appear.

{% post_image hashed_id: 'f7cccd88af9bfe8ac2ab39061bfebbae29fcd93e', width: 600, class: 'center' %}

In the section labeled "Address", you will see a text box showing the current
URL of your Wistia account (in the case of the above picture,
`http://jeff.wistia.com`).  Simply type the name you wish to use instead in the
text box (only letters, numbers, and hyphens) and press
<span class="faux_button">Save settings</span> at the bottom.

{{ "Once you change the URL for your account, all previous links referenced by <em>http://YourOldName.wistia.com</em> will no longer work." | note }}

---

## Set a custom domain (CNAME)
If you have your own domain name, re-naming your Wistia account is no problem.

* First, you will need to select a subdomain for your account
  (ie. `videos.yourdomain.com`).
* Then, have the CNAME for that subdomain point to: **app.wistia.com**

Once that is set up, the CNAME gets propagated (which can take a couple hours,
so grab some coffee or a good book). To test if it is complete: open the
*Settings* area in your *Account Dashboard*, change the "Address" to CNAME,
and enter your new hostname.

Once you save, everything should be switched over for you, and you are now
rocking a custom URL!

{{ "Any links previously shared or videos embedded from your account will still operate as normal." | note }}

{{ "CNAMEing your domain won't change the name in the embed codes. Our system isn't designed for customizable embed hosts.  This will merely change the address where you/viewers can see your Wistia account videos.  This choice was made because of effect it would have on video loading - essentially, our focus is on your video loading fast." | note }}

---

## Monthly Usage

{% post_image hashed_id: 'e9d0506033f5d35682bfe1f741f3dc2099467de9', width: 600, class: 'center' %}

To see account limits, you must be logged in as the account owner. Select
the <span class="faux_button">Usage</span> option from your Account Dashboard.
This will show you how much bandwidth and storage you have used, along with
your current account limits.

Along the right-hand side of the Account Dashboard page, you will see usage and
limit information within the panel labeled "Current Subscription".

<div class="clear"></div>

---

## Billing Statements

To see billing statements, you must be logged in as the account owner.
Click the  "Billing statements" button on your Account Dashboard.  This will
bring up a dialog box showing a list of all the receipts for your transactions.

{% post_image hashed_id: 'ab90b75617a960e658aa84c3eb8e17a8e8f0d70f', width: 600, class: 'center' %}


---

## Adding & Removing Managers
From your *Account Dashboard*, click the "Add / remove managers" button on the
Accounts page. A dialog will appear.  To add managers, enter the new manager's
email address into the text box and click <span class="faux_button">Add</span>.

To remove existing managers, click <span class="faux_button">Remove</span>.

{% post_image hashed_id: '1ac3c146ef56721d5e8718229243ba6c66158cf3', width: 600, class: 'center' %}
