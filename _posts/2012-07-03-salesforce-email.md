---
title: Salesforce.com
layout: post
description: Wistia's built in alert system can be easily integrated with your Salesforce account to keep track of your leads' video viewing activity. 
category: Integrations
footer: 'for_intermediates'
---

Many organizations that use video in their sales process also use Salesforce.com to manage their leads, opportunities, and sales pipelines.  As a result, Wistia has integrated with Salesforce.com to allow Salesforce.com users to associate activity in their Wistia account with contacts, leads, and opportunities in Salesforce.com.

Those using Wistia in a sales context often find the [Wistia Email Alerts]({{ '/alerts' | post_url }}) to be extremely valuable in keeping up with a prospect's activities within their Wistia accounts.  These alerts can be set to email the sales person when any of the following events occur within the Wistia system:


*  **New media** - Alert manager when media is uploaded or copied into a project

*  **New comment** - Alert manager when new comments are made

*  **Sharing** - Alert manager when someone invites new contacts to view my projects

*  **Download** - Alert manager when someone downloads media

*  **Activation** - Alert manager when a contact activates their account

*  **Login** - Alert manager when a contact logs in to Wistia

*  **Failed login** - Alert manager when someone tries to login to Wistia but enters an incorrect email or password

The Wistia Salesforce.com integration allows the sales person to not only receive these alerts via email, but also to have them flow into their Salesforce.com account so that they can be associated with contacts, leads, or opportunities to more accurately assess prospect engagement and keep a more complete record of an individuals activities related to the buying cycle. 

To enable this capability is three simple steps:

 1.  Have your Salesforce.com adminstrator enable the "Email to Salesforce" capability within your Salesforce.com account.
 2.  Set up your individual "Email to Salesforce" preferences
 3.  Add your "Email to Salesforce" address to Wistia to have it start sending alerts to Salesforce.com

The subsequent sections will cover how to do all three of these steps in addition to how to use the Wistia Alerts in Salesforce once integrated.

## Enable "Email to Salesforce"

If your Salesforce.com administrator has already enabled the "Email to Salesforce" capability within your company's Salesforce.com implementation, you can skip this step.  If this capability has not yet been enabled, it will require your administrator to make one simple change in the configuration.

When your Salesforce.com administrator is logged in, they will have a panel along the left-hand side of the screen in Salesforce which is titled "Administration Setup".  Under this panel, have them expand the option labeled "Email Administration".  There will be an item in this list titled "Email to Salesforce".  Click on this item and the main window will display options for "Email to Salesforce".

{% post_image hashed_id: '8d7469a270e1cdd8b463ba58efe362dd4c2ae97f', class: 'center' %}

In the main window, click the "Edit" button.  This will then allow the administrator to make changes to the configuration.  Once in edit mode, simply check the checkbox next to "Active" and hit the "Save" button.

The "Email to Salesforce" capability has now been enabled. Hurray!

## Set up "Email to Salesforce" preferences

The next step is to set up your "Email to Salesforce" preferences so that your Wistia Alerts will be received by the Salesforce.com system.  To do this, log into your Salesforce.com account and click on the "Setup" link in the header (shown on the screenshot below).

{% post_image hashed_id: '4f66865387dd4652a5d96e9d88729443feef19fc', class: 'center' %}

This will bring you to a page where you should see a panel titled "Personal Setup" on the left-hand side of the page.  Expand the option that says "Email" and you should see an item labeled "My Email to Salesforce".  Click on this link to bring up the "Email to Salesforce" preferences screen" (shown below).

{% post_image hashed_id: '110a1ed991a1706363e5a02d245b9f6bc4318b6c', class: 'center' %}

On this screen, simply enter the email address "alerts@wistia.com" in the <span class="code">My Acceptable Email Addresses</span> box.  This will enable Salesforce to receive your alert messages from the Wistia system.

It is also recommend that you uncheck the <span class="code">Email me confirmation of association</span> checkbox toward the bottom of the form if it is currently checked.  If this box is not unchecked, you will receive an email at your normal email account every time an alert message is received by Salesforce.

When finished, simply click the "Save" button at the bottom of the page.

## Add Salesforce address in Wistia

To configure your Wistia account to send your alert messages to Salesforce, first copy the "Email to Salesforce Address" shown on the Email to Salesforce configuration screen shown above.  This address will be in the format:

<span class="code">emailtosalesforce@xxxxxxxxxxxxxxxxxxx.in.salesforce.com</span>

Once you have copied that email address, log into your Wistia account.  Under the "Account" tab at the top of any Wistia page, choose the "My Settings" option.  This will bring you to a preferences page where you can configure your personal Wistia settings.  Towards the bottom of the page, underneath the Email Alerts, a Salesforce.com logo is shown with a text box next to it.  Simply paste your Email to Salesforce address into this box and hit the "Save Settings" button at the bottom of the page.

{% post_image hashed_id: '557e502a6969097b0b44cf79d1f7db37ec04863b', class: 'center' %}

Your Wistia and Salesforce.com integration is now complete!

## Using Wistia and Salesforce.com

As mentioned in the introduction, the Wistia/Salesforce.com integration allows you to have your Wistia Alert emails sent directly to Salesforce.com so that they will show up on your homepage and can be associated with contacts, leads, or opportunities.

Once you have completed the above integration steps, the next time that you receive a Wistia Alert, you will also see a new Salesforce Task show up in the "My Task" section of your homepage.  The screenshot below shows how this will appear.

{% post_image hashed_id: '78d5cd686f63d770284655309e0dc5efd70ca62b', class: 'center' %}

To to assign the alert to a particular contact, lead, or opportunity simply click on the subject of the Task in the "My Tasks" section. Once you are on the Task Detail screen, click the edit button to edit the Task. 

{% post_image hashed_id: 'a0acb3c38d5d9a349c0680af3ea0b10faaeacdde', class: 'center' %}

Once you have hit the edit button you will see the "Task Edit" screen similar to the one below.  Here, you can assign this Alert to a Contact, Lead, or Opportunity.  In the specific case shown in the screenshot below, the Task has been associated with the Lead "John Doe".  You can also set up follow-up reminders if they are appropriate.  When finished editing, hit the "Save" button.

{% post_image hashed_id: '873e3e9e1db0cd7134b5037dc83db6cf68d195dc', class: 'center' %}

Now when you go the page in Salesforce.com for the Contact, Lead, or Opportunity you will now see this activity displayed in either the "Open Activities" or "Activity History" depending on the status set when editting the Task.  You can see an example an alert associated with a Lead in the screenshot below.

{% post_image hashed_id: 'dc76965f9a460c806cc268c41ecd1af5423be66b', class: 'center' %}

By using Wistia integrated with Salesforce, you can easily see which prospects are actively engaged with your content to help you better allocate resources and time to the right leads.
