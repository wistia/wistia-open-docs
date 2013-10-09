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
  you how!</p>
---

## Setup Your Email Provider Integration

{% post_image hashed_id: "d6166e343c3cebdda782d3b8a8370a8d782d9a90", class: 'center' %}

Once enabled, a video using Turnstile will automatically track the emails entered 
by your viewers in [Wistia analytics]({{ '/embedded-video-analytics' | post_url}}),
but it is most powerful when connected to your favorite email provider.

To set up the connection, first open your [Account Dashboard]({{ '/account-setup#open_your_account_dashboard' | post_url }}).

Find the *Setup an Email Provider* option.

{{ "In order to access the Integrations area, you will need to be logged in as the Owner of the account." | note }}

{% post_image hashed_id: "1a41347bfeb5390f3ed666167b39b751e565fe2b", class: 'center' %}

Select your provider from the list, and select <span
class="faux_button">Configure</span>. For this example, we will be using Emma.

{% post_image hashed_id: "32654d43f624fd3606746d382c86ff1dd01b8a86", class: 'center' %}

Each provider needs a different set of information - you can see what info is
required on the configuration page. Emma, for example, requires the following
information from your Emma account: your Public API, Private Key, and Account
ID. We also try to include some pointers on where to find this info.

## Use Your Email Provider With Turnstile

Once your account is set up to use an email provider with Turnstile, you can set 
up a Turnstile-enabled embed to collect email addresses, and pass them directly
into a specific group in your connected email provider.

Inside the [Customize screen]({{ '/embed-screen' | post_url }}), find the 
*Turnstile Email Capture* options area. Select *Enable*, and then select the 
email list (group) you want the email to be added to when viewers submit their 
email.

Watch your lists grow! It's a thing of beauty :) 
