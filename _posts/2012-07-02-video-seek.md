## Seek into a video on page load

Want to show a client a particular clip in a video? Just add a "start" parameter to the query string and specify the position to seek to (in seconds).

For example, if you have a video located at http://myaccount.wistia.com/medias/123 and you want it to start playing at the 1 minute and 30 second mark, you'd link to the URL:

	
	http://myaccount.wistia.com/medias/123?start=90


Note: This only works for videos within your Wistia account. To seek into embedded videos, use the JavaScript player API.
