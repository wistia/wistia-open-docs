---
layout: post
title: The Wistia Upload API
description: A simple mechanism for getting your videos into Wistia.
category: For Developers
footer: 'for_developers'
---

The Wistia Upload API is a simple HTTP endpoint designed to streamline the
process of uploading new media to your account. Simply supply the required
parameters and **POST** your media file to **https://upload.wistia.com/** as
multipart-form encoded data.

Media uploaded in this manner will be immediately visible in your account, but
may still require processing (as is the case for uploads in general).


## Authentication

* All upload requests must use **SSL** (*https://*, not *http://*).
* The required *api_password* parameter will be used for authentication.

## The Request

* **(POST https://upload.wistia.com/)**

All parameters (with the exception of *file*) may be encoded into the request
body or included as part of the query string.

The *file* parameter must be multipart-form encoded into the request body.

<div><table>
  <tr>
    <th>Parameter</th><th> Description </th>
  </tr>
  <tr>
    <td> api_password </td>
    <td> 
    <b>Required</b>. A 40 character hex string. This parameter can be found on
    the API page in your Account Dashboard.
    </td>
  </tr>
  <tr>
    <td> contact_id </td>
    <td> 
    A Wistia contact id, an integer value.
    </td>
  </tr>
  <tr>
    <td> project_id </td>
    <td> 
    The hashed id of the project to upload media into. If omitted, a new
    project will be created and uploaded to. The naming convention used for
    such projects is <i>Uploads_YYYY-MM-DD</i>.
    </td>
  </tr>
  <tr>
    <td> name </td>
    <td> 
    A display name to use for the media in Wistia. If omitted, the filename
    will be used instead.
    </td>
  </tr>
  <tr>
    <td> file </td>
    <td> 
    <b>Required</b>. The media file, multipart-form encoded into the request
    body.
    </td>
  </tr>
</table></div>



## Response format

For successful uploads, the Upload API will respond with an HTTP-200 and the
body will contain a JSON object 

  * **HTTP 200** *[application/json]* Success. A JSON object with media details.
  * **HTTP 400** *[application/json]* Error. A JSON object detailing errors.
  * **HTTP 401** *[text/html]* Authorization error. Check your api_password.


### Example response (http 200, success)

<pre><code class="language-json">
{
  "id"           => 11431326,
  "name"         => "dramatic_squirrel.mp4",
  "content_type" => "video/mp4",
  "extension"    => "mp4",
  "filesize"     => 199467,
  "md5"          => "a71f326ebf2ba2631eee0f8695cfa953",
  "hashed_id"    => "9f322f1de84697ae56c8904dd9e62a3fda5207cc",
  "height"       => 240, 
  "width"        => 320, 
  "length"       => 5.333,
  "created_at"   => "2012-10-09T16:31:34+00:00",
  "updated_at"   => "2012-10-09T16:31:34+00:00",
  "ready"        => true,
  "status"       => 2,
  "progress"     => 1.0
}
</code></pre>

This data structure may change in future releases.

## Example

Uploading a media file with cURL:
<pre><code class='language-markup'>
$ curl -i -F api_password=&lt;YOUR_API_PASSWORD&gt; -F file=@&lt;LOCAL_FILE_PATH&gt; https://upload.wistia.com/
</code></pre>

## Ruby code

All media uploaded via https://upload.wistia.com must be transferred as
multipart-form encoded data inside the body of an HTTP-POST. This can be
achieved in Ruby quite simply using the 'multipart-post' gem.

Installation:

<span class='code'>$ gem install multipart-post</span>

### Example code:
<pre><code class="language-ruby">
require 'net/http'
require 'net/http/post/multipart'

def post_video_to_wistia(name, path_to_video)
  uri = URI('https://upload.wistia.com/')

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true

  # Construct the request.
  request = Net::HTTP::Post::Multipart.new uri.request_uri, {
    'api_password' =&gt; '&lt;API_PASSWORD&gt;',
    'contact_id'   =&gt; '&lt;CONTACT_ID&gt;', # Optional.
    'project_id'   =&gt; '&lt;PROJECT_ID&gt;', # Optional.
    'name'         =&gt; '&lt;MEDIA_NAME&gt;', # Optional.

    'file' =&gt; UploadIO.new(
                File.open(path_to_video),
                'application/octet-stream',
                File.basename(path_to_video)
              )
  }

  # Make it so!
  response = http.request(request)

  return response
end
</code></pre>
