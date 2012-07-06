---
title: Using Email Marketing and Wistia
layout: post
category: Email Marketing
---

`<style float-right>`[{{:email_marketing_guide.png}}]({{ site.url }}/{{ page.lang }}/email_marketing.html)`</style>`
\\
\\
Email marketing campaigns are great for engaging your prospects with timely messages.  When done right, they can be an excellent driver of business value.  Adding video to the mix is an effective way to increase click-through rates and maximize engagement with your message.  Wistia makes it easy to integrate video with your email-marketing campaigns, as well as measure the results down to the individual viewer, second-by-second.
\\
\\
After this tutorial you will be able to integrate video into your email marketing campaigns, and understand which recipients are engaged with your message.
\\
\\
\\
\\
\\
\\
`<style center>`[{{:email_heatmap.png}}]({{ site.url }}/{{ page.lang }}/email_marketing.html)`</style>`

## Don't Have Time for Readin'?

Check out our Email Marketing Integration screencast, or continue on below for detailed instructions with images.
\\
\\
`<style center>`
`<html>`
`<iframe width="640" height="400" src="http://app.wistia.com/embed/medias/027bb4b325?controlsVisibleOnLoad=false" frameborder="0" style="border: 2px gray solid;" >``</iframe>``</html>``</style>`
\\
\\

**Note:** The 'path' to the email marketing dialogue has been updated (it has been split out from the 'embed' dialogue).  See the image below for reference (look for the "Email Marketing" option under the Media Actions menu. Updated screencast to come :)
\\
\\
----
\\




# Using Wistia Email Marketing Integration

Let's get cranking on creating some awesome email campaigns with video!

## Step 1: Select Your Video

`<style float-right>`[{{:email_integ1.png}}]({{ site.url }}/{{ page.lang }}/email_marketing.html)`</style>`
First, pick the video from your account you want to embed in an email.  You'll need to embed it on your landing page (if you're planning to use one) and also create an email embed.  
\\
\\
Start by embedding the video on the landing page you'll be using (if you're having it point to your Wistia Media Page, you're all set).  Follow the embedding steps if you have any trouble: [Embedding Your Video]({{ site.url }}/{{ page.lang }}/public_sharing.html).
\\
\\
Next, select "Email Marketing" from under the Media Actions drop-down menu.
\\
\\
## Step 2: Select Your Email Marketing Provider

`<style float-right>`[{{:email_integ2.png}}]({{ site.url }}/{{ page.lang }}/email_marketing.html)`</style>`
\\
\\
\\
Next, select your provider from the drop-down list.  We've got a whole list of the best in the biz, like [Constant Contact]({{ site.url }}/{{ page.lang }}/http://constantcontact.com.html), [MailChimp]({{ site.url }}/{{ page.lang }}/http://mailchimp.com.html), [Campaign Monitor]({{ site.url }}/{{ page.lang }}/http://www.campaignmonitor.com/.html), and [MadMimi]({{ site.url }}/{{ page.lang }}/http://madmimi.com.html).
\\
\\
\\
\\
\\
`<style float-right>`[{{:email_integ_screen.png}}]({{ site.url }}/{{ page.lang }}/email_marketing.html)`</style>`After you choose your email marketing provider, you can customize the settings for your campaign.  
Thumbnail width refers to the size of the thumbnail image in your email.  Do you want it to dominate the email? Or should it be playing 3rd fiddle?  450px is our standard width, but you can change it as you see fit.
\\
\\
Link to means where people will end up after clicking the thumbnail image.  By default, it's a public link to the media in your Wistia account. But if you want to set up a landing page instead, just change the link here.  One thing to note is that wherever this points, the video HAS to be embedded on that page in order to track the stats correctly.
\\
\\
## Create the Campaign

