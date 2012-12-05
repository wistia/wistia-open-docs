
---
api: true
layout: post
title: The Wistia Data API
description: Learn how to enable Data API access for your account.
category: For Developers
post_intro: <p><a href="http://wistia.com">Wistia</a> is a video hosting solution for marketers.  We make it easy to upload, manage, share, and track your web video performance.</p><p>The Wistia data API gives you all kinds of programmatic access to your Wistia account. The data is available in either JSON or XML format over HTTP.</p><p>There is also a <a href="https://github.com/wistia/wistia-api" target="_blank">Wistia API Ruby gem</a> for access from the command line.</p><p><strong>Wistia API Exchange Forum:</strong> We've recently added a forum, just for Data API users.  It's meant to be a place for sharing projects and getting language-specific help. Head to <a href="http://dev-forum.wistia.com" target="_blank">http://dev-forum.wistia.com</a> to check it out!</p>
---

## Getting Started

Before delving into the specifics of using the API,
there are some general concepts that you should be aware of:

#### Generate an API Key

Wistia API access is available for *paid plans* and *trials* only at this time.
Generate an API key from the *API* option on the Account Dashboard.
The user name is always "api".

#### Authentication

You must use **SSL** (https instead of http) to access the API.
The API uses **HTTP Basic authentication** to authorize access to the information.

#### JSON vs. XML

The request examples retrieve the data in **JSON** format.
If you would like the data in **XML** format, 
change the extension of the request from “json” to “xml” (no quotes).

#### PUT and DELETE

Some HTTP clients are limited to sending GET and POST requests 
(e.g. HTML forms have this limitation).
You will notice, however, that many of the API calls only respond to 
**PUT** or **DELETE** requests.  In order to trigger these calls from a client that does not support 
**PUT** or **DELETE**, use a POST request and add a parameter named “\_method” (no quotes) with 
a value of either “put” or “delete” (again, no quotes).

#### Rate Limit

The API has a rate limit at 100 requests per minute.
If there are more than 100 requests in a minute for a particular account, the service will respond with 
HTTP error 503 (Service Unavailable) and the Retry-After 
HTTP header will be set with a number of seconds to wait before trying again.

#### Versions and Updates

We will introduce API changes when necessary/possible,
and update the version number (i.e. *v1*) when a **breaking change** is made.
Stay tuned to the [dev-forum](dev-forum.wistia.com) for updates on the API.


## Resources

To make your Wistia experience even more awesome, here are some resources just for you:

