## Publicly Accessible Stats

### Getting Started
----
Sometimes you want to let your users see the statistics for a given video on your site.  At Wistia, we're more than happy to provide a publicly accessible page with anonymized statistics.  However, this functionality is not enabled by default, so before continuing, please [contact us]({{ site.url }}/{{ page.lang }}/http://wistia.com/about/contact.html) (or send an email to `<support@wistia.com>`) to request it to be enabled for your account.
\\
\\
After you have received confirmation that the feature has been turned on, the next step is to craft a link which your site's visitors can use to access your video's statistics.

### Finding the Video's ID

----
The URL for the link should be in the form of...

	
	http://app.wistia.com/stats/`<media-id>`

...where **%%`<media-id>`%%** is the unique numeric id representing your video.  You can find the id for a video in a variety of ways, but the easiest is to look at the address bar at the top of your browser while you are on the video's page in Wistia.  The digits at the end of the URL represent the id you want to use.  The id to use from the screenshot below would be **181279**.  So the URL for the stats for that video would be **%%http://app.wistia.com/stats/181279%%**
\\
\\
[{{ :media-id.png?600 ]({{ site.url }}/{{ page.lang }}/media-id.html)
\\
### Embedding Your Link

----
After you have figured out the URL that you need to use to access the stats, you can add a link to your page to allow your visitors to see those stats.  For example, add the following code to your page to provide a link to access the stats from the previous video:

	
	`<a href="http://app.wistia.com/stats/181279">`See the stats for this video!`</a>`

Adding that code to your page will produce the following result:
[See the stats for this video!]({{ site.url }}/{{ page.lang }}/http://app.wistia.com/stats/181279.html)
