---
title: Account Settings
layout: post
category: Account
description: Questions about admin type stuff? Account Settings? Billing statements? Don't worry, we've got it all covered right here.
post_intro: <p> Here's the lowdown on your Account Settings. Billing questions? Need to add a Manager? Just need some light reading? Let's do this. </p>
footer: 'for_intermediates'
---

### Opening Your Account Settings

Most of the important settings for your Wistia Account are housed in the
*Account Settings*. Many of the tips below require you to open the Account
Settings as well.

{{ "Account Settings is an Account Owner privilege. Make sure you're logged in as the Account Owner to access these menus." | alert}}

Once you're logged in as the Account Owner, find the *Account* drop-down menu in the upper-right hand corner. Next, select the
*Settings* option seen here:

{% post_image hashed_id: '3ec494cfbab90a33f10773c437fc58e72f28b752', width: 600, class: 'float_left' %}

That will bring you straight to the Overview section of your Account Settings. Hooray!

---

## Uploading Your Logo
From the *Settings*, choose the Account tab on the right. In there, you will see your current account logo (it's the Wistia logo by default) and have the option to upload a new one.  Your logo will be displayed on the upper left of every page in your account area, and on your public video pages.

{% post_image hashed_id: '2751326997d8c973714f35073f807b89023c7088', width: 600, class: 'center' %}

If you'd like to place your logo below an embedded video, check out the Social Bar section in [Customize]({{ '/customizing-your-video' | post_url }}).

---

## Change the Subdomain (URL) of your Wistia Account

By default, your account URL is based on the domain of your email address. To change your Wistia account URL, you must be logged in as the Account Owner. Click the Account tab in *Settings*, and scroll down to find the *Wistia URL* section shown here:

{% post_image hashed_id: '1d3b8b8cc903d5df0a3dd9432dd6933428e305b3', width: 600, class: 'center' %}

In the section labeled "Wistia Subdomain", you will see a text box showing the current URL of your Wistia account (in the case of the above picture,`http://home.wistia.com`).  Type the name you wish to use instead in the text box (only letters, numbers, and hyphens) and press *Save Settings* at the bottom to save your changes.

{{ "Once you change the URL for your account, all previous links referenced by <em>http://YourOldName.wistia.com</em> will no longer work." | note }}

---

## Twitter Handle

Want to make sure tweets referencing your Wistia videos tag your Twitter account? Learn more about Wistia and Twitter on the [Social Sharing page]({{ '/social-sharing#twitter_handle' | post_url }}).

---

## Filtering Out Internal Stats

Need to make sure you're not skewing the stats during testing? Good news! You can filter out your own viewing activity (and the viewing activity of anyone else on your team) from your Wistia stats based on IP address.

In *Settings*, click the Account tab on the right - this contains an IP filtering section where you can enter comma-separated IP addresses. You can find your IP address by <a href="https://www.google.com/search?q=ip">searching for "ip" in Google</a>. Google will tell you what yours is at the top of the search results.

{% post_image hashed_id: 'fd9c39a7ec8f628703b0bdc623ee159929b1eb87', width: 600, class: 'center' %}

{{ "Activating IP filtering will not remove any historical data – it will, however, keep your activity from getting tracked in the stats going forward." | note }}

---

## Anonymize IPs

Sometimes you'll need to anonymize the IPs Wistia collects in order to abide by local laws (looking at you Germany). If you need to anonymize the IP addresses Wistia pulls in, in *Settings* click on the **Account** tab on the right. Scroll down to the Anonymize IPs section, and click **Activate**.

{% post_image hashed_id: '207aeca78e6f7d95c1ddc80d94b052dfbeb43738', width: 600, class: 'center' %}

Make sure you scroll all the way to the bottom of the page to **Save** your settings!

---

## Domain Restrictions

Video embed domain restrictions allows you to prevent a viewer
from copying your video embed codes and pasting them on their domain.
When domain restriction is set up, the videos in your account will only
display on the domains you specify.

Domain restrictions apply to all videos in your account. Here's how to set up
Domain restrictions for your account:

1. Open to the Account tab in your Account Settings (which requires
  Account Owner privileges).
2. Scroll down to the **Domain Restrictions** section.
3. Select the "Enabled" radio button, and enter the domains you wish to whitelist.
  Don't forget to save your updates!
4. When you embed your videos onto a website you allow, it will appear
  properly. If the video was embedded on a webpage **not** in your whitelist,
  it would appear as it does below.

{% post_image hashed_id: '76dbe0fb4f1d3373bc1e307446218d11742f2590', class: 'center' %}

## Video Quality

By default, [Wistia will automatically determine]({{ '/export-settings#how_wistia_does_hd' | post_url }})
the best way to deliver your video for the smoothest playback. If,
however, you'd like to choose your own Video Quality setting for your
account, you can do so in your Account Settings. Click the Account tab
in *Settings*, and scroll down to find the *Video Quality* section.

{% post_image hashed_id: 'd0246fca7aa6bf6753b1c47f5c5da479502ab63e', class: 'center' %}

Choose a Video Quality, and don't forget to save!

---

## Monthly Usage

To see the storage and bandwidth usage on your account, you must be logged in as the Account Owner. Select the *Usage* tab in your Account Settings.

{% post_image hashed_id: '7920ac1e4d2ab7634c5aadfc0e8f63cdb8976f53', class: 'center' %}

This will show you how much bandwidth you have used, along with your current account limits. If you have a storage limit on your account, that will be displayed as well.



---

## Billing Statements

To see billing statements, you must be logged in as the Account Owner.
Click the  "Billing" tab in your Account Settings.  This will display a complete history of the payment activity on your account.

{% post_image hashed_id: 'b00b87b48826ed1a31d96b045bf6579a79c3a7b3', width: 600, class: 'center' %}


---

## Updating your Credit Card

To update your credit card, you must be the Account Owner. Once logged in, head to your [Account Settings](#opening_your_account_settings) and select the "Billing" tab on the right. On your billing page, you will see
a form to enter your credit card information.

{% post_image hashed_id: '34cfa3061946b0459e777a2f9e20c8f09856d238', width: 600, class: 'center' %}

After updating your credit card, you can check to make sure that your recent payments went through successfully by looking at the [Billing Statements](#billing_statements) section.

---

## Adding & Removing Managers

From your *Account Settings*, click the "Managers" tab on the sidebar. To add a Manager, enter the new Manager's
email address into the text box and click <span class="faux_button">ADD AS MANAGER</span>.

{% post_image hashed_id: 'd9c181f32c331c7aa16a98632025f0ebca9c916b', width: 600, class: 'center' %}

To remove existing Managers, click *Remove* next to their email address in the Current Managers list.

---

## API Access

An API token and password can be used for interacting with the [Wistia APIs]({{ '/developers' | post_url }}), and for setting up 3rd party integrations (like Pardot and HubSpot).

To access those credentials for your account, select the API tab from your *Account Settings*.



---

## Transferring Ownership of Your Account

If you need to set someone else up as the owner of your account, the first step
is to [add them as a Manager](#adding__removing_managers).

Once the new owner is a Manager (or maybe they already were, you are so sneaky
efficient!), select the *Account* tab in your Account Settings.

{% post_image hashed_id: 'aa398787f771bec9d8d92b4a566f364da6bcbf44', class: 'center' %}

Select the new owner from the *Account Owner* menu, and then *Save Settings* at the bottom of the page. Ownership will be transferred
immediately.

---

## Changing your Email Address

If you would like to change the email address associated with your user account, it's actually super easy! Click the *Personal* tab in Settings sidebar.

{% post_image hashed_id: '71ead07ca1c43264669608f037bdc00216abe6ba', class: 'center' %}

From there you can very easily change the email that you use to log in to Wistia and receive notifications to!

---

## Canceling Your Account

We understand, sometimes it just isn't meant to be.

If you'd like to cancel your account you must be logged in as the Account Owner.
After logging in, navigate to your Account Settings and choose "Cancel" from the
side menu. We'll ask you to fill out a few questions about your experience,
and you're good to go.

Godspeed, fellow video friend.

{% post_image hashed_id: '4b245e3c8a2acb7722fd4234d260e68e92fdca27', class: 'center' %}

{{ "Accidentally cancel? You can re-activate your account by logging in as the Account Owner. Hooray!" | tip }}
