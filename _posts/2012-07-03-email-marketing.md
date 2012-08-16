---
title: Email Marketing and Wistia
layout: post
category: Email Marketing
description: Video and email are a match made in heaven. Learn how we integrate with some of the top email marketing platforms to make your campaigns even more poweful in no time.
post_intro: <div class="post_image float_right"><img src="/images/email_marketing_guide.png" alt="email_marketing_guide" width="200px" /></div><p>Email marketing campaigns are great for engaging your prospects with timely messages.  When done right, they can be an excellent driver of business value.  Adding video to the mix is an effective way to increase click-through rates and maximize engagement with your message.  Wistia makes it easy to integrate video with your email-marketing campaigns, as well as measure the results down to the individual viewer, second-by-second.</p><p>After this tutorial you will be able to integrate video into your email marketing campaigns, and understand which recipients are engaged with your message.</p><div class="post_image center"><img src="/images/email_heatmap.png" alt="email_heatmap" width="600px" /></div>
---

## Email Marketing Feature Screencast

<div class="video_embed">
  <iframe width="640" height="400" src="http://app.wistia.com/embed/medias/027bb4b325?controlsVisibleOnLoad=false" frameborder="0" style="border: 2px gray solid;" ></iframe></div>

**Note:** The 'path' to the email marketing dialogue has been updated (it has been split out from the 'embed' dialogue).  See the image below for reference (look for the "Email Marketing" option under the Media Actions menu. Updated screencast to come :)

----

## Using Wistia Email Marketing Integration

Let's get cranking on creating some awesome email campaigns with video!

### Select Your Video

<div class="post_image float_right"><img src="/images/email_integ1.png" alt="email_integ1" /></div>
First, pick the video from your account you want to embed in an email.  You'll need to embed it on your landing page (if you're planning to use one) and also create an email embed.

Start by embedding the video on the landing page you'll be using (if you're having it point to your Wistia Media Page, you're all set).  Follow the embedding steps if you have any trouble: [Embedding Your Video](/public_sharing.html).

Next, select "Email Marketing" from under the Media Actions drop-down menu.

---

### Select Your Email Marketing Provider

<div class="post_image float_right"><img src="/images/email_integ2.png" alt="email_integ2" /></div>

Next, select your provider from the drop-down list.  We've got a whole list of the best in the biz, like [Constant Contact](http://constantcontact.com), [MailChimp](http://mailchimp.com), [Campaign Monitor](http://www.campaignmonitor.com), and [MadMimi](http://madmimi.com).

After you choose your email marketing provider, you can customize the settings for your campaign.

<div class="post_image center"><img src="/images/email_integ_screen.png" alt="email_integ_screen" /></div>

Thumbnail width refers to the size of the thumbnail image in your email.  Do you want it to dominate the email? Or should it be playing 3rd fiddle?  450px is our standard width, but you can change it as you see fit.

Link to means where people will end up after clicking the thumbnail image.  By default, it's a public link to the media in your Wistia account. But if you want to set up a landing page instead, just change the link here.  One thing to note is that wherever this points, the video HAS to be embedded on that page in order to track the stats correctly.

---

### Create the Campaign

Once you've got your settings dialed in, copy the "video merge tag", and paste it into the HTML editor for your email provider.  Voila! The thumbnail image will appear, attached to a link to your video.  And in the background, we'll be collecting stats on which email addresses viewed your videos (available in the Public Stats area of your account).

<div class="post_image center"><img src="/images/email_partial_heatmap.png" alt="email_partial_heatmap" /></div>

---

## Email Provider List

This is the full list of providers we currently integrate with:

