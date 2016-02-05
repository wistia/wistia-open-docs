---
title: Email Marketing and Wistia
layout: post
category: embed and share
description: Learn how we integrate with some of the top email marketing platforms to make your campaigns even more powerful in no time.
post_intro: <p>Email marketing campaigns are great for engaging your prospects with timely messages.  When done right, they can be an excellent driver of business value.</p><p>Adding video to the mix is an effective way to increase click-through rates and maximize engagement with your message.  Wistia makes it easy to integrate video with your email-marketing campaigns, as well as measure the results down to the individual viewer, second-by-second.</p><p>After this tutorial you will be able to integrate video into your email marketing campaigns, and understand which recipients are engaged with your message.</p><img class="center intro_image post_image" src="http://embed.wistia.com/deliveries/97291f1a3b3898ec951a80296504441a9b3d0ce0.png" width="600" alt="email_heatmap" />
footer: 'for_intermediates'
---

{% wistia_embed hashed_id: a2kxmpew6y %}

----

## Using Wistia Email Marketing Integration

Let's get cranking on creating some awesome email campaigns with video!

Note: we created specific documentation for our most popular merge tag options, [MailChimp]({{ '/mailchimp' | post_url }}) and [Campaign Monitor]({{ '/campaign-monitor' | post_url }}). If you are using those platforms, check out the specific documentation!

### Select Your Video

