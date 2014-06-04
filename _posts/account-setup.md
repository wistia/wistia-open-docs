---
title: Account Setup
layout: post
category: Getting Set Up
description: Questions about admin type stuff? Account Dashboards? Billing statements? Don't worry, we've got it all covered right here.
footer: 'for_intermediates'
---

{% wistia_embed hashed_id: b0778cb217 %}

---

## Opening Your Account Dashboard

{% post_image hashed_id: '55c81b1270231d7c31d6a460425e425ad595641a', width: 600, class: 'center' %}

Most of the important Wistia settings for your Account are housed in the
*Account Dashboard*. Many of the tips below require you to open the Account
Dashboard as well.

First, you will need to be logged in as the Account Owner. Find the *Account*
drop-down menu in the upper-right hand corner of your account. Next, select the
*Account Dashboard* option.

{% post_image hashed_id: '528df9cc390e92c0a6198a267175ecc33f2b6b61', width: 600, class: 'center' %}

---

## Uploading Your Logo
From the *Account Dashboard*, choose
<span class="faux_button">Upload your logo</span>.  The Upload Your Logo dialog
will guide you through the process of uploading and displaying your company
logo in your Wistia account.

{% post_image hashed_id: '4ea0e2a40e66c31af1d275deafd1cfbfa91ae9f4', width: 600, class: 'center' %}

---

## Filtering Out Internal Stats

{% post_image hashed_id: '9feebb84249cac542f9f66a43c321d0c04c87f17', width: 600, class: 'center' %}

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

{% post_image hashed_id: '32960b1e0af49064c948759d8d30378277258daa', class: 'center' %}

To see account limits, you must be logged in as the account owner. Select
the <span class="faux_button">Usage</span> option from your Account Dashboard.
This will show you how much bandwidth you have used, along with
your current account limits. If you have a video limit on your account, that will be
included as well.

Along the right-hand side of the Account Dashboard page, you will see usage and
limit information within the panel labeled "Current Subscription".

---

## Billing Statements

To see billing statements, you must be logged in as the account owner.
Click the  "Billing statements" button on your Account Dashboard.  This will
bring up a dialog box showing a list of all the receipts for your transactions.

{% post_image hashed_id: 'ab90b75617a960e658aa84c3eb8e17a8e8f0d70f', width: 600, class: 'center' %}


---

## Updating your Credit Card

To update your credit card, you must be the Account Owner. Once logged in, head
to your [Account Dashboard](#opening_your_account_dashboard) and select the
"Update Credit Card" option.

{% post_image hashed_id: '33974be9ddfbba1ec140cab539d53d7d7d9b1367' %}

---

## Adding & Removing Managers

From your *Account Dashboard*, click the "Add / remove managers" button on the
Accounts page. A dialog will appear.  To add managers, enter the new manager's
email address into the text box and click <span class="faux_button">Add</span>.

To remove existing managers, click <span class="faux_button">Remove</span>.

{% post_image hashed_id: '1ac3c146ef56721d5e8718229243ba6c66158cf3', width: 600, class: 'center' %}

---

## API Password and Public Token

{% post_image hashed_id: '655da9c9b7addebc9d935a02a987d9332bd5f3c1', class: 'center' %}

From your *Account Dashboard*, select the *API* tab.

The API Username and Password are used most for interacting with the [Wistia
Data API]({{ '/data-api' | post_url }}), and the Public Token is used mostly
for 3rd party service (like Pardot).

---

## Transferring Ownership of Your Account

If you need to set someone else up as the owner of your account, the first step
is to [add them as a manager](#adding__removing_managers).

Once the new owner is a manager (or maybe they already were, you are so sneaky
efficient!), select the *Settings* area in your *Account Dashboard*.

{% post_image hashed_id: '5c77e94fb77ee33eb1b25afcc138ef6fec82930a', class: 'center' %}

Select the new owner from the *Account Owner* menu, and then <span
class='faux_button'>SAVE SETTINGS</span>. Ownership will be transferred
immediately.

---

## Changing the Email Address Associated With Your User Account

If you would like to change the email address associated with your user account, it's actually super easy! From the *Account* tab in the top right corner of your screen, select *My Settings*.

{% post_image hashed_id: '6e8ae8a2517fe48452198167a252bfc55f594023', class: 'center' %}

From there you can very easily change the email that you use to log in to Wistia and receive notifications to!
