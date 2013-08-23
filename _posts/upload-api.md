---
layout: post
title: The Wistia Upload API
api: true
special_category_link: developers
description: A simple mechanism for getting your videos into Wistia.
category: Developers
footer: 'for_developers'
post_intro: "<p>The Upload API is the best way to programmatically get new videos and files into your Wistia account.</p><p>If you are looking to have site visitors upload content (something like <em>user generated content</em>) you should also check out <a href='/doc/upload-widget-specs'>Upload Widgets</a>.</p>"
---

## Uploading to Wistia

To upload a file from your computer, supply the required parameters and
**POST** your media file to **https://upload.wistia.com/** as multipart-form
encoded data.

Uploaded media will be visible immediately in your account, but may require
processing (as is the case for uploads in general).

## Importing Web/FTP Content to Wistia

To import a file from a web or FTP server, supply the required parameters as a
standard form-url encoded **POST** to **https://upload.wistia.com/**.

Imported media will always require some processing time, which varies depending
on the file size and connection speed.

## There's a Gem For That

To make using the Upload API even easier, we created a [Ruby
gem](https://github.com/wistia/wistia-uploader) that lets you use it via the
command line! Even if you're not a Ruby developer, you can use this command line
tool for uploading to Wistia.

## Authentication

* All upload requests must use **SSL** (*https://*, not *http://*).
* The required *api_password* parameter will be used for authentication.

## The Request

<code class="full_width">POST https://upload.wistia.com</code>

All parameters (with the exception of *file*) may be encoded into the request
body or included as part of the query string.

The *file* parameter must be multipart-form encoded into the request body.

<div><table>
  <tr>
    <th>Parameter</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>api_password</td>
    <td> 
      <b>Required</b>.
      A 40 character hex string. This parameter can be found on the API page 
      in your Account Dashboard.
    </td>
  </tr>
  <tr>
    <td>file</td>
    <td> 
      <b>Required unless `url` is specified</b>.
      The media file, multipart-form encoded into the request body.
    </td>
  </tr>
  <tr>
      <td>url</td>
      <td>
        <b>Required unless `file` is specified</b>.
        The web or FTP location of the media file to import.
      </td>
    </tr>
  <tr>
    <td>project_id</td>
    <td> 
      The hashed id of the project to upload media into. If omitted, a new
      project will be created and uploaded to. The naming convention used for
      such projects is <i>Uploads_YYYY-MM-DD</i>.
    </td>
  </tr>
  <tr>
    <td>name</td>
    <td> 
      A display name to use for the media in Wistia. If omitted, the filename
      will be used instead.
    </td>
  </tr>
  <tr>
    <td>contact_id</td>
    <td> 
      A Wistia contact id, an integer value. If omitted, it will default to the
      contact_id of the account's owner.
    </td>
  </tr>
</table></div>

## Response Format

For successful uploads, the Upload API will respond with an HTTP-200 and the
body will contain a JSON object 

  * **HTTP 200** *[application/json]* Success. A JSON object with media details.
  * **HTTP 400** *[application/json]* Error. A JSON object detailing errors.
  * **HTTP 401** *[text/html]* Authorization error. Check your api_password.


### Example Response

{% codeblock upload_response.json %}
{
  "id"=>2208087, 
  "name"=>"dramatic_squirrel.mp4", 
  "type"=>"Video", 
  "created"=>"2012-10-26T16:47:09+00:00", 
  "updated"=>"2012-10-26T16:47:10+00:00", 
  "duration"=>5.333000183105469, 
  "hashed_id"=>"gn69c10tqw",
  "progress"=>0.0,
  "thumbnail"=>
  {
    "url"=>"http://embed.wistia.com/deliveries/ffbada01610466e66f67a5dbbf473ed6574a6405.jpg?image_crop_resized=100x60", 
    "width"=>100, 
    "height"=>60
  }
}
{% endcodeblock %}

This data structure may change in future releases.

## Examples

Uploading a media file with cURL:

<code class="full_width">$ curl -i -F api_password=&lt;YOUR_API_PASSWORD&gt; -F file=@&lt;LOCAL_FILE_PATH&gt; https://upload.wistia.com/</code>

Importing a media file with cURL:

<code class="full_width">$ curl -i -d "api_password=&lt;YOUR_API_PASSWORD&gt;&amp;url=&lt;REMOTE_FILE_PATH&gt;" https://upload.wistia.com/</code>

## Ruby Code

All media uploaded via https://upload.wistia.com must be transferred as
multipart-form encoded data inside the body of an HTTP-POST. This can be
achieved in Ruby quite simply using the 'multipart-post' gem.

Installation:

<code class="full_width">$ gem install multipart-post</code>

### Example Code

{% codeblock upload_ruby_gem.rb %}
require 'net/http'
require 'net/http/post/multipart'

def post_video_to_wistia(name, path_to_video)
  uri = URI('https://upload.wistia.com/')

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true

  # Construct the request.
  request = Net::HTTP::Post::Multipart.new uri.request_uri, {
    'api_password' => '<API_PASSWORD>',
    'contact_id'   => '<CONTACT_ID>', # Optional.
    'project_id'   => '<PROJECT_ID>', # Optional.
    'name'         => '<MEDIA_NAME>', # Optional.

    'file' => UploadIO.new(
                File.open(path_to_video),
                'application/octet-stream',
                File.basename(path_to_video)
              )
  }

  # Make it so!
  response = http.request(request)

  return response
end
{% endcodeblock %}

## Upload Via FTP

Do you have an FTP client? One that is awesome? I use [Transmit](http://panic.com/transmit/). 

We've been quietly testing upload via FTP, for folks who want to move a large 
library over to Wistia. The bugs have not been worked out, and some of our requirements
means not all FTP clients can support it, but for certain use cases it may help.

Here's the workflow:

* Load up transmit, and enter the following settings:
  * Server: ftp.wistia.com
  * User Name: wistia
  * Password: your account's API key
  * and make sure to select *FTP with TLS/SSL* from the security options.
* Your projects list will appear. 
* When uploading, upload into the Project's folder, not it's `_assets` dir