[ Wistia-API Ruby Gem ]( https://github.com/wistia/wistia-api )</a> - selected best gem ever by Jim Bancroft<br/>
[ Wistia-API PHP Class ]( https://github.com/stephenreid/wistia-api )</a> - created by Stephen Reid


## Projects

**Projects** are the main organizational objects within Wistia.
Media must be stored within Projects.

### Projects: List

#### Prerequisites

The username and password for your account.


#### The Request

In order to tell Wistia that you want a list of all projects, send the following request:

<pre><code class="language-markup">GET https://api.wistia.com/v1/projects.json</code></pre>

#### Sorting

You can get the results back sorted by the name, mediaCount, created, or updated fields. 
In order to specify how you want the results to be sorted, append one or both of the following query parameters to the request 
URL:

<div><table>
  <tr>
    <th>Parameter</th><th> Description </th>
  </tr>
  <tr>
    <td> sort_by </td>
    <td> 
      The name of the field to sort by.
      Valid values are “name”, “mediaCount”, “created”, or “updated”.
      Defaults to sorting by Project ID.
    </td>
  </tr>
  <tr>
    <td> sort_direction </td>
    <td> 
      Specifies the direction of the sort, defaults to '1'.
      1 = ascending, 0 = descending.
    </td>
  </tr>
</table></div>

For example, if you want to sort your results in descending order by the date each project was created, your request 
URL would look something like this:

<pre><code class="language-markup">https://api.wistia.com/v1/projects.json?sort_by=created&amp;sort_direction=0</code></pre>

#### Paging

You can get your results back in chunks using the paging feature.  In order to set the page size 
and/or the number of pages that you want to see, use the following query parameters:

<div><table>
  <tr>
    <th class="col0"> Parameter </th><th class="col1"> Description </th>
  </tr>
  <tr class="row1">
    <td class="col0"> page </td>
    <td class="col1"> 
      Specifies which page of the results you want to see. Defaults to 1 (not 0).
    </td>
  </tr>
  <tr class="row2">
    <td class="col0"> per_page  </td>
    <td class="col1"> 
      The number of results you want to get back per request.
      The maximum value of this parameter is 100. Defaults to 100.
    </td>
  </tr>
</table></div>

#### Example
If you want to get your results back 10 projects at a time, 
starting on the second page of results, then your request 
URL should look something like this:

<pre><code class="language-markup">https://api.wistia.com/v1/projects.json?page=2&amp;per_page=10</code></pre>

#### The Response

Assuming authentication is successful and the request is in good order, the 
HTTP response will contain the list of all projects in your account.
The format of the content (JSON or XML) 
depends on which extension was used to make the request.

<div><table>
<tr><th>Field</th><th>Description</th></tr>
<tr>
  <td> id </td>
  <td> A unique numeric identifier for the project within the system.</td>
</tr>
<tr>
  <td> name </td>
  <td> The project&#039;s display name.</td>
</tr>
<tr>
  <td> mediaCount </td>
  <td> The number of different medias that have been uploaded to the project.</td>
</tr>
<tr>
  <td> created </td>
  <td> The date that the project was originally created.</td>
</tr>
<tr>
  <td> updated </td>
  <td> The date that the project was last updated.</td>
</tr>
<tr>
  <td> hashedId </td>
  <td>
    A private hashed id, uniquely identifying the project within the system.
    Used for playlists and RSS feeds. 
  </td>
</tr>
<tr>
  <td> anonymousCanUpload </td>
  <td> A boolean indicating whether or not anonymous uploads are enabled for the project.</td>
</tr>
<tr>
  <td> anonymousCanDownload </td>
  <td> A boolean indicating whether or not anonymous downloads are enabled for this project. </td>
</tr>
<tr>
  <td> public </td>
  <td> A boolean indicating whether the project is available for public (anonymous) viewing. </td>
</tr>
<tr>
  <td> publicId </td>
  <td> If the project is public, this field contains a string representing the ID used for referencing the project in public URLs. </td>
</tr>
</table></div>

#### Example JSON Response


<pre><code class="language-json">
[
  {
    "id": 22570,
    "name": "My Project Title",
    "mediaCount": 2,
    "created": "2010-08-13T18:47:39+00:00",
    "updated": "2010-08-19T21:47:00+00:00",
    "hashedId": "4d23503f70",
    "anonymousCanUpload": false,
    "anonymousCanDownload": false,
    "public": false,
    "publicId": "4bD"
  },
  {
    "id": 10495,
    "name": "Another Project Title",
    "mediaCount": 4,
    "created": "2010-08-13T18:47:39+00:00",
    "updated": "2010-08-19T21:47:00+00:00",
    "hashedId": "4d23503f70",
    "anonymousCanUpload": false,
    "anonymousCanDownload": false,
    "public": false,
    "publicId": "3dF"
  }
]    
</code></pre>


#### Example XML Response


<pre><code class="language-xml">
&lt;projects&gt;
  &lt;project&gt;
    &lt;id&gt;22570&lt;/id&gt;
    &lt;name&gt;My Project Title&lt;/name&gt;
    &lt;mediaCount&gt;2&lt;/mediaCount&gt;
    &lt;created&gt;2010-08-13T18:47:39+00:00&lt;/created&gt;
    &lt;updated&gt;2010-08-19T21:47:00+00:00&lt;/updated&gt;
    &lt;hashedId&gt;4d23503f70&lt;/hashedId&gt;
    &lt;anonymousCanUpload&gt;false&lt;/anonymousCanUpload&gt;
    &lt;anonymousCanDownload&gt;false&lt;/anonymousCanDownload&gt;
    &lt;public&gt;false&lt;/public&gt;
    &lt;publicId&gt;4bD&lt;/publicId&gt;
  &lt;/project&gt;
  &lt;project&gt;
    &lt;id&gt;10495&lt;/id&gt;
    &lt;name&gt;Another Project Title&lt;/name&gt;
    &lt;mediaCount&gt;4&lt;/mediaCount&gt;
    &lt;created&gt;2010-08-13T18:47:39+00:00&lt;/created&gt;
    &lt;updated&gt;2010-08-19T21:47:00+00:00&lt;/updated&gt;
    &lt;hashedId&gt;4d23503f70&lt;/hashedId&gt;
    &lt;anonymousCanUpload&gt;false&lt;/anonymousCanUpload&gt;
    &lt;anonymousCanDownload&gt;false&lt;/anonymousCanDownload&gt;
    &lt;public&gt;false&lt;/public&gt;
    &lt;publicId&gt;3dF&lt;/publicId&gt;
  &lt;/project&gt;
&lt;/projects&gt;
</code></pre>

---

### Projects: Show

The Wistia data API allows you to retrieve details about a specific project.

#### Prerequisites

The username and password for your account
The ID of the project for which you want to retrieve media

#### The Request

In order to tell Wistia that you want a list of all the media for a specific project, send an 
HTTP **GET** request to the 
following URL:

<pre><code class="language-markup">GET https://api.wistia.com/v1/projects/&lt;project-id&gt;.json</code></pre>

#### The Response

Assuming authentication is successful and the request is in good order, the 
HTTP response will contain detailed information 
about the requested project, including a list of the media in that project.  The format of the content 
(JSON or XML) depends on which extension was used to make the request.


Field | Description
------|---------------------------
id    | A unique numeric identifier for the project within the system.
name  | The project&#039;s title or display name.
mediaCount | The number of media in the project.
created | The date that the project was originally created.
updated | The date that the project was last changed.
hashedId | A private hashed id, uniquely identifying the project within the system.  Used for playlists and RSS feeds.
anonymousCanUpload | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload | A boolean indicating whether or not anonymous downloads are enabled for this project.
public | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.
media | A JSON array containing a list of JSON objects representing the media in the project.  See the table below for a description of the fields in each media entry.

Each entry in the media array for a project has the following fields:

Field | Description
------|------------
id | A unique numeric identifier for the media within the system.
name  | The display name of the media.
section (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
thumbnail     | An object representing the thumbnail for this media.  The attributes are URL, width, and height.
type  | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
duration (optional) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created   | The date when the media was originally uploaded.
updated   | The date when the media was last changed.


#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 22570,
    &quot;name&quot;: &quot;My Project Title&quot;,
    &quot;mediaCount&quot;: 2,
    &quot;created&quot;: &quot;2010-08-13T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-19T21:47:00+00:00&quot;,
    &quot;hashedId&quot;: &quot;4d23503f70&quot;,
    &quot;anonymousCanUpload&quot;: false,
    &quot;anonymousCanDownload&quot;: false,
    &quot;public&quot;: false,
    &quot;publicId&quot;: &quot;4bD&quot;,
    &quot;media&quot;: [
    {
      &quot;id&quot;: 181279,
      &quot;name&quot;: &quot;Introducing the Slimlist&quot;,
      &quot;thumbnail&quot;: {
        &quot;url&quot;: &quot;http://www.wistia.com/path/to/thumbnail1.png&quot;,
        &quot;width&quot;: 100,
        &quot;height&quot;: 60
      },
      &quot;type&quot;: &quot;Video&quot;,
      &quot;duration&quot;: 74,
      &quot;created&quot;: &quot;2010-08-14T18:47:39+00:00&quot;,
      &quot;updated&quot;: &quot;2010-08-20T21:47:00+00:00&quot;
    },
    {
      &quot;id&quot;: 181182,
      &quot;name&quot;: &quot;Due Date&quot;,
      &quot;section&quot;: &quot;Trailers&quot;,
      &quot;thumbnail&quot;: {
        &quot;url&quot;: &quot;http://www.wistia.com/path/to/thumbnail2.png&quot;,
        &quot;width&quot;: 100,
        &quot;height&quot;: 60
      },
      &quot;type&quot;: &quot;Video&quot;,
      &quot;duration&quot;: 126,
      &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
      &quot;updated&quot;: &quot;2010-08-21T21:47:00+00:00&quot;
    }
  ]
}
</code></pre>


#### Example XML Response


<pre><code class="language-xml">
&lt;project&gt;
  &lt;id&gt;22570&lt;/id&gt;
  &lt;name&gt;My Project Title&lt;/name&gt;
  &lt;mediaCount&gt;2&lt;/mediaCount&gt;
  &lt;created&gt;2010-08-13T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-19T21:47:00+00:00&lt;/updated&gt;
  &lt;hashedId&gt;4d23503f70&lt;/hashedId&gt;
  &lt;anonymousCanUpload&gt;false&lt;/anonymousCanUpload&gt;
  &lt;anonymousCanDownload&gt;false&lt;/anonymousCanDownload&gt;
  &lt;public&gt;false&lt;/public&gt;
  &lt;publicId&gt;4bD&lt;/publicId&gt;
  &lt;medias&gt;
  &lt;media&gt;
  &lt;id&gt;181279&lt;/id&gt;
  &lt;name&gt;Introducing the Slimlist&lt;/name&gt;
  &lt;thumbnail&gt;
  &lt;url&gt;http://www.wistia.com/path/to/thumbnail1.png&lt;/url&gt;
  &lt;width&gt;100&lt;/width&gt;
  &lt;height&gt;60&lt;/height&gt;
  &lt;/thumbnail&gt;
  &lt;type&gt;Video&lt;/type&gt;
  &lt;duration&gt;74&lt;/duration&gt;
  &lt;created&gt;2010-08-14T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-20T21:47:00+00:00&lt;/updated&gt;
  &lt;/media&gt;
  &lt;media&gt;
  &lt;id&gt;181182&lt;/id&gt;
  &lt;name&gt;Due Date&lt;/name&gt;
  &lt;section&gt;Trailers&lt;/section&gt;
  &lt;thumbnail&gt;
  &lt;url&gt;http://www.wistia.com/path/to/thumbnail2.png&lt;/url&gt;
  &lt;width&gt;100&lt;/width&gt;
  &lt;height&gt;60&lt;/height&gt;
  &lt;/thumbnail&gt;
  &lt;type&gt;Video&lt;/type&gt;
  &lt;duration&gt;126&lt;/duration&gt;
  &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-21T21:47:00+00:00&lt;/updated&gt;
  &lt;/media&gt;
  &lt;/medias&gt;
&lt;/project&gt;
</code></pre>


---

### Projects: Create

Using the API, you can create a new project in your account.

#### The Request

<pre><code class="language-markup">POST https://api.wistia.com/v1/projects.json</code></pre>

#### Parameters

The only required parameter is the name of the project that you want to create.
You can also set the project administrator by passing an extra parameter specifying their email.
The following table lists the valid parameters for this action:

Parameter Name  | Description
----------------|--------------
name | The name of the project you want to create.
adminEmail (optional) | The email address of the person you want to set as the owner of this project.  If this parameter is not present or if it specifies a user that is not an [account manager]({{ '/permissions' | post_url }}), the project admin will default to the Wistia account owner.
anonymousCanUpload (optional) | A flag indicating whether or not anonymous users may upload files to this project.  Set to “1” to enable and “0” to disable.
anonymousCanDownload (optional) | A flag indicating whether or not anonymous users may download files from this project.  Set to “1” to enable and “0” to disable.
public (optional) | A flag indicating whether or not the project is enabled for public access.  Set to “1” to enable and “0” to disable.

The parameters should be passed in the body of the request and URL encoded.
Alternatively, they can be appended to the end of the 
URL after a question mark (?) character and passed as query string parameters.

#### The Response

If the project is created successfully, the API will respond with an 
“HTTP 201 Created” status code, and the “Location” 
HTTP header will refer to the URL where 
the API can make the next request to get the new project.  The body of the response 
will contain the newly created project in XML or JSON format, 
depending on which extension was used in the request.


Field | Description
------|---------------
id        | A numeric identifier that uniquely identifies the project to the system.  You can use this field to obtain more information about the project using the other API methods.
name      | The name of the newly created project.
mediaCount | The number of media in the project.
created    | The date that the project was originally created.
updated    | The date that the project was last changed.
hashedId   | A private hashed id, uniquely identifying the project within the system.  Used for playlists and RSS feeds.
anonymousCanUpload | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload | A boolean indicating whether or not anonymous downloads are enabled for this project.
public | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.


#### Example JSON Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/1.json


<pre><code class="language-json">
{
  &quot;id&quot;: 1,
    &quot;name&quot;: &quot;My New Project&quot;,
    &quot;mediaCount&quot;: 0,
    &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;hashedId&quot;: &quot;4d23503f70&quot;,
    &quot;anonymousCanUpload&quot;: false,
    &quot;anonymousCanDownload&quot;: false,
    &quot;public&quot;: false,
    &quot;publicId&quot;: &quot;4bD&quot;
}
</code></pre>

#### Example XML Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/1.xml

<pre><code class="language-xml">
  &lt;project&gt;
    &lt;id&gt;1&lt;/id&gt;
    &lt;name&gt;My New Project&lt;/name&gt;
    &lt;mediaCount&gt;0&lt;/mediaCount&gt;
    &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
    &lt;updated&gt;2010-08-15T18:47:39+00:00&lt;/updated&gt;
    &lt;hashedId&gt;4d23503f70&lt;/hashedId&gt;
    &lt;anonymousCanUpload&gt;false&lt;/anonymousCanUpload&gt;
    &lt;anonymousCanDownload&gt;false&lt;/anonymousCanDownload&gt;
    &lt;public&gt;false&lt;/public&gt;
    &lt;publicId&gt;4bD&lt;/publicId&gt;
  &lt;/project&gt;
</code></pre>

---

### Projects: Update

The Wistia data API allows you to update a project.
Currently, the only attribute that you can update is the project name.

#### The Request

<pre><code class="language-markup">PUT https://api.wistia.com/v1/projects/&lt;project-id&gt;.json</code></pre>

Make sure you replace *&lt;project-id&gt;* with the hashed ID of the project that you want to update.

#### The Parameters

Here are the valid parameters for this action:

Parameter Name | Description
---------------|---------------
name     | The project&#039;s new name.
anonymousCanUpload | A flag indicating whether or not anonymous users may upload files to this project.  Set to “1” to enable and “0” to disable.
anonymousCanDownload | A flag indicating whether or not anonymous users may download files from this project.  Set to “1” to enable and “0” to disable.
public | A flag indicating whether or not the project is enabled for public access.  Set to “1” to enable and “0” to disable.

#### The Response

If the project update is successful, the server will send a response with something similar to the following:

Field   | Description
--------|----------------
id         | A numeric identifier that uniquely identifies the project to the system.  You can use this field to obtain more information about the project using the other API methods.
name       | The name of the project.
mediaCount | The number of media in the project.
created    | The date that the project was originally created.
updated    | The date that the project was last changed.
hashedId   | A private hashed id, uniquely identifying the project within the system.  Used for playlists and RSS feeds.
anonymousCanUpload | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload | A boolean indicating whether or not anonymous downloads are enabled for this project.
public | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.

#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 1,
    &quot;name&quot;: &quot;Updated Project Name&quot;,
    &quot;mediaCount&quot;: 5,
    &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;hashedId&quot;: &quot;4d23503f70&quot;,
    &quot;anonymousCanUpload&quot;: false,
    &quot;anonymousCanDownload&quot;: false,
    &quot;public&quot;: false,
    &quot;publicId&quot;: &quot;4bD&quot;
}
</code></pre>

#### Example XML Response


<pre><code class="language-xml">
&lt;project&gt;
&lt;id&gt;1&lt;/id&gt;
&lt;name&gt;Updated Project Name&lt;/name&gt;
&lt;mediaCount&gt;5&lt;/mediaCount&gt;
&lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
&lt;updated&gt;2010-08-15T18:47:39+00:00&lt;/updated&gt;
&lt;hashedId&gt;4d23503f70&lt;/hashedId&gt;
&lt;anonymousCanUpload&gt;false&lt;/anonymousCanUpload&gt;
&lt;anonymousCanDownload&gt;false&lt;/anonymousCanDownload&gt;
&lt;public&gt;false&lt;/public&gt;
&lt;publicId&gt;4bD&lt;/publicId&gt;
&lt;/project&gt;
</code></pre>



---

### Projects: Delete

The Wistia data API allows you to delete a project.

#### The Request

<pre><code class="language-markup">DELETE https://api.wistia.com/v1/projects/&lt;project-id&gt;.json</code></pre>

Make sure you replace *&lt;project-id&gt;* with the hashed ID of the project that you want to delete.

#### The Parameters

This action does not take any parameters.

#### The Response

If the project is deleted successfully, the server will respond with HTTP 
status **200 OK** to let you know that it worked.  The body of the response will 
contain an object representing the project that was just deleted.



Field   | Description
--------|------------------
id         | A numeric identifier that uniquely identifies the project to the system.  You can use this field to obtain more information about the project using the other API methods.
name       | The name of the project.
mediaCount | The number of media in the project.
created    | The date that the project was originally created.
updated    | The date that the project was last changed.
hashedId   | A private hashed id, uniquely identifying the project within the system.  Used for playlists and RSS feeds.
anonymousCanUpload | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload | A boolean indicating whether or not anonymous downloads are enabled for this project.
public | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.


#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 1,
    &quot;name&quot;: &quot;Project Name&quot;,
    &quot;mediaCount&quot;: 5,
    &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;hashedId&quot;: &quot;4d23503f70&quot;,
    &quot;anonymousCanUpload&quot;: false,
    &quot;anonymousCanDownload&quot;: false,
    &quot;public&quot;: false,
    &quot;publicId&quot;: &quot;4bD&quot;
}
</code></pre>

