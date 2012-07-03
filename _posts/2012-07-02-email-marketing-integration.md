# Integrating video into email marketing

Integrating video into email marketing campaigns is the most effective way to increase click-through and maximize engagement with your message.  Wistia provides an easy way to integrate video with your email-marketing campaigns, as well as measure the results down to the individual viewer, second-by-second.

After this simple tutorial you will be able to integrate video into your email marketing campaigns, and understand which recipients are engaged with your message.  For each person in your campaign that watches your video, you will have a video heatmap associated with their email address like the one shown below:

`<style center>`{{:email-heatmap.png?750|}}`</style>`

## Background

While it would be ideal to embed a video directly into an email and have it play for the recipient inside their email client, security constraints on the email client side usually prevent rendering video inside the email.  As a result, the best way to use a video in your email marketing campaign is to include a link to a landing page where the video is embedded.  This link may be in the form of a text link indicating the user will see a video when they click, or it may be an image link which shows an image of the video indicating it can be played.

## Step #1: Upload and embed the video

As mentioned above, the video that you wish people to view needs to be viewable at a publicly accessible web page.  To do this, you will need to upload your video to your Wistia account and then embed it on a page on your website.  For instructions on how to do that see the following Quickstart articles:


*  [How to upload]({{ site.url }}/{{ page.lang }}/upload-video.html)

*  [How to embed]({{ site.url }}/{{ page.lang }}/embed-video.html)

## Step #2: Construct the dynamic link

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
## Step #3: Finish and use the dynamic link

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

## Results

When someone clicks the dynamic link in your email campaign, they will be taken to the page on your site containing the embedded video.  Wistia will capture the user's email address and will associate it with that person's viewing of video on your website.  

When you view the statistics for your video you will see analytics for each person who clicked through from your email campaign as shown in the following example:

`<style center>`{{:email-heatmap.png?750|}}`</style>`

This data can also be exported to a spreadsheet as well using Wistia's [Stats Export feature]({{ site.url }}/{{ page.lang }}/stats-api.html) to help you more easily sort through large data sets.

By having a true read on individual viewer engagement, you will know who is interested and who is not based on how each viewer watched your content and how much time they spent doing so.  This information allows you to score (rank) your leads, target future follow-up with pin-point precision, and calculate the return on investment of your campaigns.