First, pick the video from your account you want to embed in an email.  You'll
need to embed it on your landing page (if you're planning to use one) and also
create an email embed.

Start by embedding the video on the landing page you'll be using (if you're
having it point to your Wistia Media Page, you're all set).  

If you are having any trouble, check out our
[customizing]({{ '/customizing-your-video' | post_url }}) and [embedding]({{ '/embedding' | post_url }})
articles for more.

{% post_image hashed_id: '040563313d58c1fd7e00a8f9daae83061838ddc0', class: 'center' %}

Next, select *Embed & Share* from the <span class="action_menu">Video Actions</span> menu.

{{ "This also works with playlist embeds, though you will need to select an email marketing embed for a specific video." | note }}


---

### Select Your Email Marketing Provider

Select **Link in Email Campaign** tab, in the *Embed & Share* modal, and choose
your provider from the drop-down list.  We've got a whole list of the best in
the biz, like [Constant Contact](http://constantcontact.com),
[MailChimp](http://mailchimp.com),
[Campaign Monitor](http://www.campaignmonitor.com),
and [Mad Mimi](http://madmimi.com). Check out our
[integrations page]({{ '/integrations' | post_url}}) for the full list!

{% post_image hashed_id: '1a27c08517115d9f846a8e6f0f36c38a0e27d5a1', class: 'center' %}

After you choose your email marketing provider, you can customize the settings
for your campaign.

**Thumbnail Size** refers to the size of the thumbnail image in your email.  Do
you want it to dominate the email? Or should it be playing 3rd fiddle? `450px`
is our standard width, but you can change it as you see fit.

**Links to** means where people will end up after clicking the thumbnail image.  
By default, it's a public link to the media in your Wistia account. If you
want to set up a landing page instead, just change the link here.  

{{ "The video must be embedded at the Links to URL to track the stats correctly." | note }}

---

### Create the Campaign

Once you've got your settings dialed in, copy the video merge tag, and paste
it into the HTML editor for your email provider. It may show up as just the
merge tag - try the *preview* mode in your email campaign provider to see how
it displays. When you are satisfied, send it out to your loving audience!


Voila! The thumbnail image will appear in your email, linked to the page you
specified with your video. In the background, we'll be collecting stats on
which viewers in your list viewed the video (available in the
[Public Stats]({{ '/embedded-video-analytics' | post_url }}) area
of your account).

{% post_image hashed_id: '44087ef2759f48e1b04d72cac7ba90e058f0f388', class: 'center' %}

## Advanced Email Marketing Integration

Wistia provides a good smattering of email merge tags right within the app. But if
you'd like the construct your own, read on!

### Using Dynamic Links in Email Marketing Services

{{ "Using the <strong>Link in Email Campaign</strong> steps outlined above? You're all set, then! No need to construct dynamic links." | alert }}

### Step 1: Upload and embed the video

As mentioned above, the video that you wish people to view needs to be viewable
at a publicly accessible web page. To do this, you will need to upload your
video to your Wistia account and then embed it on a page on your website. For
instructions on how to do that see the following help pages:

* [How to upload]({{ '/upload-video' | post_url }})
* [How to embed]({{ '/embedding' | post_url }})

### Step 2: Construct the dynamic link

Wistia attaches views of your video on your website to individual email
addresses through the use of a special hyperlink called a *dynamic link*.
Dynamic links use the mail merge capabilities of your email marketing provider
to create a personalized URL for every person in your mailing list.

The dynamic link we make here should be input into your email marketing tool to create
the link that your users will click on to view your video. Then we can start
tracking!

First, start with the URL of the page where you embedded your video. As an
example, let's say your video was embedded on the following page:

<code class="full_width">http://wistia.com/library/shooting-video-with-an-iphone</code>

Next, we add a [query string parameter](http://en.wikipedia.org/wiki/Query_string.html)
to this URL where the user's email will be passed. The query string parameter
to add here is: `?wemail=`

Which gives a resulting URL of:

`http://wistia.com/library/shooting-video-with-an-iphone?wemail=`

If the URL where your video was embedded already contains a query string, i.e.:

`http://wistia.com/library/shooting-video-with-an-iphone?test=true`

then simply add an ampersand before the `wemail=`:

`http://wistia.com/library/shooting-video-with-an-iphone?test=true&wemail=`

### Step 3: Finish and use the dynamic link

The final step to finish the dynamic link is to add the email merge tag from
your email marketing tool. A merge tag is a special character that your email
marketing client uses to personalize your email for each individual recipient.

It is necessary to find out:

1.  Whether your email marketing tool supports dynamic links (i.e. merging user data into URLs)
2.  What the URL email merge tag is for your email marketing tool

We have compiled a [growing list]({{ '/email-marketing#email_clients_that_support_dynamic_links' | post_url }})
of email marketing tools, and we've created a table what the URL email merge tag
 is for that tool.

Let's assume, for an example, that we are using INinbox as our email
marketing tool.  The URL email merge tag for INinbox is: `##email##`

To complete the dynamic link, we simply append this URL email merge tag to the
end of the link created in Step #2.  The result is:

`http://wistia.com/library/shooting-video-with-an-iphone?test=true&wemail=##email##`

This is the link that can be used in your email marketing campaign. Your
finished link in HTML might look something like the following:

`&lt;a href="http://wistia.com/library/shooting-video-with-an-iphone?test=true&wemail=##email##"&gt;See our short 30 second video!&lt;/a&gt;`


### The Results

When someone clicks the dynamic link in your email campaign, they will be taken
to the page on your site containing the embedded video. Wistia will capture
the user's email address and associate it with that person's viewing session on
your website.

When you view the [stats]({{ '/embedded-video-analytics#media_level_trends' | post_url }})
for your video you'll see analytics for each person who clicked through from
your email campaign as shown in the following example:

{% post_image hashed_id: '96221f9edb1dab5794bdca3c634426dfb1d48189', class: 'center' %}

You can see this data in the [Audience page](https://my.wistia.com/stats/audience) too!

Additionally, this data can also be exported to a spreadsheet using the
[export to CSV]({{ '/embedded-video-analytics#exporting_media_stats' | post_url }})
feature on the stats media page, or via Wistia's [Stats API]({{ '/stats-api' | post_url }}),
to help you more easily sort through large data sets.

This true read on individual viewer engagement allows you to know who your most
interested viewers are. From there you can score your leads, track future
communications with pin-pointed precision, and calculate the ROI of your
campaigns.

### Email Clients That Support Dynamic Links

The following is a table that includes the email clients we have encountered
that support dynamic links, and the merge tags needed to take advantage of them.
Some of them are not included in the product itself - directions for use are
given in the previous section.

Provider  |  URL Email Merge Tag
----------|----------------------
AWeber    |  `{!email}`
Blue Hornet  |  `%%to_email%%`
Campaign Monitor | `[email]`
ClearWebb | `$email`
Constant Contact | `$SUBSCRIBER.EMAIL$`
Emailvision  |  `[EMV FIELD]EMAIL[EMV /FIELD]`
Emma  | `[[email]]`
GetResponse  |  `[email]`
HubSpot  | `{ contact.email }`
iContact  |  `[email]`
Infusionsoft  |  `~Contact.Email~`
Mad Mimi | `(email)`
MailChimp  |  `*|URL:EMAIL|*`
Marketo  |  `{lead.Email Address:default=noemail}`
ONTRAPORT v2.4 | `[E-mail]`
ONTRAPORT v3.0+ | `[Email]`
Pardot  |  `%%email%%`
Vertical Response  |  `{EMAIL_ADDRESS}`
ExactTarget  |  `%%Email Address%%`
Convio Luminate | `[[S1:primary_email]]`
Streamsend | `{email_address}`
INinbox | `##email##`
SendGrid | [see more](#email_merge_tags_with_sendgrid)

### Email Merge Tags With SendGrid

Thanks to some research from our friend Steven Tell of [SpudFlower](http://spudflower.com/),
here's how to use dynamic merge tags with [SendGrid](http://sendgrid.com):

* Add a column into your Recipient List with the unique value (in this case, email address)
* You can use the name of that column as part of the link

So if your recipient list looked like this:

NAME | EMAIL_ADDRESS | REFERRAL_ID
-----|---------------|------------
Jayson | support@sendgrid.com | 12345

You can now write a link like:

`<a href="www.website.com?wemail=[EMAIL_ADDRESS]">`

And that would be dynamically replaced to:

`<a href="www.website.com?wemail=support@sendgrid.com">`

Pretty neat! Thanks also to Jayson at SendGrid support!

{{ "Some email providers, like Gmail or Outlook, might not play as nicely with HTML as others. For these, you can achieve similar results by using the image tool to create an image in the body of an email and then linking that to the page with your Wistia video on it. This will create the same appearance as the email marketing embeds mentioned above, but will unfortunately not track emails along with the views in View Stream." | note }}
