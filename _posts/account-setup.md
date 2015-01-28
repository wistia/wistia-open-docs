---
title: Account Setup
layout: post
category: Getting Set Up
description: Questions about admin type stuff? Account Dashboards? Billing statements? Don't worry, we've got it all covered right here.
footer: 'for_intermediates'
---

## Opening Your Account Dashboard

Most of the important settings for your Wistia Account are housed in the
*Account Dashboard*. Many of the tips below require you to open the Account
Dashboard as well.

To access your Account Dashboard, you will need to be logged in as the Account Owner. Once you're logged in as the Account Owner, find the *Account* drop-down menu in the upper-right hand corner. Next, select the
*Account Dashboard* option seen here:

{% post_image hashed_id: '9e3f2f8b857f2511cd2e5ce74b5664d82a511c2f', width: 600, class: 'float_left' %}

That will bring you straight to the Overview section of your Account Dashboard. Hooray!

---

## Uploading Your Logo
From the *Account Dashboard*, choose the Account Settings tab on the right. In there, you will see your current account logo (it's the Wistia logo by default) and have the option to upload a new one.  Your logo will be displayed on the upper left of every page in your account area, and on your public video pages. 

{% post_image hashed_id: '2ffdd3b216f7df82533d6806c3278284f5e3a895', width: 600, class: 'center' %}

If you'd like to place your logo below an embedded video, check out the Social Bar section in [Customize]({{ '/customizing-your-video' | post_url }}).

---

## Filtering Out Internal Stats

Want to make sure you're not skewing the stats during testing? Good news! You can filter out your own viewing activity (and the viewing activity of anyone else on your team) from your Wistia stats based on IP address. 

In the Account Dashboard, click the *Embed Settings* option - this contains an IP filtering section where you can enter comma-separated IP addresses. You can find your IP address by <a href="https://www.google.com/search?q=ip">searching for "ip" in Google</a>. Google will tell you what yours is at the top of the search results.

{% post_image hashed_id: 'cfe898a99193efcdbd57809e89967e022da3769b', width: 600, class: 'center' %}

{{ "Activating IP filtering will not remove any historical data – it will, however, keep your activity from getting tracked in the stats going forward." | note }}


---

## Change the Subdomain (URL) of your Wistia Account

By default, your account URL is based on the domain of your email address. To change your Wistia account URL, you must be logged in as the account owner. Click the Account Settings tab in the *Account Dashboard*, and scroll down to find the *Wistia URL* section shown here:

{% post_image hashed_id: 'd7c990eae0b25edb92baa376a1f1ae658043808a', width: 600, class: 'center' %}

In the section labeled "Wistia Subdomain", you will see a text box showing the current URL of your Wistia account (in the case of the above picture,`http://dave.wistia.com`).  Type the name you wish to use instead in the text box (only letters, numbers, and hyphens) and press <span class="faux_button">Update Account Settings</span> at the bottom to save your changes.

{{ "Once you change the URL for your account, all previous links referenced by <em>http://YourOldName.wistia.com</em> will no longer work." | note }}

---

## Set a custom domain (CNAME)
If you have your own domain name, re-naming your Wistia account is no problem.

* First, you will need to select a subdomain for your account
  (ie. `videos.yourdomain.com`).
* Next, have the CNAME for that subdomain point to: **app.wistia.com**
* Then, make sure to add the CNAME under the Wistia URL heading, as found in the Account Settings page of your Account Dashboard.

Once that is set up, the CNAME gets propagated (which can take a couple hours,
so grab some coffee or a good book). To test if it is complete: open the
*Account Settings* area in your *Account Dashboard*, change the "Address" to CNAME,
and enter your new hostname.

Once you save, everything should be switched over for you, and you are now
rocking a custom URL!

{{ "CNAMEing your domain won't change the name in the embed codes. As such, Any links previously shared or videos embedded from your account will still operate as normal. Our system isn't designed for customizable embed hosts.  This will merely change the address where you/viewers can see your Wistia account videos." | note }}

---

## Monthly Usage

To see the storage and bandwidth usage on your account, you must be logged in as the Account Owner. Select the *Usage* tab in your Account Dashboard.

{% post_image hashed_id: 'f4e18fa2aa0d3d6388f6903745cfa18d1eabd3a7', class: 'center' %}

This will show you how much bandwidth you have used, along with your current account limits. If you have a storage limit on your account, that will be displayed as well.



---

## Billing Statements

To see billing statements, you must be logged in as the account owner.
Click the  "Billing statements" tab in your Account Dashboard.  This will display a complete history of the payment activity on your account.

{% post_image hashed_id: '52c72ff4dac1868a4be0871faf2ce02fecfe230b', width: 600, class: 'center' %}


---

## Updating your Credit Card

To update your credit card, you must be the Account Owner. Once logged in, head to your [Account Dashboard](#opening_your_account_dashboard) and select the "Update Credit Card" tab on the right. 

{% post_image hashed_id: 'c7e9260645112f76a7512cc0eabe38fc17056e45', width: 600, class: 'center' %}

After updating your credit card, you can check to make sure that your recent payments went through successfully by heading to the [Billing Statements](#billing_statements) section.

---

## Adding & Removing Managers

From your *Account Dashboard*, click the "Managers" tab on the Account Dashboard page. To add a manager, enter the new manager's
email address into the text box and click <span class="faux_button">ADD AS MANAGER</span>.

{% post_image hashed_id: '5010fa4e016c7a0d7146cfb75668401840316fcb', width: 600, class: 'center' %}

To remove existing managers, click *Remove* next to their email address in the Current Managers list.

---

## API Access

An API token and password can be used for interacting with the [Wistia APIs]({{ '/developers' | post_url }}), and for setting up 3rd party integrations (like Pardot and HubSpot).

To access those credentials for your account, select the API Access tab From your *Account Dashboard*. 



---

## Transferring Ownership of Your Account

If you need to set someone else up as the owner of your account, the first step
is to [add them as a manager](#adding__removing_managers).

Once the new owner is a manager (or maybe they already were, you are so sneaky
efficient!), select the *Account Settings* tab in your *Account Dashboard*.

{% post_image hashed_id: 'fb4bdfef31a76000a97bcaa30a7cbf2df08ebd75', class: 'center' %}

Select the new owner from the *Account Owner* menu, and then <span
class='faux_button'>UPDATE ACCOUNT SETTINGS</span>. Ownership will be transferred
immediately.

---

## Changing the Email Address Associated With Your User Account

If you would like to change the email address associated with your user account, it's actually super easy! From the *Account* tab in the top right corner of your screen, select *My Settings*.

{% post_image hashed_id: '6e8ae8a2517fe48452198167a252bfc55f594023', class: 'center' %}

From there you can very easily change the email that you use to log in to Wistia and receive notifications to!
