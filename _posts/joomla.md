---
title: Using Wistia With Joomla
layout: post
description: Having trouble getting your Wistia video to work in your Joomla environment? Look no further, all your answers are here.
category: Integrations
---

{{ "This document is pretty out of date at this point. If you're using a newer version of Joomla and would like to help us get this doc back into shape, get in touch!" | warning }}

{% post_image hashed_id: 'cba39e8bef81a259f909e0b67919fe97d7e417a5', width: 200, class: 'integration_logo float_left' %}

The best way to embed in Joomla is to use the TinyMCE editor advanced settings to prevent deletion of iframes.

In the 'Plugin Parameters' area of your Joomla account, enter the 'Media Support' section, and then select "yes" for 'Allow iframes'.  This will enable iframe support for your Joomla editor.  Then, copy-and-paste the Wistia iframe embed code for the video you'd like to add to a Joomla page into the Joomla editor.

### API/SEO Embed Codes

{% post_image hashed_id: '66cdfb4f7ec69d733395d3b329680aaf2f3b9be3', width: 320, class: 'float_right' %}

In the 'Plugin Parameters' area of your account, enter the 'Media Support' section, and then make the following changes (refer to image on the right).  Turn 'Strict XHTML Flash' to NO, HTML5 Audio/Video to YES, and Object/Embed elements to YES.

Then, in the 'Editor Parameters', ensure that 'Allow Javascript' is set to YES.

{{ "This documentation article was sourced from a thread on <a href='http://www.joomlacontenteditor.net/forum/jce-editor/code-is-changing-between-code-wysiwyg-views/47964' target='_blank'>Joomla support</a>.  Try <a href='http://www.joomlacontenteditor.net/support/faq/item/video-removed-on-saving' target='_blank' >this thread</a> if you are still having trouble.<br/><br/>Images of the Joomla backend were taken from that article as well." | note }}
