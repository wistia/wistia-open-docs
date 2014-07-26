---
title: Email Capture with Wistia Turnstile
category: Public Sharing
layout: post
description: 
  Turnstile makes it easy to add email capture to any video. Build a better email
  list with Wistia Turnstile.
post_intro: 
  <p>Turnstile is a great way to identify high-quality leads using video. Connect
  your account to your favorite email provider, then add an email capture gate to
  any point in your video.</p><p>Setting up Turnstile is a breeze, we'll show
  you how!</p><p>If you use an email provider or marketing automation system
  that rocks but isn't on our current Turnstile list, submit them using <a
  href="https://docs.google.com/a/wistia.com/forms/d/1x2Z2KUdxXKhPYpfzfQJLVq7upAnhryBWZt2Y4IUPiTs/viewform" target="_blank">this form</a>.</p>
---

## Add Turnstile to Your Video

To enable Turnstile on a video in your account, open the [Customize]({{ '/customizing-your-video' | post_url}}) panel and select Turnstile. There you will be able to change the text of the Turnstile prompt, decide when it should appear on your video, and connect Turnstile with your Email Marketing provider.

{% post_image hashed_id: "df0983a7a38675157e5e5668cf89884d954630d9", class: 'center' %}

## Setup Your Email Provider Integration

{% post_image hashed_id: "73af93a7120e830cdc02912871b2ea4ed353cf6c", class: 'center' %}

Once enabled, a video using Turnstile will automatically track the emails entered 
by your viewers in [Wistia analytics]({{ '/embedded-video-analytics' | post_url}}),
but it is most powerful when connected to your favorite email provider.

To set up the connection, first open your [Account Dashboard]({{ '/account-setup#open_your_account_dashboard' | post_url }}).

Find the *Setup an Email Provider* option.

{{ "In order to access the Integrations area, you will need to be logged in as the Owner of the account." | note }}

{% post_image hashed_id: "b286fc2ece8b1cf5898b8bf7b274e315522f505d", class: 'center' %}

Select your provider from the list, and select <span
class="faux_button">Configure</span>. For this example, we will be using Emma.

{% post_image hashed_id: "a5bcdfb0e55cc4fb608a8300c3903d2afc3aa39d", class: 'center' %}

Each provider needs a different set of information - you can see what info is
required on the configuration page. Emma, for example, requires the following
information from your Emma account: your Public API Key, Private API Key, and
Account ID. We also try to include some pointers on where to find this info.

## Use Your Email Provider With Turnstile

Once your account is set up to use an email provider with Turnstile, you can set 
up a Turnstile-enabled embed to collect email addresses, and pass them directly
into a specific group in your connected email provider.

Inside the [Customize screen]({{ '/embed-screen' | post_url }}), find the 
*Turnstile Email Capture* options area. Then select the 
email list (group) you want the email to be added to when viewers submit their 
email. If you're integrating with HubSpot or Marketo, there's no need to select
a list; once enabled, captured emails will go straight into your linked account!

Watch your lists grow! It's a thing of beauty :) 

{{ "Once a user has entered an email into the turnstile for a specific video, it will not ask them for their email again. If you never want them to have to enter an email again once they've done so once, check out our Golden Ticket Lab." | note }}

## How To Use Turnstile Without an Integrated Email Provider

Unfortunately, we aren't able to integrate with all of the awesome email providers in the world. If that is the case for you, you can follow these simple steps to get the emails returned from Turnstile right into the lists of any provider you'd like. If you navigate to the Media that you want to gather emails from and select *Stats* from the *Video Actions* drop down, you will be brought to the Stats page for that project. 

{% post_image hashed_id: "863cb635f0fed31de15c07126bcde2ea76fb8845", class: 'center' %}

Then, scroll all the way to the bottom of the page and select *Export Stats to CSV*—it'll be on the right side. That will send a sweet spreadsheet of all that information right to the email associated with your account, where you can copy and paste them into the email provider of your choice! How awesome is that?!