#### Example XML Response


<pre><code class='language-xml'>
&lt;project&gt;
  &lt;id&gt;1&lt;/id&gt;
  &lt;name&gt;Project Name&lt;/name&gt;
  &lt;mediaCount&gt;5&lt;/mediaCount&gt;
  &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-15T18:47:39+00:00&lt;/updated&gt;
  &lt;hashedId&gt;4d23503f70&lt;/hashedId&gt;
  &lt;anonymousCanUpload&gt;false&lt;/anonymousCanUpload&gt;
  &lt;anonymousCanDownload&gt;false&lt;/anonymousCanDownload&gt;
  &lt;public&gt;false&lt;/public&gt;
  &lt;publicId&gt;4bD&lt;/publicId&gt;
&lt;/project&gt;
</code></pre>

---


### Projects: Copy

The Wistia data API allows you to copy a project, 
including all of its media, sidebar elements, and sections.  

{{ "This method does not copy the projects sharing information (i.e. users that could see the old project will not automatically be able to see the new one)." | note }}



#### The Request


<pre><code class="language-markup">POST https://api.wistia.com/v1/projects/&lt;project-id&gt;/copy.json</code></pre>

Make sure you replace *&lt;project-id&gt;* with the hashed ID of the project that you want to copy.


#### Parameters

You can specify the owner of the new project by passing an optional parameter.  The person you specify must be a manager in the account.  If you omit this parameter, or if you specify an email address for someone that&#039;s not a manager, the project owner defaults to the account owner.

Parameter Name   | Description
-----------------|----------------
adminEmail (optional) | The email address of the account manager that will be the owner of the new project.  Defaults to the account owner if invalid or omitted.


#### The Response

If the project is copied successfully, the server will respond with HTTP
status **201 Created** to let you know that it worked.

The HTTP **Location** header will be set to the URL where the newly created project resource resides.
The body of the response will contain an object representing the *new copy* of the project that was just created.


Field   | Description
--------|-------------------
id         | A numeric identifier that uniquely identifies the project to the system.  You can use this field to obtain more information about the project using the other API methods.
name       | The name of the project.
mediaCount | The number of media in the project.
created    | The date that the project was originally created.
updated    | The date that the project was last changed.
hashedId   | A private hashed id, uniquely identifying the project within the system.  Used for playlists and RSS feeds.
anonymousCanUpload | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload | A boolean indicating whether or not anonymous downloads are enabled for this project.
public | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.


#### Example JSON Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/3.json

<pre><code class="language-json">
{
  &quot;id&quot;: 3,
    &quot;name&quot;: &quot;Project Name&quot;,
    &quot;mediaCount&quot;: 5,
    &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;hashedId&quot;: &quot;4d23503f70&quot;,
    &quot;anonymousCanUpload&quot;: false,
    &quot;anonymousCanDownload&quot;: false,
    &quot;public&quot;: false,
    &quot;publicId&quot;: &quot;4bD&quot;
}</code></pre>

#### Example XML Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/3.xml

<pre><code class="language-xml">
&lt;project&gt;
  &lt;id&gt;3&lt;/id&gt;
  &lt;name&gt;Project Name&lt;/name&gt;
  &lt;mediaCount&gt;5&lt;/mediaCount&gt;
  &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-15T18:47:39+00:00&lt;/updated&gt;
  &lt;hashedId&gt;4d23503f70&lt;/hashedId&gt;
  &lt;anonymousCanUpload&gt;false&lt;/anonymousCanUpload&gt;
  &lt;anonymousCanDownload&gt;false&lt;/anonymousCanDownload&gt;
  &lt;public&gt;false&lt;/public&gt;
  &lt;publicId&gt;4bD&lt;/publicId&gt;
&lt;/project&gt;
</code></pre>

---

## Project Sharings

A sharing is an object that links either a contact or a contact group to a project, including information about the contacts' permissions to that project.

### Project Sharings: List

The Wistia data API allows you to see a list of sharings on a project.
A sharing is an object that links either a contact or a contact group to a project, including information about the contacts&#039; permissions to that project.

#### The Request


<pre><code class="language-markup">GET https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings.json</code></pre>

Make sure you replace *&lt;project-id&gt;* with the hashed ID of the project for which you would like to see sharings.

#### The Parameters

This method does not accept any other parameters.

#### The Response

The server responds with HTTP status **200 OK** 
and the response body contains a list of all the sharings on the project.


Field     | Description
----------|----------------
id          | A unique numeric identifier for the sharing object within the system.
isAdmin     | This field indicates whether the user has admin rights on the project.
canShare    | This field indicates whether the user is allowed to share the project with others.
canDownload | This field indicates whether the user is allowed to download files from the project.
canUpload   | This field indicates whether the user is allowed to upload files to the project.
share       | An object identifying the Contact or ContactGroup with which this sharing object ties the project.  See below for a description of the fields in this object.
project     | An object representing the project to which this sharing object grants access.  It only has 2 attributes: id and name, which both have the same meaning as they do elsewhere in the API.

The attributes of each share object are as follows:

Field     | Description
----------|---------------
id               | A unique numeric identifier for the Contact or ContactGroup.
name             | The display name of this Contact or ContactGroup.
type             | A string representing what type of share this object represents: &#039;Contact&#039; or &#039;ContactGroup&#039;.
email (optional) | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it&#039;s a ContactGroup, this field will be omitted.

#### Example JSON Response


<pre><code class="language-json">
[
  {
    "id": 14,
      "isAdmin": true,
      "canShare": true,
      "canDownload": true,
      "canUpload": true,
      "share": {
        "id": 3,
        "name": "Jim",
        "type": "Contact",
        "email": "jim@wistia.com"
      },
      "project": {
        "id": 13,
        "name": "My Project"
      }
  },
  {
    "id": 15,
    "isAdmin": false,
    "canShare": true,
    "canDownload": true,
    "canUpload": false,
    "share": {
      "id": 3,
      "name": "Sales",
      "type": "ContactGroup"
    },
    "project": {
      "id": 13,
      "name": "My Project"
    }
  }
]
</code></pre>

#### Example XML Response


<pre><code class="language-XML">
&lt;sharings&gt;
  &lt;sharing&gt;
    &lt;id&gt;14&lt;/id&gt;
    &lt;isAdmin&gt;true&lt;/isAdmin&gt;
    &lt;canShare&gt;true&lt;/canShare&gt;
    &lt;canDownload&gt;true&lt;/canDownload&gt;
    &lt;canUpload&gt;true&lt;/canUpload&gt;
    &lt;share&gt;
      &lt;id&gt;3&lt;/id&gt;
      &lt;name&gt;Jim&lt;/name&gt;
      &lt;type&gt;Contact&lt;/type&gt;
      &lt;email&gt;jim@wistia.com&lt;/email&gt;
    &lt;/share&gt;
    &lt;project&gt;
      &lt;id&gt;13&lt;/id&gt;
      &lt;name&gt;My Project&lt;/name&gt;
    &lt;/project&gt;
  &lt;/sharing&gt;
  &lt;sharing&gt;
    &lt;id&gt;15&lt;/id&gt;
    &lt;isAdmin&gt;false&lt;/isAdmin&gt;
    &lt;canShare&gt;true&lt;/canShare&gt;
    &lt;canDownload&gt;true&lt;/canDownload&gt;
    &lt;canUpload&gt;false&lt;/canUpload&gt;
    &lt;share&gt;
      &lt;id&gt;3&lt;/id&gt;
      &lt;name&gt;Sales&lt;/name&gt;
      &lt;type&gt;ContactGroup&lt;/type&gt;
    &lt;/share&gt;
    &lt;project&gt;
      &lt;id&gt;13&lt;/id&gt;
      &lt;name&gt;My Project&lt;/name&gt;
    &lt;/project&gt;
  &lt;/sharing&gt;
&lt;/sharings&gt;
</code></pre>

---

### Project Sharings: Show

The Wistia data API allows you to see the details of a particular sharing on a project.

#### The Request

<pre><code class="language-markup">GET https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;.json</code></pre>

Make sure you replace *&lt;project-id&gt;* with the hashed ID of the project for which you would like to see sharings, and replace *&lt;sharing-id&gt;* with the ID of the specific sharing object that you want to see.

#### The Paramters
This method does not accept any other parameters.

#### The Response

The server responds with HTTP status **200 OK** and the response body contains the requested sharing on the project.


Field    | Description
---------|-------------------
id          | A unique numeric identifier for the sharing object within the system.
isAdmin     | This field indicates whether the user has admin rights on the project.
canShare    | This field indicates whether the user is allowed to share the project with others.
canDownload | This field indicates whether the user is allowed to download files from the project.
canUpload   | This field indicates whether the user is allowed to upload files to the project.
share       | An object identifying the Contact or ContactGroup with which this sharing object ties the project.  See below for a description of the fields in this object.
project     | An object representing the project to which this sharing object grants access.  It only has 2 attributes: id and name, which both have the same meaning as they do elsewhere in the API.

The attributes of each share object are as follows:

Field     | Description
----------|---------------
id               | A unique numeric identifier for the Contact or ContactGroup.
name             | The display name of this Contact or ContactGroup.
type             | A string representing what type of share this object represents: &#039;Contact&#039; or &#039;ContactGroup&#039;.
email (optional) | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it&#039;s a ContactGroup, this field will be omitted.

