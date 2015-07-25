---
title: Using the Wistia / Pardot Connector
layout: post
description: A guide to using the powerful Wistia / Pardot connector.
post_intro: Use <a href="http://pardot.com">Pardot</a>? Use Wistia? Want to meld them together to execute a video-driven marketing automation strategy the likes of which this world has never seen? You're in the right place, friend.
footer: 'for_intermediates'
category: integrations
---

## Get Set Up

First things first, let's connect the puzzle pieces.

What you'll need:

- A Pardot account
- A Wistia account on the Enterprise plan ('cause you're a rather enterprising individual)
- a video embedded on your website

In Wistia, go to the Integrations sections of your account settings. Enter the credentials you use to login to Pardot, along with your Pardot API key. Save to complete the integration.

Read on for details about what you can do with your newfound powers.

## Track video-related events from your website in Pardot

If you have a video embedded in your website, you can see in Pardot...

Just be sure that you have Pardot's tracking code on the page, and that your Wistia embed code has the `wistia_embed` class (as it should by default).

## Collect contact information with Turnstile

With just a Wistia account, you've always been able to generate new leads and identify existing viewers... but now that you have the Wistia+Pardot integration set up, your life just got way easier.

Now when a person enters their email address (or _name_ and email address) into Turnstile, that information will automatically go into Pardot. Cool.

## Add Video to your email campaigns

Get some free & fancy email design templates


## Automagically send the right emails to the right people

## Configure the Wistia Pardot Connector

[Pardot](http://pardot.com) is a very powerful marketing automation system. We
worked with them to develop a Wistia/Pardot connector, so that Wistia data can
be viewed from your Pardot dashboard! Let's check out how to get it set up.

### Log In to Pardot

{% post_image hashed_id: 'e7639b5b3e1dad955cc751a82b6afe618706d6d6', class: 'center' %}

Get started by logging in to Pardot. That's it, step 1 complete!

### Add The Connector

Under the *Admin* tab, find the *Connectors* option.

{% post_image hashed_id: 'dca774847b6ad9986c13859fe9bf0c4e02cf3b81', class: 'center' %}

Click the "Add Connector" button. Find **Wistia** under the *Video Connectors* list.

{% post_image hashed_id: '955e1e1838dd3d58845b7d28f0804d4843a3f061', class: 'center' %}

### Configure Connector

{% post_image hashed_id: 'ae4f214b7f96282748dbfd9edf5b0beed6c5bcde', class: 'center' %}

Check the "Show Video Play Heatmaps" box, and then fill in your API Password
and Public Token from Wistia ([here's a guide on how to find those]({{ '/account-setup#api_access' | post_url }})).


Select the *verify connector* link.