*  [AWeber](http://www.aweber.com)
*  [Blue Hornet](http://www.bluehornet.com)
*  [Campaign Monitor](http://www.campaignmonitor.com)
*  [Constant Contact](http://www.constantcontact.com/index.jsp.html)
*  [Emailvision](http://www.emailvision.com)
*  [Emma](http://myemma.com)
*  [GetResponse](http://www.getresponse.com)
*  [iContact](http://go.icontact.com)
*  [Infusion Soft](http://www.infusionsoft.com)
*  [Lyris](http://lyris.com)
*  [MadMimi](https///madmimi.com)
*  [Marketo](http://www.marketo.com)
*  [MailChimp](http://mailchimp.com)
*  [Pardot](http://www.pardot.com)
*  [Sendible](http://sendible.com)
*  [Vertical Response](http://www.verticalresponse.com)

---

## Email Clients That Support Dynamic Links

The following is a table that includes the email clients we have encountered that support dynamic links, and the merge tags needed to take advantage of them.

<table>
  <tbody>
    <tr>
      <th>Provider</th>
      <th>URL Email Merge Tag</th>
    </tr>
    <tr>
      <td>AWeber</td>
      <td >{!email}</td>
    </tr>
    <tr>
      <td>Blue Hornet</td>
      <td >%%to_email%%</td>
    </tr>
    <tr>
      <td>Campaign Monitor</td>
      <td ><pre>[email]</pre></td>
    </tr>
    <tr>
      <td>Constant Contact</td>
      <td >$SUBSCRIBER.EMAIL$</td>
    </tr>
    <tr>
      <td>Emailvision</td>
      <td ><pre>[EMV FIELD]EMAIL[EMV /FIELD]</pre></td>
    </tr>
    <tr>
      <td>Emma</td>
      <td >Not Available</td>
    </tr>
    <tr>
      <td>GetResponse</td>
      <td ><pre>[email]</pre></td>
    </tr>
    <tr>
      <td>iContact</td>
      <td ><pre>[email]</pre></td>
    </tr>
    <tr>
      <td>Infusionsoft</td>
      <td >~Contact.Email~</td>
    </tr>
    <tr>
      <td>MailChimp</td>
      <td >%%URL:EMAIL%%</td>
    </tr>
    <tr>
      <td>Marketo</td>
      <td >{% raw %}{{lead.Email Address:default=noemail}}{% endraw %}</pre></td>
    </tr>
    <tr>
      <td>Pardot</td>
      <td >%%email%%</td>
    </tr>
    <tr>
      <td>Vertical Response</td>
      <td >{EMAIL_ADDRESS}</td>
    </tr>
    <tr>
      <td>ExactTarget</td>
      <td >%%Email Address%%</td>
    </tr>
  </tbody>
</table>

---

## Using Dynamic Links in Email Marketing Services

### Step 1: Upload and embed the video

As mentioned above, the video that you wish people to view needs to be viewable at a publicly accessible web page.  To do this, you will need to upload your video to your Wistia account and then embed it on a page on your website.  For instructions on how to do that see the following Quickstart articles:

* [How to upload](/upload-video.html)
* [How to embed](/public_sharing.html)

---

### Step 2: Construct the dynamic link

The way that Wistia is able to attach views of your video on your website to individual email addresses is through the use of a special hyper-link called a dynamic link.  It is called a dynamic link because it uses the mail merge capabilities of your email marketing provider to create an personalized URL for every person in your mailing list.  The dynamic link created here is what will be input into your email marketing tool to create the link that your users will click on to view your video.

First, start with the URL of the page where you embedded your video.  As an example, let's say your video was embedded on the following page:

<span class="code">http://wistia.com/solutions/video_marketing</span>

Next, we add a [query string parameter](http://en.wikipedia.org/wiki/Query_string.html) to this URL where the user's email will be passed.  The query string parameter to add here is:

<span class="code">?wemail=</span>

Which gives a resulting URL of:

<span class="code">http://wistia.com/solutions/video_marketing?wemail=</span>

If the URL where your video was embedded already contains a query string, i.e.:

<span class="code">http://wistia.com/solutions/video_marketing?test=true</code>

then simply add an ampersand before the <span class="code">wemail=</span>:

<span class="code">http://wistia.com/solutions/video_marketing?test=true&wemail=</span>

---

### Step 3: Finish and use the dynamic link

The final step to finish the dynamic link is to add the email merge tag from your email marketing tool.  A merge tag is a special character that your email marketing client uses to personalize your email for each individual recipient.

It is necessary to find out:

1.  Whether your email marketing tool supports dynamic links (i.e. merging user data into URLs)
2.  What the URL email merge tag is for your email marketing tool

We have compiled a growing list of email marketing tools and created a table to show whether they support dynamic links and if so what the URL email merge tag is for that tool. [See the list](/dynamic_link.html).

Let's assume, for an example, that we are using Mail Chimp as our email marketing tool.  Mail Chimp does support dynamic links and the URL email merge tag is:

<span class="code">*|URL:EMAIL|*</span>

To complete the dynamic link, we simply append this URL email merge tag to the end of the link created in Step #2.  The result is:

<div class="code"><pre>http://wistia.com/solutions/video_marketing?test=true&wemail=*|URL:EMAIL|*</pre></div>

This is the link that can be used in your email marketing campaign.  Your finished link in HTML might look something like the following:

<div class="code"><pre>&lt;a href="http://wistia.com/solutions/video_marketing?test=true&wemail=*|URL:EMAIL|*"&gt;See our short 30 second video!&lt;/a&gt;</pre></div>

---

### Results

When someone clicks the dynamic link in your email campaign, they will be taken to the page on your site containing the embedded video.  Wistia will capture the user's email address and will associate it with that person's viewing of video on your website.

When you view the statistics for your video you will see analytics for each person who clicked through from your email campaign as shown in the following example:

<div class="post_image center"><img src="/images/email-heatmap.png" alt="email-heatmap" width="600px" /></div>

This data can also be exported to a spreadsheet as well using Wistia's [Stats Export feature](/stats-api.html) to help you more easily sort through large data sets.

By having a true read on individual viewer engagement, you will know who is interested and who is not based on how each viewer watched your content and how much time they spent doing so.  This information allows you to score (rank) your leads, target future follow-up with pin-point precision, and calculate the return on investment of your campaigns.

---