#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 14,
    &quot;isAdmin&quot;: true,
    &quot;canShare&quot;: true,
    &quot;canDownload&quot;: true,
    &quot;canUpload&quot;: true,
    &quot;share&quot;: {
      &quot;id&quot;: 3,
      &quot;name&quot;: &quot;Jim&quot;,
      &quot;type&quot;: &quot;Contact&quot;,
      &quot;email&quot;: &quot;jim@wistia.com&quot;
    },
    &quot;project&quot;: {
      &quot;id&quot;: 13,
      &quot;name&quot;: &quot;My Project&quot;
    }
}
</code></pre>

#### Example XML Response


<pre><code class="language-xml">
&lt;sharing&gt;
  &lt;id&gt;14&lt;/id&gt;
  &lt;isAdmin&gt;true&lt;/isAdmin&gt;
  &lt;canShare&gt;true&lt;/canShare&gt;
  &lt;canDownload&gt;true&lt;/canDownload&gt;
  &lt;canUpload&gt;true&lt;/canUpload&gt;
  &lt;share&gt;
    &lt;id&gt;3&lt;/id&gt;
    &lt;name&gt;Jim&lt;/name&gt;
    &lt;type&gt;Contact&lt;/type&gt;
    &lt;email&gt;jim@wistia.com&lt;/email&gt;
  &lt;/share&gt;
  &lt;project&gt;
    &lt;id&gt;13&lt;/id&gt;
    &lt;name&gt;My Project&lt;/name&gt;
  &lt;/project&gt;
&lt;/sharing&gt;
</code></pre>

---

### Project Sharings: Create

The Wistia data API allows you to share a project with a user by email.
Conceptually, you do this by creating a new sharing object for a project.

#### The Request

<pre><code class="language-markup">POST https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings.json</code></pre>

Make sure you replace **&lt;project-id&gt;** with the hashed ID of the project that you want to share.

This method can accept several parameters to customize the way that the sharing happens.
The only required parameter is **with**, which specifies the email address of the person with whom you want to share the project.

Parameter   | Description
------------|-------------------
with                               | The email address of the person with whom you want to share the project.
requirePassword (optional)        | If this parameter is “1” (no quotes), which is the default value, then the user will be required to activate their account and set a password to see the project.  Set it to “0” (again, no quotes) to allow them to see the project without entering a password.
canShare (optional)               | Set this parameter to “1” (no quotes) to allow the user to share the project with others.
canDownload (optional)            | Set this parameter to “1” (no quotes) to allow the user to download files from the project.
canUpload (optional)              | Set this parameter to “1” (no quotes) to allow the user to upload files to the project.


#### The Response

If the operation completes successfully, the user will have access to the specified project.
The server responds with HTTP status **201 Created**, and 
the **Location** HTTP header is set to the place where more 
information about the new sharing object can be found through the API.
The response body contains either a link for the user to activate their account or a link for the user to access the project if 
they already have a username/password.

#### Example JSON Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/13/sharings/16.json