Once you've got your settings dialed in, copy the "video merge tag", and paste it into the HTML editor for your email provider.  Voila! The thumbnail image will appear, attached to a link to your video.  And in the background, we'll be collecting stats on which email addresses viewed your videos (available in the Public Stats area of your account).
\\
\\
`<style center>`[{{:email_partial_heatmap.png}}]({{ site.url }}/{{ page.lang }}/email_marketing.html)`</style>`
\\
\\
\\
\\

## Email Provider List

This is the full list of providers we currently integrate with:

*  [AWeber]({{ site.url }}/{{ page.lang }}/http://www.aweber.com/.html)

*  [Blue Hornet]({{ site.url }}/{{ page.lang }}/http://www.bluehornet.com/.html)

*  [Campaign Monitor]({{ site.url }}/{{ page.lang }}/http://www.campaignmonitor.com/.html)

*  [Constant Contact]({{ site.url }}/{{ page.lang }}/http://www.constantcontact.com/index.jsp.html)

*  [Emailvision]({{ site.url }}/{{ page.lang }}/http://www.emailvision.com/.html)

*  [Emma]({{ site.url }}/{{ page.lang }}/http://myemma.com/.html)

*  [GetResponse]({{ site.url }}/{{ page.lang }}/http://www.getresponse.com/.html)

*  [iContact]({{ site.url }}/{{ page.lang }}/http://go.icontact.com/.html)

*  [Infusion Soft]({{ site.url }}/{{ page.lang }}/http://www.infusionsoft.com/.html)

*  [Lyris]({{ site.url }}/{{ page.lang }}/http://lyris.com/.html)

*  [MadMimi]({{ site.url }}/{{ page.lang }}/https///madmimi.com/.html)

*  [Marketo]({{ site.url }}/{{ page.lang }}/http://www.marketo.com/.html)

*  [MailChimp]({{ site.url }}/{{ page.lang }}/http://mailchimp.com/.html)

*  [Pardot]({{ site.url }}/{{ page.lang }}/http://www.pardot.com/.html)

*  [Sendible]({{ site.url }}/{{ page.lang }}/http://sendible.com/.html)

*  [Vertical Response]({{ site.url }}/{{ page.lang }}/http://www.verticalresponse.com/.html)

\\
\\
## Email Clients That Support Dynamic Links

The following is a table that includes the email clients we have encountered that support dynamic links, and the merge tags needed to take advantage of them.
\\
\\
 | Provider          | Supports Dynamic Links? | URL Email merge Tag                                             |              
 | --------          | ----------------------- | -------------------                                             |              
 | AWeber            | Yes                     | {!email}                                                        |              
 | Blue Hornet       | Yes                     | `<nowiki>`%%to_email%%`</nowiki>`                                   |              
 | Campaign Monitor  | Yes                     | [email]                                                         |              
 | Constant Contact  | Yes*                    | $SUBSCRIBER.EMAIL$                                              |              
 | Emailvision       | Yes                     | [EMV FIELD]EMAIL[EMV /FIELD]                                    |              
 | Emma              | No                      | N/A                                                             |              
 | GetResponse       | Yes                     | `<html>`[email]({{ site.url }}/{{ page.lang }}/email.html)`</html>` |              
 | iContact          | Yes                     | [email]                                                         |              
 | Infusionsoft      | Yes                     | ~Contact.Email~                                                 |              
 | MailChimp         | Yes                     | *%%                                                             | %%URL:EMAIL%% | %%* | 
 | Marketo           | Yes                     | `<nowiki>`{{lead.Email Address:default=noemail}}`</nowiki>`         |              
 | Pardot            | Yes                     | `<nowiki>`%%email%%`</nowiki>`                                      |              
 | Vertical Response | Yes                     | {EMAIL_ADDRESS}                                                 |              
 | ExactTarget       | Yes                     | `<nowiki>`%%Email Address%%`</nowiki>`                              |              
\\
\\
\\
## Don't Use a Supported Provider?

Not to worry.  If you can determine the dynamic merge tag information for your viewer's email address (similar to the tags we have above) you can create a custom email marketing tag.
\\
\\
Once you tracked down the merge tag information, follow the steps below to create your custom email marketing 'embed code'.
\\
\\
## Using Dynamic Links in Email Marketing Services

### Step #1: Upload and embed the video

As mentioned above, the video that you wish people to view needs to be viewable at a publicly accessible web page.  To do this, you will need to upload your video to your Wistia account and then embed it on a page on your website.  For instructions on how to do that see the following Quickstart articles:


*  [How to upload]({{ site.url }}/{{ page.lang }}/upload-video.html)

*  [How to embed]({{ site.url }}/{{ page.lang }}/public_sharing.html)

### Step #2: Construct the dynamic link

The way that Wistia is able to attach views of your video on your website to individual email addresses is through the use of a special hyper-link called a dynamic link.  It is called a dynamic link because it uses the mail merge capabilities of your email marketing provider to create an personalized URL for every person in your mailing list.  The dynamic link created here is what will be input into your email marketing tool to create the link that your users will click on to view your video.

First, start with the URL of the page where you embedded your video.  As an example, let's say your video was embedded on the following page:

`http://wistia.com/solutions/video_marketing`

Next, we add a [query string parameter]({{ site.url }}/{{ page.lang }}/http://en.wikipedia.org/wiki/Query_string.html) to this URL where the user's email will be passed.  The query string parameter to add here is:

`?wemail=`

Which gives a resulting URL of:

`http://wistia.com/solutions/video_marketing?wemail=`

If the URL where your video was embedded already contains a query string, i.e.:

`http://wistia.com/solutions/video_marketing?test=true`

then simply add:

`&wemail=`

to the end to get:

`http://wistia.com/solutions/video_marketing?test=true&wemail=`
\\
\\
### Step #3: Finish and use the dynamic link

The final step to finish the dynamic link is to add the email merge tag from your email marketing tool.  A merge tag is a special character that your email marketing client uses to personalize your email for each individual recipient.  

It is necessary to find out:
 1.  Whether your email marketing tool supports dynamic links (i.e. merging user data into URLs)
 2.  What the URL email merge tag is for your email marketing tool

We have compiled a growing list of email marketing tools and created a table to show whether they support dynamic links and if so what the URL email merge tag is for that tool.  You can see the list by [clicking here]({{ site.url }}/{{ page.lang }}/dynamic_link.html).

If your email marketing tool is not included on the list, feel free to email us at support@wistia.com, let us know what email marketing tool you use, and we'll do the research for you (and add it to our ever growing list). 

Let's assume, for an example, that we are using Mail Chimp as our email marketing tool.  Mail Chimp does support dynamic links and the URL email merge tag is:

`*|URL:EMAIL|*`

To complete the dynamic link, we simply append this URL email merge tag to the end of the link created in Step #2.  The result is:

`http://wistia.com/solutions/video_marketing?test=true&wemail=*|URL:EMAIL|*`

This is the link that can be used in your email marketing campaign.  Your finished link in HTML might look something like the following:

`<a href="http://wistia.com/solutions/video_marketing?test=true&wemail=*|URL:EMAIL|*">`See our short 30 second video!`</a>`

### Results

When someone clicks the dynamic link in your email campaign, they will be taken to the page on your site containing the embedded video.  Wistia will capture the user's email address and will associate it with that person's viewing of video on your website.  

When you view the statistics for your video you will see analytics for each person who clicked through from your email campaign as shown in the following example:

`<style center>`{{:email-heatmap.png?750|}}`</style>`

This data can also be exported to a spreadsheet as well using Wistia's [Stats Export feature]({{ site.url }}/{{ page.lang }}/stats-api.html) to help you more easily sort through large data sets.

By having a true read on individual viewer engagement, you will know who is interested and who is not based on how each viewer watched your content and how much time they spent doing so.  This information allows you to score (rank) your leads, target future follow-up with pin-point precision, and calculate the return on investment of your campaigns.
\\
\\



\\
\\
