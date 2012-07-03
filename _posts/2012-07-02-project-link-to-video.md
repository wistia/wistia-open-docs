# Creating a public link directly to your video

With Wistia, it has always been easy to share a public link to a project in your Wistia account via the [Project Link]({{ site.url }}/{{ page.lang }}/sharing#privately_share_video_by_link.html).  A question that comes up often is how to create a link (like the Project Link) that goes directly to the video.  

## Step #1

Get a Project Link for the project which contains the video you want to share.  Instructions on how to do this can be found [here]({{ site.url }}/{{ page.lang }}/sharing#privately_share_video_by_link.html).  The project link will be of the form:

`http://home.wistia.com/activate/f39922bee5`

## Step #2

To the end of the Project Link, add `?redirect_to=`

This will make your link look like:

`http://home.wistia.com/activate/f39922bee5?redirect_to=`

## Step #3

Go to the page in Wistia where you can actually view the video that you want to share.  The URL for this page will be of the form:

`http://home.wistia.com/medias/139576`

Copy the path of the URL...in this example, that would be: `/medias/139576`

Add that to the end of the link created in Step #2 to get the final link:

`http://home.wistia.com/activate/f39922bee5?redirect_to=/medias/139576`
\\
When a user clicks on this link, they will be taken directly to the video.

NOTE: If you click this link as a manager, you will be logged out with your manager credentials and logged in as the anonymous Project Link user.  To log back in as the manager of your account, go to: 

`http://`<account_name>`.wistia.com/logout`

