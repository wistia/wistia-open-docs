---
title: Using Wistia With ExpressionEngine
layout: post
description: See how to embed video into ExpressionEngine
category: Integrations
---

{% post_image hashed_id: 'aaffdd3319f6a532ecb071811f2fd071e57a0a46', width: 200, class: 'integration_logo float_left' %}

ExpressionEngine is a pretty flexible CMS - there are a bunch of different ways to safely embed Wistia videos into an ExpressionEngine template. The approach is mostly up to the user/developer.

<div class="expert_tip expression_engine">
  <h4><i class='icon-thumbs-up'></i> Expert Tips!</h4>
  <p>ExpressionEngine expert <strong>Kyle Cotter</strong>, founder of <a href='http://cotterinteractive.com'>Cotter Interactive</a>, showed us how embedding is done in ExpressionEngine.</p>
</div>

## Set Up a Channel & Custom Fields

The first step is to create a *channel*, which will give the embedder access to custom fields. The next steps are customized based on your preference.

{% post_image hashed_id: 'fe326f4062b82ac1aa1a0d9d9fa1e02778064a28', class: 'center' %}

This image shows the three potential methods:

1. Using the Media ID
2. Using the [Antenna Plugin](http://devot-ee.com/add-ons/antenna) and passing in the Wistia video URL
3. Pasting in the embed code

<div class="expert_tip expression_engine">
  <h4><i class='icon-thumbs-up'></i> Choosing the Right Method</h4>
  <p>If you can use iframe embeds, the <em>Media ID (1)</em> approach is easy and clean.</p>
  <p>If you are using Wistia plugins, the <em>full embed code (3)</em> approach is probably best.</p>
</div>

## Put the Custom Fields to Work

### Media ID Approach

{% codeblock return.json %}
{exp:channel:entries channel="wistia_demo"}
  &lt;h1&gt;Passing Wistia ID&lt;/h1&gt;
  &lt;iframe src="http://fast.wistia.com/embed/iframe/{embed_id}?controlsVisibleOnLoad=true&version=v1" /&gt;
{/exp:channel:entries}
{% endcodeblock %}

This approach takes the Media ID and adds it to the iframe template.

### Antenna Plugin Method

{% codeblock return.json %}
{exp:channel:entries channel="wistia_demo"}
  {exp:antenna url='{antenna_method}' max_width="640" max_height="360" cache_minutes="120" wmode="transparent|opaque|window"}
    &lt;h2&gt;{video_title}&lt;/h2&gt;
    {embed_code}
  {/exp:antenna}
{/exp:channel:entries}
{% endcodeblock %}

### Embed Code Approach

{% codeblock return.json %}
{exp:channel:entries channel="wistia_demo"}
  &lt;h1&gt;Copy/Paste the Embed Code&lt;/h1&gt;
  {full_embed}
{/exp:channel:entries}
{% endcodeblock %}