<pre><code class="language-json">{ &quot;project&quot;: &quot;http://myaccount.wistia.com/projects/13&quot; }</code></pre>

Here&#039;s an example of what the response body might look like if the user is not yet activated:

<pre><code class="language-json">{ &quot;activation&quot;: &quot;http://myaccount.wistia.com/my_activation_link&quot; }</code></pre>

#### Example XML Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/13/sharings/16.xml

<pre><code class="language-xml">&lt;url&gt;
&lt;project&gt;http://myaccount.wistia.com/projects/13&lt;/project&gt;
&lt;/url&gt;</code></pre>

Here&#039;s an example of what the response body might look like if the user is not yet activated:

<pre><code class="language-xml">&lt;url&gt;
&lt;activation&gt;http://myaccount.wistia.com/my_activation_link&lt;/activation&gt;
&lt;/url&gt;</code></pre>

---

### Project Sharings: Update the Sharing on a Project

The Wistia data API allows you to 
update a sharing on a project.  Currently, the only attributes that you can update are **can_share**, 
**can_download**, **can_upload**, and **is_admin**.

#### The Request

<pre><code class="language-markup">PUT https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;.json</code></pre>

Make sure you replace *&lt;project-id&gt;* with the hashed ID of the project that you want, 
and replace *&lt;sharing-id&gt;* with the ID of the sharing that you want to update.

Parameter Name    | Description
------------------|-----------------
canShare (optional)    | “1” to allow the user or group to share the project with others, “0” to disable this functionality.
canDownload (optional) | “1” to allow the user or group to download media from the project, “0” to disable this functionality.
canUpload (optional)   | “1” to allow the user or group to upload media to the project, “0” to disable this functionality.
isAdmin (optional)     | “1” to give this user admin rights to the project, “0” to take away admin rights.

Notice that every parameter for this action is optional.  Omitting a parameter from the request will leave that attribute alone.

#### The Response

If the update is successful, the server will send a response with something similar to the following:


Field  | Description
-------|------------------
id          | A unique numeric identifier for the sharing object within the system.
isAdmin     | This field indicates whether the user has admin rights on the project.
canShare    | This field indicates whether the user is allowed to share the project with others.
canDownload | This field indicates whether the user is allowed to download files from the project.
canUpload   | This field indicates whether the user is allowed to upload files to the project.
share       | An object identifying the Contact or ContactGroup with which this sharing object ties the project.  See below for a description of the fields in this object.
project     | An object representing the project to which this sharing object grants access.  It only has 2 attributes: id and name, which both have the same meaning as they do elsewhere in the API.

The attributes of each share object are as follows:

Field    | Description
---------|-----------------
id               | A unique numeric identifier for the Contact or ContactGroup.
name             | The display name of this Contact or ContactGroup.
type             | A string representing what type of share this object represents: &#039;Contact&#039; or &#039;ContactGroup&#039;.
email (optional) | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it&#039;s a ContactGroup, this field will be omitted.


#### Example JSON Response


<pre><code class="language-json">
{
 &quot;id&quot;: 14,
   &quot;isAdmin&quot;: true,
   &quot;canShare&quot;: true,
   &quot;canDownload&quot;: true,
   &quot;canUpload&quot;: true,
   &quot;share&quot;: {
     &quot;id&quot;: 3,
     &quot;name&quot;: &quot;Jim&quot;,
     &quot;type&quot;: &quot;Contact&quot;,
     &quot;email&quot;: &quot;jim@wistia.com&quot;
   },
   &quot;project&quot;: {
     &quot;id&quot;: 13,
     &quot;name&quot;: &quot;My Project&quot;
   }
}
</code></pre>

#### Example XML Response


<pre><code class="language-xml">
&lt;sharing&gt;
  &lt;id&gt;14&lt;/id&gt;
  &lt;isAdmin&gt;true&lt;/isAdmin&gt;
  &lt;canShare&gt;true&lt;/canShare&gt;
  &lt;canDownload&gt;true&lt;/canDownload&gt;
  &lt;canUpload&gt;true&lt;/canUpload&gt;
  &lt;share&gt;
    &lt;id&gt;3&lt;/id&gt;
    &lt;name&gt;Jim&lt;/name&gt;
    &lt;type&gt;Contact&lt;/type&gt;
    &lt;email&gt;jim@wistia.com&lt;/email&gt;
  &lt;/share&gt;
  &lt;project&gt;
    &lt;id&gt;13&lt;/id&gt;
    &lt;name&gt;My Project&lt;/name&gt;
  &lt;/project&gt;
&lt;/sharing&gt;
</code></pre>

#### Errors

While we know your code is literally flawless, late nights and too much Jolt can cause errors.

If the request would cause the system to get into an invalid or inconsistent state, the update operation will fail. Errors will look like the following:

#### Example JSON Error Response

**Status:** 400 Bad Request

<pre><code class="language-json">
[
&quot;Groups may not be project admins.&quot;, &quot;Only account managers may be project admins.&quot; 
]
</code></pre>

#### Example XML Error Response

**Status:** 400 Bad Request

<pre><code class="language-xml">
&lt;errors&gt;
  &lt;error&gt;Groups may not be project admins.&lt;/error&gt;
  &lt;error&gt;Only account managers may be project admins.&lt;/error&gt;
&lt;/errors&gt;
</code></pre>

---

### Project Sharings: Delete

The Wistia data API allows you to delete a sharing on a project.

#### Request

<pre><code class="language-markup">DELETE https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;.json</code></pre>

Make sure you replace *&lt;project-id&gt;* with the hashed ID of 
the project that you want, and replace *&lt;sharing-id&gt;* with the 
ID of the sharing you want to delete.

#### Parameters
This action does not take any parameters.

#### Response

If the sharing is deleted successfully, the server will respond with 
HTTP status **200 OK** to let you know that it worked.
The body of the response will contain an object representing the sharing that was just deleted.


Field     | Description
----------|-----------------
id          | A unique numeric identifier for the sharing object within the system.
isAdmin     | This field indicates whether the user has admin rights on the project.
canShare    | This field indicates whether the user is allowed to share the project with others.
canDownload | This field indicates whether the user is allowed to download files from the project.
canUpload   | This field indicates whether the user is allowed to upload files to the project.
share       | An object identifying the Contact or ContactGroup with which this sharing object ties the project.  See below for a description of the fields in this object.
project     | An object representing the project to which this sharing object grants access.  It only has 2 attributes: id and name, which both have the same meaning as they do elsewhere in the API.

The attributes of each share object are as follows:

Field      | Description
-----------|--------------
id               | A unique numeric identifier for the Contact or ContactGroup.
name             | The display name of this Contact or ContactGroup.
type             | A string representing what type of share this object represents: &#039;Contact&#039; or &#039;ContactGroup&#039;.
email (optional) | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it&#039;s a ContactGroup, this field will be omitted.


#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 14,
    &quot;isAdmin&quot;: true,
    &quot;canShare&quot;: true,
    &quot;canDownload&quot;: true,
    &quot;canUpload&quot;: true,
    &quot;share&quot;: {
      &quot;id&quot;: 3,
      &quot;name&quot;: &quot;Jim&quot;,
      &quot;type&quot;: &quot;Contact&quot;,
      &quot;email&quot;: &quot;jim@wistia.com&quot;
    },
    &quot;project&quot;: {
      &quot;id&quot;: 13,
      &quot;name&quot;: &quot;My Project&quot;
    }
}
</code></pre>

#### Example XML Response


<pre><code class="language-xml">
&lt;sharing&gt;
  &lt;id&gt;14&lt;/id&gt;
  &lt;isAdmin&gt;true&lt;/isAdmin&gt;
  &lt;canShare&gt;true&lt;/canShare&gt;
  &lt;canDownload&gt;true&lt;/canDownload&gt;
  &lt;canUpload&gt;true&lt;/canUpload&gt;
  &lt;share&gt;
    &lt;id&gt;3&lt;/id&gt;
    &lt;name&gt;Jim&lt;/name&gt;
    &lt;type&gt;Contact&lt;/type&gt;
    &lt;email&gt;jim@wistia.com&lt;/email&gt;
  &lt;/share&gt;
  &lt;project&gt;
    &lt;id&gt;13&lt;/id&gt;
    &lt;name&gt;My Project&lt;/name&gt;
  &lt;/project&gt;
&lt;/sharing&gt;
</code></pre>

---

## Medias

### Medias: List

Using the Wistia data API, you can obtain a list of all the media in your account.

#### Request

The format of the request should be something like this:

<pre><code class="language-markup">https://api.wistia.com/v1/medias.json</code></pre>

#### Parameters

**Sorting**<br/>
You can get the results back sorted by the **name**, **created**, or 
**updated** fields.  In order to specify how you want the results to be sorted, append one or both of the 
following query parameters to the request URL:

Parameter | Description
----------|-------------
sort_by | The name of the field to sort by.  Valid values are name, created, or updated.  Any other value will cause the results to be sorted by id, which is the default.
sort_direction (optional, defaults to 1) | This field specifies the direction of the sort.  Valid values are 1 or 0, which specify ascending or descending order, respectively.

For example, if you want to sort your results in descending order by the date each media was created (i.e. when it was first uploaded to Wistia), your request URL would look something like this:

<pre><code class="language-markup">https://api.wistia.com/v1/medias.json?sort_by=created&amp;sort_direction=0</code></pre>

**Paging**<br/>
You can get your results back in chunks using the paging feature.  In order to set the page size and/or the number of pages that you want to see, use the following query parameters:

Parameter | Description
----------|--------------
page (optional, defaults to 1) | Specifies which page of the results you want to see.  Note that this parameter starts at 1, as opposed to 0.
per_page (optional, defaults to 100) | This parameter lets you set how many results you want to get back in each request.  In order to mitigate long-running requests to the API, the maximum value of this parameter is 100.

For example, if you want to get your results back 10 media at a time, starting on the second page of results, 
then your request URL should look something like this:

<pre><code class="language-markup">https://api.wistia.com/v1/medias.json?page=2&amp;per_page=10</code></pre>

**Filtering**<br/>
You can filter the results by project or type of media.  Similar to sorting, filters are specified by appending query 
parameters to the end of the URL used to 
access the API.  The following table lists the parameters 
that you can use for filtering and a description of how to use them.

Parameter | Description
----------|---------------
project_id | An integer specifying the project from which you would like to get results.
name | Find a media or medias whose name exactly matches this parameter.
type       | A string specifying which type of media you would like to get.  The valid values are “Video”, “Audio”, “Image”, “PdfDocument”, “MicrosoftOfficeDocument”, “Swf”, or “UnknownType”.
hashed_id|Find the media by hashed_id, which is now present in Wistia embeds.


#### The Response

Assuming authentication is successful and the request is in good order, the 
HTTP response will contain a list of all media for the account.


Field     |  Description
----------|------------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
project             | An object representing information about the project in which the media resides.  It has 2 fields: the numeric id of the project, and the name of the project.
type                | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
progress (optional) | After a file has been uploaded to Wistia, it needs to be processed before it is available for online viewing.  This field is a floating point value between 0 and 1 that indicates the progress of that processing.
section (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
thumbnail           | An object representing the thumbnail for this media.  The attributes are URL, width, and height.
duration (optional) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.
assets              | An array of the assets available for this media.  See the table below for a description the fields in each asset object.
embedCode           | DEPRECATED: If you want to programmatically embed videos, use the <a href="{{ '/construct-an-embed-code' | post_url }}">Embedding API</a>.
description         | A description for the media which usually appears near the top of the sidebar on the media&#039;s page.
hashed_id           | This is a unique alphanumeric identified for the media. It's used all over the place, from URLs inside the Wistia application (e.g. http://home.wistia.com/medias/jocs98za4l) to embed codes!

Each asset object in the assets array has the following properties:

Field        | Description
-------------|-----------------
url               | A direct-access URL to the content of the asset.
width (optional)  | The width of this specific asset, if applicable.
height (optional) | The height of this specific asset, if applicable.
fileSize          | The size of the asset file that&#039;s referenced by url, measured in bytes.
contentType       | The asset&#039;s content type.
type              | The internal type of the asset, describing how the asset should be used.  Valid values are “OriginalFile”, “FlashVideoFile”, “Mp4VideoFile”, “IPhoneVideoFile”, “StillImageFile”, “SwfFile”, “Mp3AudioFile”, and “LargeImageFile”.

#### Example JSON Response


<pre><code class="language-json">
&lt;medias&gt;
  &lt;media&gt;
  &lt;id&gt;181279&lt;/id&gt;
  &lt;name&gt;Introducing the Slimlist&lt;/name&gt;
  &lt;project&gt;
  &lt;id&gt;22570&lt;/id&gt;
  &lt;name&gt;Slimlist for Website&lt;/name&gt;
  &lt;/project&gt;
  &lt;type&gt;Video&lt;/type&gt;
  &lt;section&gt;Trailers&lt;/section&gt;
  &lt;progress&gt;1.0&lt;/progress&gt;
  &lt;thumbnail&gt;
    &lt;url&gt;http://www.wistia.com/path/to/thumbnail2.png&lt;/url&gt;
    &lt;width&gt;100&lt;/width&gt;
    &lt;height&gt;60&lt;/height&gt;
  &lt;/thumbnail&gt;
  &lt;duration&gt;126&lt;/duration&gt;
  &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-21T21:47:00+00:00&lt;/updated&gt;
  &lt;assets&gt;
    &lt;asset&gt;
      &lt;url&gt;http://www.wistia.com/path/to/original-file.bin&lt;/url&gt;
      &lt;width&gt;640&lt;/width&gt;
      &lt;height&gt;272&lt;/height&gt;
      &lt;fileSize&gt;12345678&lt;/fileSize&gt;
      &lt;contentType&gt;video/quicktime&lt;/contentType&gt;
      &lt;type&gt;Original&lt;/type&gt;
    &lt;/asset&gt;
    &lt;asset&gt;
      &lt;url&gt;http://www.wistia.com/path/to/mp4-version.bin&lt;/url&gt;
      &lt;width&gt;640&lt;/width&gt;
      &lt;height&gt;272&lt;/height&gt;
      &lt;fileSize&gt;12123456&lt;/fileSize&gt;
      &lt;contentType&gt;video/mp4&lt;/contentType&gt;
      &lt;type&gt;Mp4Video&lt;/type&gt;
    &lt;/asset&gt;
    &lt;asset&gt;
      &lt;url&gt;http://www.wistia.com/path/to/still-image.bin&lt;/url&gt;
      &lt;width&gt;640&lt;/width&gt;
      &lt;height&gt;272&lt;/height&gt;
      &lt;fileSize&gt;92008&lt;/fileSize&gt;
      &lt;contentType&gt;image/jpeg&lt;/contentType&gt;
      &lt;type&gt;StillImageFile&lt;/type&gt;
    &lt;/asset&gt;
  &lt;/assets&gt;
  &lt;embedCode&gt;&lt;object id='wistia_1' classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'
  width='640' height='360'&gt;&lt;param name='allowfullscreen' value='true'
  /&gt;&lt;param name='allowscriptaccess' value='always' /&gt;&lt;param name='wmode'
  value='opaque' /&gt;&lt;param name='flashvars' value='videoUrl=http://brendan.unraw.net/deliveries/57c6fbdfa4c236ce5a84abaf4363568355a2f059.bin&amp;stillUrl=http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin&amp;playButtonVisible=true&amp;controlsVisibleOnLoad=false&amp;unbufferedSeek=true&amp;autoLoad=false&amp;autoPlay=false&amp;embedServiceURL=http://distillery.wistia.com/x&amp;accountKey=jim-development_1&amp;mediaID=jim-development_1&amp;mediaDuration=6.51'
  /&gt;&lt;param name='movie' value='http://brendan.unraw.net/flash/embed_player_v1.1.swf'
  /&gt;&lt;embed src='http://brendan.unraw.net/flash/embed_player_v1.1.swf'
  name='wistia_1' type='application/x-shockwave-flash' width='640' height='360'
  allowfullscreen='true' allowscriptaccess='always' wmode='opaque' flashvars='videoUrl=http://brendan.unraw.net/deliveries/57c6fbdfa4c236ce5a84abaf4363568355a2f059.bin&amp;stillUrl=http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin&amp;playButtonVisible=true&amp;controlsVisibleOnLoad=false&amp;unbufferedSeek=true&amp;autoLoad=false&amp;autoPlay=false&amp;embedServiceURL=http://distillery.wistia.com/x&amp;accountKey=jim-development_1&amp;mediaID=jim-development_1&amp;mediaDuration=6.51'&gt;&lt;/embed&gt;&lt;/object&gt;&lt;script
  src='http://brendan.unraw.net/embeds/v.js'&gt;&lt;/script&gt;&lt;script&gt;if(!navigator.mimeTypes['application/x-shockwave-flash'])Wistia.VideoEmbed('wistia_1','640','360',{videoUrl:'http://brendan.unraw.net/deliveries/5b7bd7827acb4315198b421aa9d5ffc55de8df11.bin',stillUrl:'http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'jim-development_1',mediaId:'jim-development_1',mediaDuration:6.51})&lt;/script&gt;&lt;/embedCode&gt;
  &lt;description&gt;Test Description&lt;/description&gt;
  &lt;hashed_id&gt;abc123&lt;/hashed_id&gt;
  &lt;/media&gt;
&lt;/medias&gt;
</code></pre>


#### Example XML Response


<pre><code class="language-xml">
&lt;medias&gt;
&lt;media&gt;
&lt;id&gt;181279&lt;/id&gt;
&lt;name&gt;Introducing the Slimlist&lt;/name&gt;
&lt;project&gt;
&lt;id&gt;22570&lt;/id&gt;
&lt;name&gt;Slimlist for Website&lt;/name&gt;
&lt;/project&gt;
&lt;type&gt;Video&lt;/type&gt;
&lt;section&gt;Trailers&lt;/section&gt;
&lt;progress&gt;1.0&lt;/progress&gt;
&lt;thumbnail&gt;
&lt;url&gt;http://www.wistia.com/path/to/thumbnail2.png&lt;/url&gt;
&lt;width&gt;100&lt;/width&gt;
&lt;height&gt;60&lt;/height&gt;
&lt;/thumbnail&gt;
&lt;duration&gt;126&lt;/duration&gt;
&lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
&lt;updated&gt;2010-08-21T21:47:00+00:00&lt;/updated&gt;
&lt;assets&gt;
&lt;asset&gt;
&lt;url&gt;http://www.wistia.com/path/to/original-file.bin&lt;/url&gt;
&lt;width&gt;640&lt;/width&gt;
&lt;height&gt;272&lt;/height&gt;
&lt;fileSize&gt;12345678&lt;/fileSize&gt;
&lt;contentType&gt;video/quicktime&lt;/contentType&gt;
&lt;type&gt;Original&lt;/type&gt;
&lt;/asset&gt;
&lt;asset&gt;
&lt;url&gt;http://www.wistia.com/path/to/mp4-version.bin&lt;/url&gt;
&lt;width&gt;640&lt;/width&gt;
&lt;height&gt;272&lt;/height&gt;
&lt;fileSize&gt;12123456&lt;/fileSize&gt;
&lt;contentType&gt;video/mp4&lt;/contentType&gt;
&lt;type&gt;Mp4Video&lt;/type&gt;
&lt;/asset&gt;
&lt;asset&gt;
&lt;url&gt;http://www.wistia.com/path/to/still-image.bin&lt;/url&gt;
&lt;width&gt;640&lt;/width&gt;
&lt;height&gt;272&lt;/height&gt;
&lt;fileSize&gt;92008&lt;/fileSize&gt;
&lt;contentType&gt;image/jpeg&lt;/contentType&gt;
&lt;type&gt;StillImageFile&lt;/type&gt;
&lt;/asset&gt;
&lt;/assets&gt;
&lt;embedCode&gt;&amp;lt;object id=&#039;wistia_1&#039; classid=&#039;
clsid:D27CDB6E-AE6D-11cf-96B8-444553540000&#039; width=&#039;640&#039;
height=&#039;360&#039;&amp;gt;&amp;lt;param name=&#039;allowfullscreen&#039;
value=&#039;true&#039; /&amp;gt;&amp;lt;param name=&#039;
allowscriptaccess&#039; value=&#039;always&#039; /&amp;gt;&amp;
lt;param name=&#039;wmode&#039; value=&#039;opaque&#039; /&amp;gt;&amp;
lt;param name=&#039;flashvars&#039; value=&#039;
videoUrl=http://brendan.unraw.net/deliveries/
57c6fbdfa4c236ce5a84abaf4363568355a2f059.bin&amp;amp;
stillUrl=http://brendan.unraw.net/deliveries/
b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin&amp;amp;
playButtonVisible=true&amp;amp;controlsVisibleOnLoad=false&amp;amp;
unbufferedSeek=true&amp;amp;autoLoad=false&amp;amp;autoPlay=false&amp;amp;
embedServiceURL=http://distillery.wistia.com/x&amp;
accountKey=jim-development_1&amp;amp;mediaID=jim-development_1&amp;
mediaDuration=6.51&#039; /&amp;gt;&amp;lt;param name=&#039;movie&#039;
value=&#039;http://brendan.unraw.net/flash/embed_player_v1.1.swf&#039;
/&amp;gt;&amp;lt;embed src=&#039;http://brendan.unraw.net/flash/
embed_player_v1.1.swf&#039; name=&#039;wistia_1&#039; type=&#039;
application/x-shockwave-flash&#039; width=&#039;640&#039; 
height=&#039;360&#039; allowfullscreen=&#039;true&#039; 
allowscriptaccess=&#039;always&#039; wmode=&#039;opaque&#039; 
flashvars=&#039;videoUrl=http://brendan.unraw.net/deliveries/
57c6fbdfa4c236ce5a84abaf4363568355a2f059.bin&amp;
stillUrl=http://brendan.unraw.net/deliveries/
b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin&amp;
playButtonVisible=true&amp;amp;controlsVisibleOnLoad=false&amp;
unbufferedSeek=true&amp;
autoLoad=false&amp;amp;autoPlay=false&amp;
embedServiceURL=http://distillery.wistia.com/x&amp;
accountKey=jim-development_1&amp;amp;mediaID=jim-development_1&amp;
mediaDuration=6.51&#039;&amp;gt;&amp;lt;/embed&amp;gt;&amp;
lt;/object&amp;gt;&amp;lt;script src=&#039;
http://brendan.unraw.net/embeds/v.js&#039;&amp;gt;&amp;lt;/script&amp;
gt;&amp;lt;script&amp;gt;if(!navigator.mimeTypes[&#039;
application/x-shockwave-flash&#039;])Wistia.VideoEmbed(&#039;wistia_1&#039;
,&#039;640&#039;,&#039;360&#039;,{videoUrl:&#039;
http://brendan.unraw.net/deliveries/
5b7bd7827acb4315198b421aa9d5ffc55de8df11.bin&#039;,stillUrl:&#039;
http://brendan.unraw.net/deliveries/
b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin&#039;
,distilleryUrl:&#039;http://distillery.wistia.com/x&#039;,accountKey:&#039;
jim-development_1&#039;,mediaId:&#039;jim-development_1&#039;
,mediaDuration:6.51})&amp;lt;/script&amp;gt;&lt;/embedCode&gt;
&lt;description&gt;Test Description&lt;/description&gt;
&lt;hashed_id&gt;abc123&lt;/hashed_id&gt;
&lt;/media&gt;
&lt;/medias&gt;
</code></pre>


---


### Media: Show

The Wistia data API allows 
you to get information about a specific piece of media that you have uploaded to your account.

#### Prerequisites/Required Info

* Your user ID and password.
* The ID of the specific piece of media that you want to retrieve.

#### Request

In order to tell Wistia that you want information about a specific piece of media, 
send an HTTP GET request to 
the following URL:

<pre><code class="language-markup">https://api.wistia.com/v1/medias/&lt;media-id&gt;.json</code></pre>

Make sure you replace *&lt;media-id&gt;* with the hashed ID of the media that you want.

#### Response

Assuming authentication is successful and the request is in good order, the 
HTTP response will contain 
detailed information about the requested media.  The format of the content (JSON or XML) depends on which extension was used to make the request.


Field      |  Description
-----------|-----------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
type                | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
section (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default). 
progress (optional) | After a file has been uploaded to Wistia, it needs to be processed before it is available for online viewing.  This field is a floating point value between 0 and 1 that indicates the progress of that processing.
thumbnail           | An object representing the thumbnail for this media.  The attributes are URL, width, and height.
duration (optional) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.
assets              | An array of the assets available for this media.  See the table below for a description the fields in each asset object.
embedCode           | DEPRECATED: If you want to programmatically embed videos, use the <a href="{{ '/construct-an-embed-code' | post_url }}">Embedding API</a>.
description         | A description for the media which usually appears near the top of the sidebar on the media&#039;s page.
hashed_id           | An id that can be used to construct iframe embeds by creating an iframe that points to http://app.wistia.com/embed/medias/&lt;hashed_id&gt;


Each asset object in the assets array has the following properties:

Field     |  Description
----------|-----------------
url               | A direct-access URL to the content of the asset. These URLs end in a .bin extension (for binary).
width (optional)  | The width of this specific asset, if applicable.
height (optional) | The height of this specific asset, if applicable.
fileSize          | The size of the asset file that&#039;s referenced by url, measured in bytes.
contentType       | The asset&#039;s content type.
type              | The internal type of the asset, describing how the asset should be used.  Valid values are “OriginalFile”, “FlashVideoFile”, “Mp4VideoFile”, “IPhoneVideoFile”, “StillImageFile”, “SwfFile”, “Mp3AudioFile”, and “LargeImageFile”.


#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 181279,
    &quot;name&quot;: &quot;Introducing the Slimlist&quot;,
    &quot;type&quot;: &quot;Video&quot;,
    &quot;section&quot;: &quot;Trailers&quot;,
    &quot;progress&quot;: 1.0
      &quot;thumbnail&quot;: {
        &quot;url&quot;: &quot;http://www.wistia.com/path/to/thumbnail2.png&quot;,
        &quot;width&quot;: 100,
        &quot;height&quot;: 60
      },
    &quot;duration&quot;: 126,
    &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-21T21:47:00+00:00&quot;,
    &quot;assets&quot;: [
    {
      &quot;url&quot;: &quot;http://www.wistia.com/path/to/original-file.bin&quot;,
      &quot;width&quot;: 640,
      &quot;height&quot;: 272,
      &quot;fileSize&quot;: 12345678,
      &quot;contentType&quot;: &quot;video/quicktime&quot;,
      &quot;type&quot;: &quot;Original&quot;
    },
    {
      &quot;url&quot;: &quot;http://www.wistia.com/path/to/mp4-version.bin&quot;,
      &quot;width&quot;: 640,
      &quot;height&quot;: 272,
      &quot;fileSize&quot;: 12123456,
      &quot;contentType&quot;: &quot;video/mp4&quot;,
      &quot;type&quot;: &quot;Mp4Video&quot;
    },
    {
      &quot;url&quot;: &quot;http://www.wistia.com/path/to/still-image.bin&quot;,
      &quot;width&quot;: 640,
      &quot;height&quot;: 272,
      &quot;fileSize&quot;: 92008,
      &quot;contentType&quot;: &quot;image/jpeg&quot;,
      &quot;type&quot;: &quot;StillImageFile&quot;
    }
  ],
    &quot;embedCode&quot;: &quot;&lt;object width=&quot;640&quot; height=&quot;272&quot; id=&quot;wistia_181279&quot; classid=&quot;clsid:D27CDB6E-AE6D-11cf-96B8-444553540000&quot;&gt;&lt;param name=&quot;movie&quot; value=&quot;http://embed.wistia.com/flash/embed_player_v1.1.swf&quot;/&gt;&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot;/&gt;&lt;param name=&quot;allowscriptaccess&quot; value=&quot;always&quot;/&gt;&lt;param name=&quot;wmode&quot; value=&quot;opaque&quot;/&gt;&lt;param name=&quot;flashvars&quot; value=&quot;videoUrl=http://embed.wistia.com/deliveries/
      14cb1fed9fb9d2c235be9e00e7998ad3a9e1a278.bin&amp;stillUrl=http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&amp;unbufferedSeek=false&amp;controlsVisibleOnLoad=false&amp;autoPlay=false&amp;endVideoBehavior=default&amp;playButtonVisible=true&amp;embedServiceURL=http://distillery.wistia.com/x&amp;accountKey=wistia-production_97&amp;mediaID=wistia-production_181279&amp;mediaDuration=74.4&quot;/&gt;&lt;embed src=&quot;http://embed.wistia.com/flash/embed_player_v1.1.swf&quot; width=&quot;640&quot; height=&quot;272&quot; name=&quot;wistia_181279&quot; type=&quot;application/x-shockwave-flash&quot; allowfullscreen=&quot;true&quot; allowscriptaccess=&quot;always&quot; wmode=&quot;opaque&quot; flashvars=&quot;videoUrl=http://embed.wistia.com/deliveries/
      14cb1fed9fb9d2c235be9e00e7998ad3a9e1a278.bin&amp;stillUrl=http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&amp;unbufferedSeek=false&amp;controlsVisibleOnLoad=false&amp;autoPlay=false&amp;endVideoBehavior=default&amp;playButtonVisible=true&amp;embedServiceURL=http://distillery.wistia.com/x&amp;accountKey=wistia-production_97&amp;mediaID=wistia-production_181279&amp;mediaDuration=74.4&quot;&gt;&lt;/embed&gt;&lt;/object&gt;&lt;script src=&quot;http://embed.wistia.com/embeds/v.js&quot; charset=&quot;ISO-8859-1&quot;&gt;&lt;/script&gt;&lt;script&gt;if(!navigator.mimeTypes[&#039;application/x-shockwave-flash&#039;])Wistia.VideoEmbed(&#039;wistia_181279&#039;,640,272,{videoUrl:&#039;http://embed.wistia.com/deliveries/
      14cb1fed9fb9d2c235be9e00e7998ad3a9e1a278.bin&#039;,stillUrl:&#039;http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&#039;,distilleryUrl:&#039;http://distillery.wistia.com/x&#039;,accountKey:&#039;wistia-production_97&#039;,mediaId:&#039;wistia-production_181279&#039;,mediaDuration:74.4})&lt;/script&gt;&quot;,
    description: &quot;Test Description&quot;,
    hashed_id: &quot;abc123&quot;
}
</code></pre>

#### Example XML Response


<pre><code class="language-xml">
&lt;media&gt;
  &lt;id&gt;181279&lt;/id&gt;
  &lt;name&gt;Introducing the Slimlist&lt;/name&gt;
  &lt;type&gt;Video&lt;/type&gt;
  &lt;section&gt;Trailers&lt;/section&gt;
  &lt;progress&gt;1.0&lt;/progress&gt;
  &lt;thumbnail&gt;
    &lt;url&gt;http://www.wistia.com/path/to/thumbnail2.png&lt;/url&gt;
    &lt;width&gt;100&lt;/width&gt;
    &lt;height&gt;60&lt;/height&gt;
  &lt;/thumbnail&gt;
  &lt;duration&gt;126&lt;/duration&gt;
  &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-21T21:47:00+00:00&lt;/updated&gt;
  &lt;assets&gt;
    &lt;asset&gt;
      &lt;url&gt;http://www.wistia.com/path/to/original-file.bin&lt;/url&gt;
      &lt;width&gt;640&lt;/width&gt;
      &lt;height&gt;272&lt;/height&gt;
      &lt;fileSize&gt;12345678&lt;/fileSize&gt;
      &lt;contentType&gt;video/quicktime&lt;/contentType&gt;
      &lt;type&gt;Original&lt;/type&gt;
    &lt;/asset&gt;
    &lt;asset&gt;
      &lt;url&gt;http://www.wistia.com/path/to/mp4-version.bin&lt;/url&gt;
      &lt;width&gt;640&lt;/width&gt;
      &lt;height&gt;272&lt;/height&gt;
      &lt;fileSize&gt;12123456&lt;/fileSize&gt;
      &lt;contentType&gt;video/mp4&lt;/contentType&gt;
      &lt;type&gt;Mp4Video&lt;/type&gt;
    &lt;/asset&gt;
    &lt;asset&gt;
      &lt;url&gt;http://www.wistia.com/path/to/still-image.bin&lt;/url&gt;
      &lt;width&gt;640&lt;/width&gt;
      &lt;height&gt;272&lt;/height&gt;
      &lt;fileSize&gt;92008&lt;/fileSize&gt;
      &lt;contentType&gt;image/jpeg&lt;/contentType&gt;
      &lt;type&gt;StillImageFile&lt;/type&gt;
    &lt;/asset&gt;
  &lt;/assets&gt;
  &lt;embedCode&gt;&amp;lt;object id=&#039;wistia_181279&#039; classid=&#039;clsid:D27CDB6E-AE6D-11cf-96B8-444553540000&#039; width=&#039;640&#039; height=&#039;360&#039;&amp;gt;&amp;lt;param name=&#039;allowfullscreen&#039; value=&#039;true&#039; /&amp;gt;&amp;lt;param name=&#039;allowscriptaccess&#039; value=&#039;always&#039; /&amp;gt;&amp;lt;param name=&#039;wmode&#039; value=&#039;opaque&#039; /&amp;gt;&amp;lt;param name=&#039;flashvars&#039; value=&#039;videoUrl=http://brendan.unraw.net/deliveries/57c6fbdfa4c236ce5a84abaf4363568355a2f059.bin&amp;amp;stillUrl=http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin&amp;amp;playButtonVisible=true&amp;amp;controlsVisibleOnLoad=false&amp;amp;unbufferedSeek=true&amp;amp;autoLoad=false&amp;amp;autoPlay=false&amp;amp;embedServiceURL=http://distillery.wistia.com/x&amp;amp;accountKey=jim-development_1&amp;amp;mediaID=jim-development_1&amp;amp;mediaDuration=6.51&#039; /&amp;gt;&amp;lt;param name=&#039;movie&#039; value=&#039;http://brendan.unraw.net/flash/embed_player_v1.1.swf&#039; /&amp;gt;&amp;lt;embed src=&#039;http://brendan.unraw.net/flash/embed_player_v1.1.swf&#039; name=&#039;wistia_1&#039; type=&#039;application/x-shockwave-flash&#039; width=&#039;640&#039; height=&#039;360&#039; allowfullscreen=&#039;true&#039; allowscriptaccess=&#039;always&#039; wmode=&#039;opaque&#039; flashvars=&#039;videoUrl=http://brendan.unraw.net/deliveries/57c6fbdfa4c236ce5a84abaf4363568355a2f059.bin&amp;amp;stillUrl=http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin&amp;amp;playButtonVisible=true&amp;amp;controlsVisibleOnLoad=false&amp;amp;unbufferedSeek=true&amp;amp;autoLoad=false&amp;amp;autoPlay=false&amp;amp;embedServiceURL=http://distillery.wistia.com/x&amp;amp;accountKey=jim-development_1&amp;amp;mediaID=jim-development_1&amp;amp;mediaDuration=6.51&#039;&amp;gt;&amp;lt;/embed&amp;gt;&amp;lt;/object&amp;gt;&amp;lt;script src=&#039;http://brendan.unraw.net/embeds/v.js&#039;&amp;gt;&amp;lt;/script&amp;gt;&amp;lt;script&amp;gt;if(!navigator.mimeTypes[&#039;application/x-shockwave-flash&#039;])Wistia.VideoEmbed(&#039;wistia_1&#039;,&#039;640&#039;,&#039;360&#039;,{videoUrl:&#039;http://brendan.unraw.net/deliveries/5b7bd7827acb4315198b421aa9d5ffc55de8df11.bin&#039;,stillUrl:&#039;http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin&#039;,distilleryUrl:&#039;http://distillery.wistia.com/x&#039;,accountKey:&#039;jim-development_1&#039;,mediaId:&#039;jim-development_1&#039;,mediaDuration:6.51})&amp;lt;/script&amp;gt;&lt;/embedCode&gt;
  &lt;description&gt;Test Description&lt;/description&gt;
  &lt;hashed_id&gt;abc123&lt;/hashed_id&gt;
&lt;/media&gt;</code></pre>



---


### Media: Update

The Wistia data API allows you to update a piece of media.

#### The Request

<pre><code class="language-markup">PUT https://api.wistia.com/v1/medias/&lt;media-id&gt;.json</code></pre>

Make sure you replace *&lt;media-id&gt;* with the hashed ID of the media that you want to update.


Parameter Name      |  Description
--------------------|-------------------------
name               | The media&#039;s new name.
new_still_media_id | The numeric ID of an image within the system that will replace the still that&#039;s displayed before the player starts playing.  If this parameter is present while updating a non-video media, or if it specifies a non-image type media, then the call will fail with an error.
description        | A new description to display next to the media within Wistia.


#### The Response

If the media update is successful, the server will send a response with the following fields:


Field  |  Description
-------|---------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
type                | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
section (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
progress (optional) | After a file has been uploaded to Wistia, it needs to be processed before it is available for online viewing.  This field is a floating point value between 0 and 1 that indicates the progress of that processing.
thumbnail           | An object representing the thumbnail for this media.  The attributes are url, width, and height.
duration (optional) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.


#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 181279,
    &quot;name&quot;: &quot;Introducing the Slimlist&quot;,
    &quot;type&quot;: &quot;Video&quot;,
    &quot;section&quot;: &quot;Trailers&quot;,
    &quot;progress&quot;: 1.0,
    &quot;thumbnail&quot;: {
      &quot;url&quot;: &quot;http://www.wistia.com/path/to/thumbnail2.png&quot;,
      &quot;width&quot;: 100,
      &quot;height&quot;: 60
    },
    &quot;duration&quot;: 126,
    &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-21T21:47:00+00:00&quot;
}
</code></pre>

#### Example XML Response


<pre><code class="language-json">
&lt;media&gt;
  &lt;id&gt;181279&lt;/id&gt;
  &lt;name&gt;Introducing the Slimlist&lt;/name&gt;
  &lt;type&gt;Video&lt;/type&gt;
  &lt;section&gt;Trailers&lt;/section&gt;
  &lt;progress&gt;1.0&lt;/progress&gt;
  &lt;thumbnail&gt;
    &lt;url&gt;http://www.wistia.com/path/to/thumbnail2.png&lt;/url&gt;
    &lt;width&gt;100&lt;/width&gt;
    &lt;height&gt;60&lt;/height&gt;
  &lt;/thumbnail&gt;
  &lt;duration&gt;126&lt;/duration&gt;
  &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-21T21:47:00+00:00&lt;/updated
&lt;/media&gt;
</code></pre>

---

### Media: Delete

The Wistia data API allows you to delete a piece of media.

#### The Request

<pre><code class="language-markup">DELETE https://api.wistia.com/v1/medias/&lt;media-id&gt;.json</code></pre>

Make sure you replace *&lt;media-id&gt;*
with the hashed ID of the media that you want to delete.  This action does not take any parameters.

#### The Response

If the media is deleted successfully, the server will respond with 
HTTP status **200 OK** 
to let you know that it worked.  The body of the response will contain an object representing the piece of media that was just deleted.


Field    |  Description
---------|-----------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
type                | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
section (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
progress (optional) | After a file has been uploaded to Wistia, it needs to be processed before it is available for online viewing.  This field is a floating point value between 0 and 1 that indicates the progress of that processing.
thumbnail           | An object representing the thumbnail for this media.  The attributes are url, width, and height.
duration (optional) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.



#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 181279,
    &quot;name&quot;: &quot;Introducing the Slimlist&quot;,
    &quot;type&quot;: &quot;Video&quot;,
    &quot;section&quot;: &quot;Trailers&quot;,
    &quot;progress&quot;: 1.0,
    &quot;thumbnail&quot;: {
      &quot;url&quot;: &quot;http://www.wistia.com/path/to/thumbnail2.png&quot;,
      &quot;width&quot;: 100,
      &quot;height&quot;: 60
    },
    &quot;duration&quot;: 126,
    &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-21T21:47:00+00:00&quot;
}
</code></pre>


#### Example XML Response


<pre><code class="language-xml">
&lt;media&gt;
  &lt;id&gt;181279&lt;/id&gt;
  &lt;name&gt;Introducing the Slimlist&lt;/name&gt;
  &lt;type&gt;Video&lt;/type&gt;
  &lt;section&gt;Trailers&lt;/section&gt;
  &lt;progress&gt;1.0&lt;/progress&gt;
  &lt;thumbnail&gt;
    &lt;url&gt;http://www.wistia.com/path/to/thumbnail2.png&lt;/url&gt;
    &lt;width&gt;100&lt;/width&gt;
    &lt;height&gt;60&lt;/height&gt;
  &lt;/thumbnail&gt;
  &lt;duration&gt;126&lt;/duration&gt;
  &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-21T21:47:00+00:00&lt;/updated
&lt;/media&gt;
</code></pre>

---


### Media: Copy

The Wistia data API allows you to copy a piece of media.

#### The Request

<pre><code class="language-markup">POST https://api.wistia.com/v1/medias/&lt;media-id&gt;/copy.json</code></pre>

Make sure you replace *&lt;media-id&gt;* with the hashed ID of the media that you want to copy.

#### Parameters

Parameter     |  Description
--------------|----------------
project_id (optional) | The ID of the project where you want the new copy placed.  If this value is invalid or omitted, defaults to the source media&#039;s current project.
owner (optional)      | An email address specifying the owner of the new media.  If this value is invalid or omitted, defaults to the source media&#039;s current owner.

#### The Response

If the media is copied successfully, the server will respond with 
HTTP status **201 Created** 
to let you know that it worked.  The HTTP 
**Location** header will be set to the URL 
where the newly created media resource resides.  The body of the response will contain an object representing 
the *new copy* of the media that was just created.


Field     |  Description
----------|----------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
type                | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
section (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
progress (optional) | After a file has been uploaded to Wistia, it needs to be processed before it is available for online viewing.  This field is a floating point value between 0 and 1 that indicates the progress of that processing.
thumbnail           | An object representing the thumbnail for this media.  The attributes are url, width, and height.
duration (optional) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.


#### Example JSON Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/medias/3.json

<pre><code class="language-json">
{
  &quot;id&quot;: 3,
    &quot;name&quot;: &quot;Introducing the Slimlist&quot;,
    &quot;type&quot;: &quot;Video&quot;,
    &quot;section&quot;: &quot;Trailers&quot;,
    &quot;progress&quot;: 1.0,
    &quot;thumbnail&quot;: {
      &quot;url&quot;: &quot;http://www.wistia.com/path/to/thumbnail2.png&quot;,
      &quot;width&quot;: 100,
      &quot;height&quot;: 60
    },
    &quot;duration&quot;: 126,
    &quot;created&quot;: &quot;2010-08-15T18:47:39+00:00&quot;,
    &quot;updated&quot;: &quot;2010-08-21T21:47:00+00:00&quot;
}
</code></pre>


#### Example XML Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/medias/3.xml

<pre><code class="language-xml">
&lt;media&gt;
  &lt;id&gt;3&lt;/id&gt;
  &lt;name&gt;Introducing the Slimlist&lt;/name&gt;
  &lt;type&gt;Video&lt;/type&gt;
  &lt;section&gt;Trailers&lt;/section&gt;
  &lt;progress&gt;1.0&lt;/progress&gt;
  &lt;thumbnail&gt;
    &lt;url&gt;http://www.wistia.com/path/to/thumbnail2.png&lt;/url&gt;
    &lt;width&gt;100&lt;/width&gt;
    &lt;height&gt;60&lt;/height&gt;
  &lt;/thumbnail&gt;
  &lt;duration&gt;126&lt;/duration&gt;
  &lt;created&gt;2010-08-15T18:47:39+00:00&lt;/created&gt;
  &lt;updated&gt;2010-08-21T21:47:00+00:00&lt;/updated
&lt;/media&gt;
</code></pre>

---


### Media: Show Stats

The Wistia data API allows 
you to get the aggregated tracking statistics for a video that has been embedded on your site.

**Note:** This request works for *videos only*.

If you try to get stats for a piece of media that is not a video, the server will respond with 
HTTP status code “400 Bad Request” and the body 
will contain an error message (in either XML or JSON format).

#### The Request

<pre><code class="language-markup">GET https://api.wistia.com/v1/medias/&lt;media-id&gt;/stats.json</code></pre>

Make sure you replace *&lt;media-id&gt;* with the 
hashed ID of the video for which you would like to retrieve statistics.  There are no parameters for this action.


#### The Response

If the request is successful, the server will send a response with something similar to the following:


Field   |  Description
--------|----------------
id    | A unique numeric identifier for the video within the system.
name  | The display name of the video.
stats | An object representing the aggregated embed statistics for this video.  See the next table for a description of what each attribute means. 

Here is the definition of each field in the **stats** object:

Field        |  Description
-------------|----------------
pageLoads                     | The total number of times that the page containing the embedded video has been loaded.
visitors                      | The number of unique visitors to the page containing the embedded video.
percentOfVisitorsClickingPlay | This is an integer between 0 and 100 that shows what percentage of the time someone who saw the page containing the embedded video played the video.
plays                         | The total number of times that the video has been played.
averagePercentWatched         | This is an integer between 0 and 100.  It shows the average percentage of the video that was watched over every time the video was played.  For example, if you embed a video on a page and then load that page and watch the video all the way through, the value of this field will be 100.  If you or someone else then loads the page but only watches half (50%) of the video, then the value of this field will drop to 75.


#### Example JSON Response


<pre><code class="language-json">
{
  &quot;id&quot;: 181279,
    &quot;name&quot;: &quot;Introducing the Slimlist&quot;,
    &quot;stats&quot;: {
      &quot;pageLoads&quot;: 96,
      &quot;visitors&quot;: 52,
      &quot;percentOfVisitorsClickingPlay&quot;: 42,
      &quot;plays&quot;: 43,
      &quot;averagePercentWatched&quot;: 74
    }
}
</code></pre>

#### Example XML Response


<pre><code class="language-xml">
&lt;media&gt;
  &lt;id&gt;181279&lt;/id&gt;
  &lt;name&gt;Introducing the Slimlist&lt;/name&gt;
  &lt;stats&gt;
  &lt;pageLoads&gt;96&lt;/pageLoads&gt;
  &lt;visitors&gt;52&lt;/visitors&gt;
  &lt;percentOfVisitorsClickingPlay&gt;42&lt;/percentOfVisitorsClickingPlay&gt;
  &lt;plays&gt;43&lt;/plays&gt;
  &lt;averagePercentWatched&gt;74&lt;/averagePercentWatched&gt;
  &lt;/stats&gt;
&lt;/media&gt;
</code></pre>

---

## Events API

#### The Request

<pre><code class="language-markup">GET https://api.wistia.com/v1/events.json?event_key=abc123</code></pre>

Event key is required (get it from the player API)

#### The Response

Field    |  Description
---------|---------------
Received_at    | Date and time that the event was received by our system
IP  | IP address of the person who watched the video
Country  | Country in which this event occurred
Region  | Region in which this event occurred
City  | City in which this event occurred
Lat  | Latitude of the ip address where this view came from
Lon  | Longitude of the ip address where this view came from
Org  | Organization to which the ip address is registered
Email  | Email address of the person who generated this event, if available
Percent_viewed  | Percentage of the video that was seen during this viewing session
Embed_url  | URL from which this video was played

---

## Account API

#### The Request

<pre><code class="language-markup">GET https://api.wistia.com/v1/events.json?event_key=abc123</code></pre>

#### The Response

Field   | Description
--------|-------------
Id    | Numeric id of the account
Name  | Account name
Url | Account's main Wistia URL


---

## Asset URLs - Tips &amp; Tricks

### Modifying File Extensions

Asset URLs in Wistia take this form:

<pre><code class="language-markup">http://embed.wistia.com/deliveries/43500c9644e43068d8995dcb5ddea82440419eaf.bin</code></pre>

The .bin extension at the URL is for binary. 
Certain ornery clients (iTunes, ahem) won&#039;t accept URLs that don&#039;t end in an extension that&#039;s familiar to them. 
In this case, you can drop the .bin, add a slash, and append whatever filename and extension you like – you&#039;ll still get the 
underlying asset. So, say the URL above is an mp4 file and we _really_ 
want that in the URL. Here&#039;s what we&#039;d have:

<pre><code class="language-markup">http://embed.wistia.com/deliveries/43500c9644e43068d8995dcb5ddea82440419eaf/my-file.mp4</code></pre>

### Resizing Images

Using the Data API or [oEmbed endpoint]({{ '/oembed' | post_url }}), you can obtain the thumbnail URL for your video, and then manipulate it. Check [working with images]({{'/working-with-images' | post_url }})
