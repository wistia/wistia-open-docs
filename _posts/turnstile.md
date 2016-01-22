---
title: Email Capture with Wistia Turnstile
layout: post
category: Customize
description: Turnstile makes it easy to add email capture to any video. Build a better email list with Wistia Turnstile.
post_intro: <p>Turnstile is a great way to identify high-quality leads with video. Connect your account to your favorite email provider, then add an email capture gate to any point.</p><p>Setting up Turnstile is a breeze, we'll show you how!</p><p>If you use an email provider or marketing automation system that rocks but isn't on our current Turnstile list, submit them using <a href="https://docs.google.com/a/wistia.com/forms/d/1x2Z2KUdxXKhPYpfzfQJLVq7upAnhryBWZt2Y4IUPiTs/viewform" target="_blank">this form</a>.</p>
footer: 'for_intermediates'
---

## Add Turnstile to Your Video

To enable Turnstile on a video in your account, open the [Customize]({{ '/customizing-your-video' | post_url}}) panel and select [Timeline Actions]({{ '/customizing-your-video#timeline_actions' | post_url}}). There you will be prompted to choose an Action; to add an email gate select Turnstile. Here you can change the text of the Turnstile prompt, decide when it should appear on your video, and connect Turnstile with your Email Marketing provider. Easy peasy, lemon squeezy!

{% post_image hashed_id: "28400a9a5247cda7b312e1fce2c5e932552df901", class: 'center' %}

## Collect First and Last Names

By default, Turnstile will only ask people to enter an email address. "But Wistia!" you exclaim, "I want to ask for first and last names so I can personalize my follow up emails!" Fear not, fellow marketer. Turnstile has you covered:

{% wistia_embed hashed_id: qmdaw5lke0, embedType: iframe %}

To enable the First Name and Last Name fields, select the "Ask for First and Last Name" option right there in the Turnstile section of Timeline Actions. You'll instantly see an updated preview of Turnstile on your video.

{{ 'If a Turnstile is at the beginning or the middle of the video, the button will say PLAY. Once a Turnstile is end of the video, the button will automatically switch to SUBMIT.' | tip }}

## Set Up Your Email Provider Integration

Once enabled, a video using Turnstile will automatically track the emails entered
by your viewers in [Wistia analytics]({{ '/embedded-video-analytics' | post_url}}),
but it is most powerful when connected to your favorite email provider.

To set up the connection, open your [Account Settings]({{ '/account-setup#opening_your_account_settings' | post_url }}) and head to the *Email Integrations* section.

{{ "In order to access the Account Settings, you will need to be logged in as the Owner of the account." | note }}

{% post_image hashed_id: "edcb195d8450ac3fb0663c2113cbc40e329a54fe", class: 'center' %}

Select your provider from the list, and select <span
class="faux_button">Configure</span>. For this example, we will be using Emma.

{% post_image hashed_id: "e39ddd1b274b3813524914d7df01c36452bd343e", class: 'center' %}

Each provider needs a different set of information - you can see what info is
required on the configuration page. Emma, for example, requires the following
information from your Emma account: your Public API Key, Private API Key, and
Account ID. We also try to include some pointers on where to find this info.

## Use Your Email Provider With Turnstile

Once your account is set up to use an email provider with Turnstile, you can set
up a Turnstile-enabled embed to collect email addresses, and pass them directly
into a specific group in your connected email provider.

Inside the [Customize screen]({{ '/customizing-your-video' | post_url }}), find the
*Turnstile Email Capture* options area. Then select the
email list (group) you want the email to be added to when viewers submit their
email. If you're integrating with HubSpot or Marketo, there's no need to select
a list; once enabled, captured emails will go straight into your linked account!

Watch your lists grow! It's a thing of beauty. :)

{{ "Once a user has entered an email into the turnstile for a specific video, it will not ask them for their email again. If you never want them to have to enter an email again once they've done so once, check out our [Golden Ticket Lab](http://wistia.com/labs/turnstile-golden-ticket/)." | note }}

## How To Use Turnstile Without an Integrated Email Provider

Unfortunately, we aren't able to integrate with all of the awesome email providers in the world. If that is the case for you, you can follow these simple steps to get the emails returned from Turnstile right into the lists of any provider you'd like. If you navigate to the Media that you want to gather emails from and select *Stats* from the *Video Actions* drop down, you will be brought to the Stats page for that project.

{% post_image hashed_id: "863cb635f0fed31de15c07126bcde2ea76fb8845", class: 'center' %}

Then, scroll all the way to the bottom of the page and select *Export Stats to CSV*—it'll be on the right side. That will send a sweet spreadsheet of all that information right to the email associated with your account, where you can copy and paste them into the email provider of your choice! How awesome is that?!

## Customizing Turnstile

Ever wonder if you could collect something *other* than name and email address?
Our friends over at
[FormKeep](https://formkeep.com/?utm_source=formkeep-guides&utm_medium=web&utm_campaign=custom-form-wistia)
 have made it *super* easy to create a custom Turnstile form! Seriously,
 we 😍 them.

With FormKeep you can add any field you'd like&mdash;phone number, job title,
general emotional well-being, company size. The sky's the limit!

[Head over to their guide](https://formkeep.com/guides/how-to-add-custom-form-to-wistia-video)
for all the fancy details.

Keep in mind, custom form data **will not** currently show up in your Wistia
account, but will be pushed to your FormKeep account.
