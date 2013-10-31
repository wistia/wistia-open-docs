---
special_category_link: developers
api: true
layout: post
title: The Wistia Data API
description: Learn how to enable Data API access for your account.
category: Developers
post_intro: <p><a href="http://wistia.com">Wistia</a> is a video hosting solution for marketers.  We make it easy to upload, manage, share, and track your web video performance.</p><p>The Wistia data API gives you all kinds of programmatic access to your Wistia account. The data is available in either JSON or XML format over HTTP.</p><p>There is also a <a href="https://github.com/wistia/wistia-api" target="_blank">Wistia API Ruby gem</a> for access from the command line.</p><p><strong>Wistia API Exchange Forum:</strong> We've recently added a forum, just for Data API users.  It's meant to be a place for sharing projects and getting language-specific help. Head to <a href="http://dev-forum.wistia.com" target="_blank">http://dev-forum.wistia.com</a> to check it out!</p>
---

## Getting Started

Before delving into the specifics of using the API,
there are some general concepts that you should be aware of:

#### Generate an API Password

Generate an API password for your account from the *API* area in your Account Dashboard.

**Note:** The user name is always `api`.

{% post_image hashed_id: '655da9c9b7addebc9d935a02a987d9332bd5f3c1', class: 'center' %}

#### Authentication

You must use **SSL** (https instead of http) to access the API.

There are two ways to authenticate when accessing the API:

  1. **HTTP Basic authentication** with `api` as your username and your API password as the password.
  2. Add `api_password` as a parameter when making a request. For example:

<code class="full_width">https://api.wistia.com/v1/medias.json?api_password=xyz123</code>

#### JSON vs. XML

The request examples retrieve the data in **JSON** format.
If you would like the data in **XML** format, 
change the extension of the request from `json` to `xml`.

#### PUT and DELETE

Some HTTP clients are limited to sending GET and POST requests 
(e.g. HTML forms have this limitation).
You will notice, however, that many of the API calls only respond to 
**PUT** or **DELETE** requests.  In order to trigger these calls from a client that does not support 
**PUT** or **DELETE**, use a POST request and add a parameter named “\_method” (no quotes) with 
a value of either `put` or `delete`.

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

[ Wistia-API Ruby Gem ]( https://github.com/wistia/wistia-api ) - selected *best gem ever* by Jim Bancroft

[ Wistia-API PHP Class ]( https://github.com/stephenreid/wistia-api ) - created by Stephen Reid


## Projects

**Projects** are the main organizational objects within Wistia.
Media must be stored within Projects.

### Projects: List

#### Prerequisites

The username and password for your account.


#### The Request

In order to tell Wistia that you want a list of all projects, send the following request:

<code class="full_width">GET https://api.wistia.com/v1/projects.json</code>

#### Sorting

You can get the results back sorted by the name, `mediaCount`, created, or updated fields. 
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

<code class="full_width">https://api.wistia.com/v1/projects.json?sort_by=created&amp;sort_direction=0</code>

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

<code class="full_width">https://api.wistia.com/v1/projects.json?page=2&amp;per_page=10</code>

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
  <td> The project's display name.</td>
</tr>
<tr>
  <td> description </td>
  <td> The project's description.</td>
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


{% codeblock json_example_response.json %}
  [
    {
      "id": 22570,
      "name": "My Project Title",
      "description": "My Project Description",
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
      "description": "Another Project Description",
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
{% endcodeblock %}


#### Example XML Response


{% codeblock example_xml_response.xml %}
<projects>
  <project>
    <id>22570</id>
    <name>My Project Title</name>
    <description>My Project Description</description>
    <mediaCount>2</mediaCount>
    <created>2010-08-13T18:47:39+00:00</created>
    <updated>2010-08-19T21:47:00+00:00</updated>
    <hashedId>4d23503f70</hashedId>
    <anonymousCanUpload>false</anonymousCanUpload>
    <anonymousCanDownload>false</anonymousCanDownload>
    <public>false</public>
    <publicId>4bD</publicId>
  </project>
  <project>
    <id>10495</id>
    <name>Another Project Title</name>
    <description>Another Project Description</description>
    <mediaCount>4</mediaCount>
    <created>2010-08-13T18:47:39+00:00</created>
    <updated>2010-08-19T21:47:00+00:00</updated>
    <hashedId>4d23503f70</hashedId>
    <anonymousCanUpload>false</anonymousCanUpload>
    <anonymousCanDownload>false</anonymousCanDownload>
    <public>false</public>
    <publicId>3dF</publicId>
  </project>
</projects>
{% endcodeblock %}

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

<code class="full_width">GET https://api.wistia.com/v1/projects/&lt;project-id&gt;.json</code>

#### The Response

Assuming authentication is successful and the request is in good order, the 
HTTP response will contain detailed information 
about the requested project, including a list of the media in that project.  The format of the content 
(JSON or XML) depends on which extension was used to make the request.


Field | Description
------|---------------------------
id    | A unique numeric identifier for the project within the system.
name  | The project's title or display name.
description  | The project's description.
mediaCount | The number of media in the project.
created | The date that the project was originally created.
updated | The date that the project was last changed.
hashedId | A private hashed id, uniquely identifying the project within the system.  Used for playlists and RSS feeds.
anonymousCanUpload | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload | A boolean indicating whether or not anonymous downloads are enabled for this project.
public | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.
medias | An array containing a list of objects representing the media in the project.  See the table below for a description of the fields in each media entry.

Each entry in the media array for a project has the following fields:

Field | Description
------|------------
id | A unique numeric identifier for the media within the system.
name  | The display name of the media.
section (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
thumbnail     | An object representing the thumbnail for this media.  The attributes are URL, width, and height.
type  | A string representing what type of media this is. Values can be “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
duration (optional) | For Audio or Video files, this field specifies the length (in seconds). For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created   | The date when the media was originally uploaded.
updated   | The date when the media was last changed.


#### Example JSON Response


{% codeblock example_json_response.json %}
{
  "id": 22570,
    "name": "My Project Title",
    "description": "My Project Description",
    "mediaCount": 2,
    "created": "2010-08-13T18:47:39+00:00",
    "updated": "2010-08-19T21:47:00+00:00",
    "hashedId": "4d23503f70",
    "anonymousCanUpload": false,
    "anonymousCanDownload": false,
    "public": false,
    "publicId": "4bD",
    "medias": [
    {
      "id": 181279,
      "name": "Introducing the Slimlist",
      "thumbnail": {
        "url": "http://www.wistia.com/path/to/thumbnail1.png",
        "width": 100,
        "height": 60
      },
      "type": "Video",
      "duration": 74,
      "created": "2010-08-14T18:47:39+00:00",
      "updated": "2010-08-20T21:47:00+00:00"
    },
    {
      "id": 181182,
      "name": "Due Date",
      "section": "Trailers",
      "thumbnail": {
        "url": "http://www.wistia.com/path/to/thumbnail2.png",
        "width": 100,
        "height": 60
      },
      "type": "Video",
      "duration": 126,
      "created": "2010-08-15T18:47:39+00:00",
      "updated": "2010-08-21T21:47:00+00:00"
    }
  ]
}
{% endcodeblock %}


#### Example XML Response


{% codeblock example_xml_response.xml %}
<project>
  <id>22570</id>
  <name>My Project Title</name>
  <description>My Project Description</description>
  <mediaCount>2</mediaCount>
  <created>2010-08-13T18:47:39+00:00</created>
  <updated>2010-08-19T21:47:00+00:00</updated>
  <hashedId>4d23503f70</hashedId>
  <anonymousCanUpload>false</anonymousCanUpload>
  <anonymousCanDownload>false</anonymousCanDownload>
  <public>false</public>
  <publicId>4bD</publicId>
  <medias>
  <media>
  <id>181279</id>
  <name>Introducing the Slimlist</name>
  <thumbnail>
  <url>http://www.wistia.com/path/to/thumbnail1.png</url>
  <width>100</width>
  <height>60</height>
  </thumbnail>
  <type>Video</type>
  <duration>74</duration>
  <created>2010-08-14T18:47:39+00:00</created>
  <updated>2010-08-20T21:47:00+00:00</updated>
  </media>
  <media>
  <id>181182</id>
  <name>Due Date</name>
  <section>Trailers</section>
  <thumbnail>
  <url>http://www.wistia.com/path/to/thumbnail2.png</url>
  <width>100</width>
  <height>60</height>
  </thumbnail>
  <type>Video</type>
  <duration>126</duration>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-21T21:47:00+00:00</updated>
  </media>
  </medias>
</project>
{% endcodeblock %}


---

### Projects: Create

Using the API, you can create a new project in your account.

#### The Request

<code class="full_width">POST https://api.wistia.com/v1/projects.json</code>

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
description      | The description of the newly created project.
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


{% codeblock example_json_response.json %}
{
  "id": 1,
    "name": "My New Project",
    "description": "My Project Description",
    "mediaCount": 0,
    "created": "2010-08-15T18:47:39+00:00",
    "updated": "2010-08-15T18:47:39+00:00",
    "hashedId": "4d23503f70",
    "anonymousCanUpload": false,
    "anonymousCanDownload": false,
    "public": false,
    "publicId": "4bD"
}
{% endcodeblock %}

#### Example XML Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/1.xml

{% codeblock example_xml_response.xml %}
  <project>
    <id>1</id>
    <name>My New Project</name>
    <description>My New Project Description</description>
    <mediaCount>0</mediaCount>
    <created>2010-08-15T18:47:39+00:00</created>
    <updated>2010-08-15T18:47:39+00:00</updated>
    <hashedId>4d23503f70</hashedId>
    <anonymousCanUpload>false</anonymousCanUpload>
    <anonymousCanDownload>false</anonymousCanDownload>
    <public>false</public>
    <publicId>4bD</publicId>
  </project>
{% endcodeblock %}

---

### Projects: Update

The Wistia data API allows you to update a project.
Currently, the only attribute that you can update is the project name.

#### The Request

<code class="full_width">PUT https://api.wistia.com/v1/projects/&lt;project-id&gt;.json</code>

Make sure you replace `<project-id>` with the hashed ID of the project that you want to update.

#### The Parameters

Here are the valid parameters for this action:

Parameter Name | Description
---------------|---------------
name     | The project's new name.
anonymousCanUpload | A flag indicating whether or not anonymous users may upload files to this project.  Set to “1” to enable and “0” to disable.
anonymousCanDownload | A flag indicating whether or not anonymous users may download files from this project.  Set to “1” to enable and “0” to disable.
public | A flag indicating whether or not the project is enabled for public access.  Set to “1” to enable and “0” to disable.

#### The Response

If the project update is successful, the server will send a response with something similar to the following:

Field   | Description
--------|----------------
id         | A numeric identifier that uniquely identifies the project to the system.  You can use this field to obtain more information about the project using the other API methods.
name       | The name of the project.
description       | A description of the project.
mediaCount | The number of media in the project.
created    | The date that the project was originally created.
updated    | The date that the project was last changed.
hashedId   | A private hashed id, uniquely identifying the project within the system.  Used for playlists and RSS feeds.
anonymousCanUpload | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload | A boolean indicating whether or not anonymous downloads are enabled for this project.
public | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.

#### Example JSON Response

{% codeblock example_json_response.json %}
{
  "id": 1,
  "name": "Updated Project Name",
  "description": "Updated Project Description",
  "mediaCount": 5,
  "created": "2010-08-15T18:47:39+00:00",
  "updated": "2010-08-15T18:47:39+00:00",
  "hashedId": "4d23503f70",
  "anonymousCanUpload": false,
  "anonymousCanDownload": false,
  "public": false,
  "publicId": "4bD"
}
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<project>
  <id>1</id>
  <name>Updated Project Name</name>
  <description>Updated Project Description</description>
  <mediaCount>5</mediaCount>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-15T18:47:39+00:00</updated>
  <hashedId>4d23503f70</hashedId>
  <anonymousCanUpload>false</anonymousCanUpload>
  <anonymousCanDownload>false</anonymousCanDownload>
  <public>false</public>
  <publicId>4bD</publicId>
</project>
{% endcodeblock %}


---

### Projects: Delete

The Wistia data API allows you to delete a project.

#### The Request

<code class="full_width">DELETE https://api.wistia.com/v1/projects/&lt;project-id&gt;.json</code>

Make sure you replace *<project-id>* with the hashed ID of the project that you want to delete.

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
description       | A description of the project.
mediaCount | The number of media in the project.
created    | The date that the project was originally created.
updated    | The date that the project was last changed.
hashedId   | A private hashed id, uniquely identifying the project within the system.  Used for playlists and RSS feeds.
anonymousCanUpload | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload | A boolean indicating whether or not anonymous downloads are enabled for this project.
public | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.


#### Example JSON Response


{% codeblock example_json_response.json %}
{
  "id": 1,
  "name": "Project Name",
  "description": "Project Description",
  "mediaCount": 5,
  "created": "2010-08-15T18:47:39+00:00",
  "updated": "2010-08-15T18:47:39+00:00",
  "hashedId": "4d23503f70",
  "anonymousCanUpload": false,
  "anonymousCanDownload": false,
  "public": false,
  "publicId": "4bD"
}
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<project>
  <id>1</id>
  <name>Project Name</name>
  <description>Project Description</description>
  <mediaCount>5</mediaCount>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-15T18:47:39+00:00</updated>
  <hashedId>4d23503f70</hashedId>
  <anonymousCanUpload>false</anonymousCanUpload>
  <anonymousCanDownload>false</anonymousCanDownload>
  <public>false</public>
  <publicId>4bD</publicId>
</project>
{% endcodeblock %}

---


### Projects: Copy

The Wistia data API allows you to copy a project, 
including all of its media, sidebar elements, and sections.  

{{ "This method does not copy the projects sharing information (i.e. users that could see the old project will not automatically be able to see the new one)." | note }}



#### The Request


<code class="full_width">POST https://api.wistia.com/v1/projects/&lt;project-id&gt;/copy.json</code>

Make sure you replace `<project-id>` with the hashed ID of the project that you want to copy.


#### Parameters

You can specify the owner of the new project by passing an optional parameter.  
The person you specify must be a manager in the account.  If you omit this 
parameter, or if you specify an email address for someone that's not a manager, 
the project owner defaults to the account owner.

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
id                    | A numeric identifier that uniquely identifies the project to the system. You can use this field to obtain more information about the project using the other API methods.
name                  | The name of the project.
description           | A description of the project.
mediaCount            | The number of media in the project.
created               | The date that the project was originally created.
updated               | The date that the project was last changed.
hashedId              | A private hashed id, uniquely identifying the project within the system. Used for playlists and RSS feeds.
anonymousCanUpload    | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload  | A boolean indicating whether or not anonymous downloads are enabled for this project.
public                | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId              | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.


#### Example JSON Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/3.json

{% codeblock example_json_response.json %}
{
  "id": 3,
  "name": "Project Name",
  "description": "Project Description",
  "mediaCount": 5,
  "created": "2010-08-15T18:47:39+00:00",
  "updated": "2010-08-15T18:47:39+00:00",
  "hashedId": "4d23503f70",
  "anonymousCanUpload": false,
  "anonymousCanDownload": false,
  "public": false,
  "publicId": "4bD"
}
{% endcodeblock %}

#### Example XML Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/3.xml

{% codeblock example_xml_response.xml %}
<project>
  <id>3</id>
  <name>Project Name</name>
  <desciption>Project Description</description>
  <mediaCount>5</mediaCount>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-15T18:47:39+00:00</updated>
  <hashedId>4d23503f70</hashedId>
  <anonymousCanUpload>false</anonymousCanUpload>
  <anonymousCanDownload>false</anonymousCanDownload>
  <public>false</public>
  <publicId>4bD</publicId>
</project>
{% endcodeblock %}

---

## Project Sharings

A sharing is an object that links either a contact or a contact group to a project, including information about the contacts' permissions to that project.

### Project Sharings: List

The Wistia data API allows you to see a list of sharings on a project.
A sharing is an object that links either a contact or a contact group to a project, including information about the contacts#039; permissions to that project.

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings.json</code>

Make sure you replace `<project-id>` with the hashed ID of the project for which you would like to see sharings.

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
type             | A string representing what type of share this object represents: 'Contact' or 'ContactGroup'.
email  <br>(if available) | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it's a ContactGroup, this field will be omitted.

#### Example JSON Response

{% codeblock example_json_response.json %}
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
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<sharings>
  <sharing>
    <id>14</id>
    <isAdmin>true</isAdmin>
    <canShare>true</canShare>
    <canDownload>true</canDownload>
    <canUpload>true</canUpload>
    <share>
      <id>3</id>
      <name>Jim</name>
      <type>Contact</type>
      <email>jim@wistia.com</email>
    </share>
    <project>
      <id>13</id>
      <name>My Project</name>
    </project>
  </sharing>
  <sharing>
    <id>15</id>
    <isAdmin>false</isAdmin>
    <canShare>true</canShare>
    <canDownload>true</canDownload>
    <canUpload>false</canUpload>
    <share>
      <id>3</id>
      <name>Sales</name>
      <type>ContactGroup</type>
    </share>
    <project>
      <id>13</id>
      <name>My Project</name>
    </project>
  </sharing>
</sharings>
{% endcodeblock %}

---

### Project Sharings: Show

The Wistia data API allows you to see the details of a particular sharing on a project.

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;>.json</code>

Make sure you replace `<project-id>` with the hashed ID of the project for 
which you would like to see sharings, and replace *<sharing-id>* with the ID 
of the specific sharing object that you want to see.

#### The Paramters
This method does not accept any other parameters.

#### The Response

The server responds with HTTP status **200 OK** and the response body contains 
the requested sharing on the project.


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
type             | A string representing what type of share this object represents: 'Contact' or 'ContactGroup'.
email  <br>(if available) | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it's a ContactGroup, this field will be omitted.

#### Example JSON Response

{% codeblock example_json_response.json %}
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
}
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<sharing>
  <id>14</id>
  <isAdmin>true</isAdmin>
  <canShare>true</canShare>
  <canDownload>true</canDownload>
  <canUpload>true</canUpload>
  <share>
    <id>3</id>
    <name>Jim</name>
    <type>Contact</type>
    <email>jim@wistia.com</email>
  </share>
  <project>
    <id>13</id>
    <name>My Project</name>
  </project>
</sharing>
{% endcodeblock %}

---

### Project Sharings: Create

The Wistia data API allows you to share a project with a user by email.
Conceptually, you do this by creating a new sharing object for a project.

#### The Request

<code class="full_width">POST https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings.json</code>

Make sure you replace `<project-id>` with the hashed ID of the project that 
you want to share.

This method can accept several parameters to customize the way that the sharing 
happens.

The only required parameter is **with**, which specifies the email address of 
the person with whom you want to share the project.

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

{% codeblock example_json_response.json %}{ "project": "http://myaccount.wistia.com/projects/13" }{% endcodeblock %}

Here's an example of what the response body might look like if the user is not 
yet activated:

{% codeblock example_json_response.json %}{ "activation": "http://myaccount.wistia.com/my_activation_link" }{% endcodeblock %}

#### Example XML Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/13/sharings/16.xml

{% codeblock example_xml_response.xml %}
<url>
  <project>http://myaccount.wistia.com/projects/13</project>
</url>
{% endcodeblock %}

Here's an example of what the response body might look like if the user is not 
yet activated:

{% codeblock example_xml_response.xml %}
<url>
  <activation>http://myaccount.wistia.com/my_activation_link</activation>
</url>
{% endcodeblock %}

---

### Project Sharings: Update the Sharing on a Project

The Wistia data API allows you to update a sharing on a project.  Currently, 
the only attributes that you can update are **can_share**, **can_download**, 
**can_upload**, and **is_admin**.

#### The Request

<code class="full_width">PUT https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;>.json</code>

Make sure you replace `<project-id>` with the hashed ID of the project that you want, 
and replace `<sharing-id>` with the ID of the sharing that you want to update.

Parameter Name    | Description
------------------|-----------------
canShare (optional)    | “1” to allow the user or group to share the project with others, “0” to disable this functionality.
canDownload (optional) | “1” to allow the user or group to download media from the project, “0” to disable this functionality.
canUpload (optional)   | “1” to allow the user or group to upload media to the project, “0” to disable this functionality.
isAdmin (optional)     | “1” to give this user admin rights to the project, “0” to take away admin rights.

Notice that every parameter for this action is optional.  Omitting a parameter 
from the request will leave that attribute alone.

#### The Response

If the update is successful, the server will send a response with something 
similar to the following:


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
type             | A string representing what type of share this object represents: 'Contact' or 'ContactGroup'.
email  <br>(if available) | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it's a ContactGroup, this field will be omitted.


#### Example JSON Response


{% codeblock example_json_response.json %}
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
}
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<sharing>
  <id>14</id>
  <isAdmin>true</isAdmin>
  <canShare>true</canShare>
  <canDownload>true</canDownload>
  <canUpload>true</canUpload>
  <share>
    <id>3</id>
    <name>Jim</name>
    <type>Contact</type>
    <email>jim@wistia.com</email>
  </share>
  <project>
    <id>13</id>
    <name>My Project</name>
  </project>
</sharing>
{% endcodeblock %}

#### Errors

While we know your code is literally flawless, late nights and too much Jolt 
can cause errors.

If the request would cause the system to get into an invalid or inconsistent 
state, the update operation will fail. Errors will look like the following:

#### Example JSON Error Response

**Status:** 400 Bad Request

{% codeblock example_json_response.json %}
[
"Groups may not be project admins.", "Only account managers may be project admins." 
]
{% endcodeblock %}

#### Example XML Error Response

**Status:** 400 Bad Request

{% codeblock example_xml_response.xml %}
<errors>
  <error>Groups may not be project admins.</error>
  <error>Only account managers may be project admins.</error>
</errors>
{% endcodeblock %}

---

### Project Sharings: Delete

The Wistia data API allows you to delete a sharing on a project.

#### Request

<code class="full_width">DELETE https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;>.json</code>

Make sure you replace `<project-id>` with the hashed ID of 
the project that you want, and replace `<sharing-id>` with the 
ID of the sharing you want to delete.

#### Parameters

This action does not take any parameters.

#### Response

If the sharing is deleted successfully, the server will respond with 
HTTP status **200 OK** to let you know that it worked.
The body of the response will contain an object representing the sharing that 
was just deleted.


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
type             | A string representing what type of share this object represents: 'Contact' or 'ContactGroup'.
email  <br>(if available) | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it's a ContactGroup, this field will be omitted.


#### Example JSON Response


{% codeblock example_json_response.json %}
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
}
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<sharing>
  <id>14</id>
  <isAdmin>true</isAdmin>
  <canShare>true</canShare>
  <canDownload>true</canDownload>
  <canUpload>true</canUpload>
  <share>
    <id>3</id>
    <name>Jim</name>
    <type>Contact</type>
    <email>jim@wistia.com</email>
  </share>
  <project>
    <id>13</id>
    <name>My Project</name>
  </project>
</sharing>
{% endcodeblock %}

---

## Medias

### Medias: List

Using the Wistia data API, you can obtain a list of all the media in your account.

#### Request

The format of the request should be something like this:

<code class="full_width">https://api.wistia.com/v1/medias.json</code>

#### Parameters

**Sorting**<br/>
You can get the results back sorted by the **name**, **created**, 
**updated**, or **position** fields.  In order to specify how you want the results to be sorted, append one or both of the 
following query parameters to the request URL:

Parameter | Description
----------|-------------
sort_by | The name of the field to sort by.  Valid values are "name", "created", "updated", or "position" (which will use the same order as the main Wistia interface).  Any other value will cause the results to be sorted by id, which is the default.
sort_direction (optional, defaults to 1) | This field specifies the direction of the sort.  Valid values are 1 or 0, which specify ascending or descending order, respectively.

For example, if you want to sort your results in descending order by the date 
each media was created (i.e. when it was first uploaded to Wistia), your request 
URL would look something like this:

<code class="full_width">https://api.wistia.com/v1/medias.json?sort_by=created&amp;sort_direction=0</code>

**Paging**

You can get your results back in chunks using the paging feature.  In order to 
set the page size and/or the number of pages that you want to see, use the 
following query parameters:

Parameter | Description
----------|--------------
page (optional, defaults to 1) | Specifies which page of the results you want to see.  Note that this parameter starts at 1, as opposed to 0.
per_page (optional, defaults to 100) | This parameter lets you set how many results you want to get back in each request.  In order to mitigate long-running requests to the API, the maximum value of this parameter is 100.

For example, if you want to get your results back 10 media at a time, starting 
on the second page of results, then your request URL should look something like this:

<code class="full_width">https://api.wistia.com/v1/medias.json?page=2&amp;per_page=10</code>

**Filtering**

You can filter the results by project or type of media.  Similar to sorting, filters are specified by appending query 
parameters to the end of the URL used to 
access the API.  The following table lists the parameters 
that you can use for filtering and a description of how to use them.

Parameter | Description
----------|---------------
project_id | An integer specifying the project from which you would like to get results.
name | Find a media or medias whose name exactly matches this parameter.
type       | A string specifying which type of media you would like to get. Values can be “Video”, “Audio”, “Image”, “PdfDocument”, “MicrosoftOfficeDocument”, “Swf”, or “UnknownType”.
hashed_id|Find the media by hashed_id, which is now present in Wistia embeds.


#### The Response

Assuming authentication is successful and the request is in good order, the 
HTTP response will contain a list of all media for the account.


Field     |  Description
----------|------------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
type                | A string representing what type of media this is. Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
status | After a file has been uploaded to Wistia, it needs to be processed before it's available for online viewing. There are four statuses: "queued", "processing", "ready", and "failed". Queued means the file is waiting in the queue to be processed. Processing means the file is actively being processed. Ready means it has been fully processed and is ready for embedding and viewing. Failed means that we were unable to automatically process the file.
progress <br>(if available) | This field is a floating point value between 0 and 1 that indicates the progress of the processing for this file. For instance, a value of 0.5 indicates we're about halfway done processing this file.
section  <br>(if available)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
thumbnail           | An object representing the thumbnail for this media.  The attributes are URL, width, and height.
duration  <br>(if available) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.
assets              | An array of the assets available for this media.  See the table below for a description the fields in each asset object.
project             | An object representing the project for this media. The attributes are ID,name, and hashed ID.
embedCode           | DEPRECATED: If you want to programmatically embed videos, use the <a href="{{ '/embed-api' | post_url }}">Embedding API</a>.
description         | A description for the media which usually appears near the top of the sidebar on the media's page.
hashed_id           | A unique alphanumeric identifier for this media. It's used all over the place, from URLs inside the Wistia application (e.g. http://home.wistia.com/medias/jocs98za4l) to embed codes!

Each asset object in the assets array has the following properties:

Field        | Description
-------------|-----------------
url               | A direct-access URL to the content of the asset.
width  <br>(if available)  | The width of this specific asset, if applicable.
height  <br>(if available) | The height of this specific asset, if applicable.
fileSize          | The size of the asset file that's referenced by url, measured in bytes.
contentType       | The asset's content type.
type              | The internal type of the asset, describing how the asset should be used. Values can include “OriginalFile”, “FlashVideoFile”, "MdFlashVideoFile", "HdFlashVideoFile", “Mp4VideoFile”, "MdMp4VideoFile", "HdMp4VideoFile", “IPhoneVideoFile”, “StillImageFile”, “SwfFile”, “Mp3AudioFile”, and “LargeImageFile”.

#### Example JSON Response


{% codeblock example_json_response.json %}
[{
  "id": 181279,
  "hashed_id": "abc123",
  "name": "Introducing the Slimlist",
  "description": "Test Description",
  "type": "Video",
  "section": "Trailers",
  "status": "ready",
  "progress": 1.0,
  "thumbnail": {
    "url": "http://www.wistia.com/path/to/thumbnail2.png",
    "width": 100,
    "height": 60
  },
  "duration": 126,
  "created": "2010-08-15T18:47:39+00:00",
  "updated": "2010-08-21T21:47:00+00:00",
  "assets": [
    {
      "url": "http://www.wistia.com/path/to/original-file.bin",
      "width": 640,
      "height": 272,
      "fileSize": 12345678,
      "contentType": "video/quicktime",
      "type": "Original"
    },
    {
      "url": "http://www.wistia.com/path/to/mp4-version.bin",
      "width": 640,
      "height": 272,
      "fileSize": 12123456,
      "contentType": "video/mp4",
      "type": "Mp4Video"
    },
    {
      "url": "http://www.wistia.com/path/to/still-image.bin",
      "width": 640,
      "height": 272,
      "fileSize": 92008,
      "contentType": "image/jpeg",
      "type": "StillImageFile"
    }
  ],
  "project": {
    "id": 1337,
    "name": "Blog Videos",
    "hashed_id": "efg456"
  },
  "embedCode": "<object id=\"wistia_181279\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" width=\"640\" height=\"272\"><param name=\"allowfullscreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /><param name=\"wmode\" value=\"opaque\" /><param name=\"flashvars\" value=\"videoUrl=http://embed.wistia.com/deliveries/d3cd5688adcf44780e7d90ec1e7b2d988777f1d3.bin&stillUrl=http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&playButtonVisible=true&controlsVisibleOnLoad=false&unbufferedSeek=true&autoLoad=false&autoPlay=false&endVideoBehavior=default&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_181279&mediaDuration=74.0&hdUrl=http://embed.wistia.com/deliveries/c7a8037514cd9adbdc96c8cf4b590497d0f63c74.bin\" /><param name=\"movie\" value=\"http://embed.wistia.com/flash/embed_player_v2.0.swf\" /><embed src=\"http://embed.wistia.com/flash/embed_player_v2.0.swf\" name=\"wistia_181279\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"272\" allowfullscreen=\"true\" allowscriptaccess=\"always\" wmode=\"opaque\" flashvars=\"videoUrl=http://embed.wistia.com/deliveries/d3cd5688adcf44780e7d90ec1e7b2d988777f1d3.bin&stillUrl=http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&playButtonVisible=true&controlsVisibleOnLoad=false&unbufferedSeek=true&autoLoad=false&autoPlay=false&endVideoBehavior=default&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_181279&mediaDuration=74.0&hdUrl=http://embed.wistia.com/deliveries/c7a8037514cd9adbdc96c8cf4b590497d0f63c74.bin\"></embed></object><script src=\"http://embed.wistia.com/embeds/v.js\"></script><script>if(!navigator.mimeTypes['application/x-shockwave-flash'] || navigator.userAgent.match(/Android/i)!==null)Wistia.VideoEmbed('wistia_181279','640','272',{videoUrl:'http://embed.wistia.com/deliveries/14cb1fed9fb9d2c235be9e00e7998ad3a9e1a278.bin',stillUrl:'http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_181279',mediaDuration:74.0})</script>"
}]
{% endcodeblock %}


#### Example XML Response


{% codeblock example_xml_response.xml %}
<medias>
  <media>
  <id>181279</id>
  <name>Introducing the Slimlist</name>
  <project>
  <id>22570</id>
  <name>Slimlist for Website</name>
  </project>
  <type>Video</type>
  <section>Trailers</section>
  <status>ready</status>
  <progress>1.0</progress>
  <thumbnail>
    <url>http://www.wistia.com/path/to/thumbnail2.png</url>
    <width>100</width>
    <height>60</height>
  </thumbnail>
  <duration>126</duration>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-21T21:47:00+00:00</updated>
  <assets>
    <asset>
      <url>http://www.wistia.com/path/to/original-file.bin</url>
      <width>640</width>
      <height>272</height>
      <fileSize>12345678</fileSize>
      <contentType>video/quicktime</contentType>
      <type>Original</type>
    </asset>
    <asset>
      <url>http://www.wistia.com/path/to/mp4-version.bin</url>
      <width>640</width>
      <height>272</height>
      <fileSize>12123456</fileSize>
      <contentType>video/mp4</contentType>
      <type>Mp4Video</type>
    </asset>
    <asset>
      <url>http://www.wistia.com/path/to/still-image.bin</url>
      <width>640</width>
      <height>272</height>
      <fileSize>92008</fileSize>
      <contentType>image/jpeg</contentType>
      <type>StillImageFile</type>
    </asset>
  </assets>
  <project>
    <id>1337</id>
    <name>Blog Videos</name>
    <hashed_id>efg456</hashed_id>
  </project>
  <embedCode><object id='wistia_1' classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' width='640' height='360'><param name='allowfullscreen' value='true' /><param name='allowscriptaccess' value='always' /><param name='wmode' value='opaque' /><param name='flashvars' value='videoUrl=http://brendan.unraw.net/deliveries/57c6fbdfa4c236ce5a84abaf4363568355a2f059.binamp;stillUrl=http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.binamp;playButtonVisible=trueamp;controlsVisibleOnLoad=falseamp;unbufferedSeek=trueamp;autoLoad=falseamp;autoPlay=falseamp;embedServiceURL=http://distillery.wistia.com/xamp;accountKey=jim-development_1amp;mediaID=jim-development_1amp;mediaDuration=6.51' /><param name='movie' value='http://brendan.unraw.net/flash/embed_player_v1.1.swf' /><embed src='http://brendan.unraw.net/flash/embed_player_v1.1.swf' name='wistia_1' type='application/x-shockwave-flash' width='640' height='360' allowfullscreen='true' allowscriptaccess='always' wmode='opaque' flashvars='videoUrl=http://brendan.unraw.net/deliveries/57c6fbdfa4c236ce5a84abaf4363568355a2f059.binamp;stillUrl=http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.binamp;playButtonVisible=trueamp;controlsVisibleOnLoad=falseamp;unbufferedSeek=trueamp;autoLoad=falseamp;autoPlay=falseamp;embedServiceURL=http://distillery.wistia.com/xamp;accountKey=jim-development_1amp;mediaID=jim-development_1amp;mediaDuration=6.51'></embed></object><script src='http://brendan.unraw.net/embeds/v.js'></script><script>if(!navigator.mimeTypes['application/x-shockwave-flash'])Wistia.VideoEmbed('wistia_1','640','360',{videoUrl:'http://brendan.unraw.net/deliveries/5b7bd7827acb4315198b421aa9d5ffc55de8df11.bin',stillUrl:'http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'jim-development_1',mediaId:'jim-development_1',mediaDuration:6.51})</script></embedCode>
  <description>Test Description</description>
  <hashed_id>abc123</hashed_id>
  </media>
</medias>
{% endcodeblock %}


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

<code class="full_width">https://api.wistia.com/v1/medias/&lt;media-id&gt;.json</code>

Make sure you replace `<media-id>` with the hashed ID of the media that you want.

#### Response

Assuming authentication is successful and the request is in good order, the 
HTTP response will contain 
detailed information about the requested media.  The format of the content (JSON or XML) depends on which extension was used to make the request.


Field      |  Description
-----------|-----------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
type                | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
section <br>(if available)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default). 
status | After a file has been uploaded to Wistia, it needs to be processed before it's available for online viewing. There are four statuses: "queued", "processing", "ready", and "failed". Queued means the file is waiting in the queue to be processed. Processing means the file is actively being processed. Ready means it has been fully processed and is ready for embedding and viewing. Failed means that we were unable to automatically process the file.
progress <br>(if available) | This field is a floating point value between 0 and 1 that indicates the progress of the processing for this file. For instance, a value of 0.5 indicates we're about halfway done processing this file.
thumbnail           | An object representing the thumbnail for this media.  The attributes are URL, width, and height.
duration <br>(if available) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.
assets              | An array of the assets available for this media.  See the table below for a description the fields in each asset object.
project             | An object representing the project for this media. The attributes are ID, name, and hashed ID.
embedCode           | DEPRECATED: If you want to programmatically embed videos, use the <a href="{{ '/embed-api' | post_url }}">Embedding API</a>.
description         | A description for the media which usually appears near the top of the sidebar on the media's page.
hashed_id           | A unique alphanumeric identifier for this media. It's used all over the place, from URLs inside the Wistia application (e.g. http://home.wistia.com/medias/jocs98za4l) to embed codes!



Each asset object in the assets array has the following properties:

Field     |  Description
----------|-----------------
url               | A direct-access URL to the content of the asset. These URLs end in a .bin extension (for binary).
width (optional)  | The width of this specific asset, if applicable.
height (optional) | The height of this specific asset, if applicable.
fileSize          | The size of the asset file that's referenced by url, measured in bytes.
contentType       | The asset's content type.
type              | The internal type of the asset, describing how the asset should be used.  Valid values are “OriginalFile”, “FlashVideoFile”, “Mp4VideoFile”, “IPhoneVideoFile”, “StillImageFile”, “SwfFile”, “Mp3AudioFile”, and “LargeImageFile”.


#### Example JSON Response

{% codeblock example_json_response.json %}
{
  "id": 181279,
  "hashed_id": "abc123",
  "name": "Introducing the Slimlist",
  "description": "Test Description",
  "type": "Video",
  "section": "Trailers",
  "status": "ready",
  "progress": 1.0,
  "thumbnail": {
    "url": "http://www.wistia.com/path/to/thumbnail2.png",
    "width": 100,
    "height": 60
  },
  "duration": 126,
  "created": "2010-08-15T18:47:39+00:00",
  "updated": "2010-08-21T21:47:00+00:00",
  "assets": [
    {
      "url": "http://www.wistia.com/path/to/original-file.bin",
      "width": 640,
      "height": 272,
      "fileSize": 12345678,
      "contentType": "video/quicktime",
      "type": "Original"
    },
    {
      "url": "http://www.wistia.com/path/to/mp4-version.bin",
      "width": 640,
      "height": 272,
      "fileSize": 12123456,
      "contentType": "video/mp4",
      "type": "Mp4Video"
    },
    {
      "url": "http://www.wistia.com/path/to/still-image.bin",
      "width": 640,
      "height": 272,
      "fileSize": 92008,
      "contentType": "image/jpeg",
      "type": "StillImageFile"
    }
  ],
  "project": {
    "id": 1337,
    "name": "Blog Videos",
    "hashed_id": "efg456"
  },
  "embedCode": "<object id=\"wistia_181279\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" width=\"640\" height=\"272\"><param name=\"allowfullscreen\" value=\"true\" /><param name=\"allowscriptaccess\" value=\"always\" /><param name=\"wmode\" value=\"opaque\" /><param name=\"flashvars\" value=\"videoUrl=http://embed.wistia.com/deliveries/d3cd5688adcf44780e7d90ec1e7b2d988777f1d3.bin&stillUrl=http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&playButtonVisible=true&controlsVisibleOnLoad=false&unbufferedSeek=true&autoLoad=false&autoPlay=false&endVideoBehavior=default&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_181279&mediaDuration=74.0&hdUrl=http://embed.wistia.com/deliveries/c7a8037514cd9adbdc96c8cf4b590497d0f63c74.bin\" /><param name=\"movie\" value=\"http://embed.wistia.com/flash/embed_player_v2.0.swf\" /><embed src=\"http://embed.wistia.com/flash/embed_player_v2.0.swf\" name=\"wistia_181279\" type=\"application/x-shockwave-flash\" width=\"640\" height=\"272\" allowfullscreen=\"true\" allowscriptaccess=\"always\" wmode=\"opaque\" flashvars=\"videoUrl=http://embed.wistia.com/deliveries/d3cd5688adcf44780e7d90ec1e7b2d988777f1d3.bin&stillUrl=http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin&playButtonVisible=true&controlsVisibleOnLoad=false&unbufferedSeek=true&autoLoad=false&autoPlay=false&endVideoBehavior=default&embedServiceURL=http://distillery.wistia.com/x&accountKey=wistia-production_97&mediaID=wistia-production_181279&mediaDuration=74.0&hdUrl=http://embed.wistia.com/deliveries/c7a8037514cd9adbdc96c8cf4b590497d0f63c74.bin\"></embed></object><script src=\"http://embed.wistia.com/embeds/v.js\"></script><script>if(!navigator.mimeTypes['application/x-shockwave-flash'] || navigator.userAgent.match(/Android/i)!==null)Wistia.VideoEmbed('wistia_181279','640','272',{videoUrl:'http://embed.wistia.com/deliveries/14cb1fed9fb9d2c235be9e00e7998ad3a9e1a278.bin',stillUrl:'http://embed.wistia.com/deliveries/43500c9644e43068d8995ecb5ddea82440419eaf.bin',distilleryUrl:'http://distillery.wistia.com/x',accountKey:'wistia-production_97',mediaId:'wistia-production_181279',mediaDuration:74.0})</script>"
}
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<media>
  <id>181279</id>
  <name>Introducing the Slimlist</name>
  <type>Video</type>
  <section>Trailers</section>
  <status>ready</status>
  <progress>1.0</progress>
  <thumbnail>
    <url>http://www.wistia.com/path/to/thumbnail2.png</url>
    <width>100</width>
    <height>60</height>
  </thumbnail>
  <duration>126</duration>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-21T21:47:00+00:00</updated>
  <assets>
    <asset>
      <url>http://www.wistia.com/path/to/original-file.bin</url>
      <width>640</width>
      <height>272</height>
      <fileSize>12345678</fileSize>
      <contentType>video/quicktime</contentType>
      <type>Original</type>
    </asset>
    <asset>
      <url>http://www.wistia.com/path/to/mp4-version.bin</url>
      <width>640</width>
      <height>272</height>
      <fileSize>12123456</fileSize>
      <contentType>video/mp4</contentType>
      <type>Mp4Video</type>
    </asset>
    <asset>
      <url>http://www.wistia.com/path/to/still-image.bin</url>
      <width>640</width>
      <height>272</height>
      <fileSize>92008</fileSize>
      <contentType>image/jpeg</contentType>
      <type>StillImageFile</type>
    </asset>
  </assets>
  <project>
    <id>1337</id>
    <name>Blog Videos</name>
    <hashed_id>efg456</hashed_id>
  </project>
  <embedCode>amp;<object id=#039;wistia_181279#039; classid=#039;clsid:D27CDB6E-AE6D-11cf-96B8-444553540000#039; width=#039;640#039; height=#039;360#039;amp;>amp;<param name=#039;allowfullscreen#039; value=#039;true#039; /amp;>amp;<param name=#039;allowscriptaccess#039; value=#039;always#039; /amp;>amp;<param name=#039;wmode#039; value=#039;opaque#039; /amp;>amp;<param name=#039;flashvars#039; value=#039;videoUrl=http://brendan.unraw.net/deliveries/57c6fbdfa4c236ce5a84abaf4363568355a2f059.binamp;amp;stillUrl=http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.binamp;amp;playButtonVisible=trueamp;amp;controlsVisibleOnLoad=falseamp;amp;unbufferedSeek=trueamp;amp;autoLoad=falseamp;amp;autoPlay=falseamp;amp;embedServiceURL=http://distillery.wistia.com/xamp;amp;accountKey=jim-development_1amp;amp;mediaID=jim-development_1amp;amp;mediaDuration=6.51#039; /amp;>amp;<param name=#039;movie#039; value=#039;http://brendan.unraw.net/flash/embed_player_v1.1.swf#039; /amp;>amp;<embed src=#039;http://brendan.unraw.net/flash/embed_player_v1.1.swf#039; name=#039;wistia_1#039; type=#039;application/x-shockwave-flash#039; width=#039;640#039; height=#039;360#039; allowfullscreen=#039;true#039; allowscriptaccess=#039;always#039; wmode=#039;opaque#039; flashvars=#039;videoUrl=http://brendan.unraw.net/deliveries/57c6fbdfa4c236ce5a84abaf4363568355a2f059.binamp;amp;stillUrl=http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.binamp;amp;playButtonVisible=trueamp;amp;controlsVisibleOnLoad=falseamp;amp;unbufferedSeek=trueamp;amp;autoLoad=falseamp;amp;autoPlay=falseamp;amp;embedServiceURL=http://distillery.wistia.com/xamp;amp;accountKey=jim-development_1amp;amp;mediaID=jim-development_1amp;amp;mediaDuration=6.51#039;amp;>amp;</embedamp;>amp;</objectamp;>amp;<script src=#039;http://brendan.unraw.net/embeds/v.js#039;amp;>amp;</scriptamp;>amp;<scriptamp;>if(!navigator.mimeTypes[#039;application/x-shockwave-flash#039;])Wistia.VideoEmbed(#039;wistia_1#039;,#039;640#039;,#039;360#039;,{videoUrl:#039;http://brendan.unraw.net/deliveries/5b7bd7827acb4315198b421aa9d5ffc55de8df11.bin#039;,stillUrl:#039;http://brendan.unraw.net/deliveries/b5dfc55613f47ff32ef42eac275a2a1b784f08f8.bin#039;,distilleryUrl:#039;http://distillery.wistia.com/x#039;,accountKey:#039;jim-development_1#039;,mediaId:#039;jim-development_1#039;,mediaDuration:6.51})amp;</scriptamp;></embedCode>
  <description>Test Description</description>
  <hashed_id>abc123</hashed_id>
</media>
{% endcodeblock %}



---


### Media: Update

The Wistia data API allows you to update a piece of media.

#### The Request

<code class="full_width">PUT https://api.wistia.com/v1/medias/&lt;media-id&gt;.json</code>

Make sure you replace `<media-id>` with the hashed ID of the media that you want to update.


Parameter Name      |  Description
--------------------|-------------------------
name               | The media's new name.
new_still_media_id | The numeric ID of an image within the system that will replace the still that's displayed before the player starts playing.  If this parameter is present while updating a non-video media, or if it specifies a non-image type media, then the call will fail with an error.
description        | A new description to display next to the media within Wistia.


#### The Response

If the media update is successful, the server will send a response with the following fields:


Field  |  Description
-------|---------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
type                | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
section <br>(if available)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
status | After a file has been uploaded to Wistia, it needs to be processed before it's available for online viewing. There are four statuses: "queued", "processing", "ready", and "failed". Queued means the file is waiting in the queue to be processed. Processing means the file is actively being processed. Ready means it has been fully processed and is ready for embedding and viewing. Failed means that we were unable to automatically process the file.
progress <br>(if available) | This field is a floating point value between 0 and 1 that indicates the progress of the processing for this file. For instance, a value of 0.5 indicates we're about halfway done processing this file.
thumbnail           | An object representing the thumbnail for this media.  The attributes are url, width, and height.
duration <br>(if available) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.


#### Example JSON Response


{% codeblock example_json_response.json %}
{
  "id": 181279,
  "name": "Introducing the Slimlist",
  "type": "Video",
  "section": "Trailers",
  "status": "ready",
  "progress": 1.0,
  "thumbnail": {
    "url": "http://www.wistia.com/path/to/thumbnail2.png",
    "width": 100,
    "height": 60
  },
  "duration": 126,
  "created": "2010-08-15T18:47:39+00:00",
  "updated": "2010-08-21T21:47:00+00:00"
}
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<media>
  <id>181279</id>
  <name>Introducing the Slimlist</name>
  <type>Video</type>
  <section>Trailers</section>
  <status>ready</status>
  <progress>1.0</progress>
  <thumbnail>
    <url>http://www.wistia.com/path/to/thumbnail2.png</url>
    <width>100</width>
    <height>60</height>
  </thumbnail>
  <duration>126</duration>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-21T21:47:00+00:00</updated
</media>
{% endcodeblock %}

---

### Media: Delete

The Wistia data API allows you to delete a piece of media.

#### The Request

<code class="full_width">DELETE https://api.wistia.com/v1/medias/&lt;media-id&gt;.json</code>

Make sure you replace `<media-id>` with the hashed ID of the media that you want 
to delete.  This action does not take any parameters.

#### The Response

If the media is deleted successfully, the server will respond with HTTP status 
**200 OK** to let you know that it worked.  The body of the response will 
contain an object representing the piece of media that was just deleted.


Field    |  Description
---------|-----------------
id                  | A unique numeric identifier for the media within the system.
name                | The display name of the media.
type                | A string representing what type of media this is.  Valid values are “Video”, “Image”, “Audio”, “Swf”, “MicrosoftOfficeDocument”, “PdfDocument”, or “UnknownType”.
section  <br>(if available)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
status | After a file has been uploaded to Wistia, it needs to be processed before it's available for online viewing. There are four statuses: "queued", "processing", "ready", and "failed". Queued means the file is waiting in the queue to be processed. Processing means the file is actively being processed. Ready means it has been fully processed and is ready for embedding and viewing. Failed means that we were unable to automatically process the file.
progress <br>(if available) | This field is a floating point value between 0 and 1 that indicates the progress of the processing for this file. For instance, a value of 0.5 indicates we're about halfway done processing this file.
thumbnail           | An object representing the thumbnail for this media.  The attributes are url, width, and height.
duration  <br>(if available) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.



#### Example JSON Response


{% codeblock example_json_response.json %}
{
  "id": 181279,
  "name": "Introducing the Slimlist",
  "type": "Video",
  "section": "Trailers",
  "status": "ready",
  "progress": 1.0,
  "thumbnail": {
    "url": "http://www.wistia.com/path/to/thumbnail2.png",
    "width": 100,
    "height": 60
  },
  "duration": 126,
  "created": "2010-08-15T18:47:39+00:00",
  "updated": "2010-08-21T21:47:00+00:00"
}
{% endcodeblock %}


#### Example XML Response


{% codeblock example_xml_response.xml %}
<media>
  <id>181279</id>
  <name>Introducing the Slimlist</name>
  <type>Video</type>
  <section>Trailers</section>
  <status>ready</status>
  <progress>1.0</progress>
  <thumbnail>
    <url>http://www.wistia.com/path/to/thumbnail2.png</url>
    <width>100</width>
    <height>60</height>
  </thumbnail>
  <duration>126</duration>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-21T21:47:00+00:00</updated
</media>
{% endcodeblock %}

---


### Media: Copy

The Wistia data API allows you to copy a piece of media.

#### The Request

<code class="full_width">POST https://api.wistia.com/v1/medias/&lt;media-id&gt;/copy.json</code>

Make sure you replace `<media-id>` with the hashed ID of the media that you want to copy.

#### Parameters

Parameter     |  Description
--------------|----------------
project_id (optional) | The ID of the project where you want the new copy placed.  If this value is invalid or omitted, defaults to the source media's current project.
owner (optional)      | An email address specifying the owner of the new media.  If this value is invalid or omitted, defaults to the source media's current owner.

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
section  <br>(if available)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).
status | After a file has been uploaded to Wistia, it needs to be processed before it's available for online viewing. There are four statuses: "queued", "processing", "ready", and "failed". Queued means the file is waiting in the queue to be processed. Processing means the file is actively being processed. Ready means it has been fully processed and is ready for embedding and viewing. Failed means that we were unable to automatically process the file.
progress <br>(if available) | This field is a floating point value between 0 and 1 that indicates the progress of the processing for this file. For instance, a value of 0.5 indicates we're about halfway done processing this file.
thumbnail           | An object representing the thumbnail for this media.  The attributes are url, width, and height.
duration  <br>(if available) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted.
created             | The date when the media was originally uploaded.
updated             | The date when the media was last changed.


#### Example JSON Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/medias/3.json

{% codeblock example_json_response.json %}
{
  "id": 3,
  "name": "Introducing the Slimlist",
  "type": "Video",
  "section": "Trailers",
  "status": "ready",
  "progress": 1.0,
  "thumbnail": {
    "url": "http://www.wistia.com/path/to/thumbnail2.png",
    "width": 100,
    "height": 60
  },
  "duration": 126,
  "created": "2010-08-15T18:47:39+00:00",
  "updated": "2010-08-21T21:47:00+00:00"
}
{% endcodeblock %}


#### Example XML Response

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/medias/3.xml

{% codeblock example_xml_response.xml %}
<media>
  <id>3</id>
  <name>Introducing the Slimlist</name>
  <type>Video</type>
  <section>Trailers</section>
  <status>ready</status>
  <progress>1.0</progress>
  <thumbnail>
    <url>http://www.wistia.com/path/to/thumbnail2.png</url>
    <width>100</width>
    <height>60</height>
  </thumbnail>
  <duration>126</duration>
  <created>2010-08-15T18:47:39+00:00</created>
  <updated>2010-08-21T21:47:00+00:00</updated
</media>
{% endcodeblock %}

---


### Media: Show Stats

The Wistia data API allows 
you to get the aggregated tracking statistics for a video that has been embedded on your site.

**Note:** This request works for *videos only*.

If you try to get stats for a piece of media that is not a video, the server will respond with 
HTTP status code “400 Bad Request” and the body 
will contain an error message (in either XML or JSON format).

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/medias/&lt;media-id&gt;/stats.json</code>

Make sure you replace `<media-id>` with the 
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


{% codeblock example_json_response.json %}
{
  "id": 181279,
  "name": "Introducing the Slimlist",
  "stats": {
    "pageLoads": 96,
    "visitors": 52,
    "percentOfVisitorsClickingPlay": 42,
    "plays": 43,
    "averagePercentWatched": 74
  }
}
{% endcodeblock %}

#### Example XML Response


{% codeblock example_xml_response.xml %}
<media>
  <id>181279</id>
  <name>Introducing the Slimlist</name>
  <stats>
  <pageLoads>96</pageLoads>
  <visitors>52</visitors>
  <percentOfVisitorsClickingPlay>42</percentOfVisitorsClickingPlay>
  <plays>43</plays>
  <averagePercentWatched>74</averagePercentWatched>
  </stats>
</media>
{% endcodeblock %}

---

## Account

#### The Request

<code class="full_width">GET https://api.wistia.com/v1/account.json</code>

#### The Response

Field   | Description
--------|-------------
id    | Numeric id of the account
name  | Account name
url | Account's main Wistia URL (e.g. `http://brendan.wistia.com`)

---

## Captions

The Captions API allows you to manage the captions for a video.

**Currently you can only have 1 set of captions for each video. Support for multiple captions will be added later.**

**Captions API only supports JSON.**

Make sure you replace `<media-id>` with the hashed ID of the media you're interested in.

### Captions: Create

This method is for adding captions to a video.

#### The Request

<code class="full_width">POST https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions.json</code>

Parameter | Description
----------|------------
caption_file | Either an attached SRT file or a string parameter with the contents of an SRT file.
language | An optional parameter that denotes which language this file represents and it should conform to [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2). If left unspecified, the language code will be detected automatically.

Example of <code>caption_file</code> as a string parameter using curl:
<code class="full_width">curl https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions.json --data $'caption_file=1\n00:00:00,000 --> 00:00:03,000\nOh caption, my caption.'</code>

Example of <code>caption_file</code> as an attached file using curl:
<code class="full_width">curl https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions.json --form "caption_file=@./oh_caption.srt"</code>

#### The Response

If successful, the response will be an empty HTTP 200 OK.

If captions already exist for this video, the response will be HTTP 400 Bad Request.

If this video does not exist, the response will be an empty HTTP 404 Not Found.

### Captions: Index

This method will return all the captions for a video.

<code class="full_width">GET https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions.json</code>

This method takes no parameters.

#### The Response

The response will be an array of JSON objects with the following properties:

Field | Description
------|------------
language | A 3 character language code as specified by [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).
captions | The text of the captions for the specified language in SRT format.

##### Example JSON Response

{% codeblock example_json_response.json %}
[
  {
    "captions": {
      "language": "eng",
      "text": "English SRT file contents here."
    }
  },
  {
    "captions": {
      "language": "tlh",
      "text": "Klingon SRT file contents here."
    }
  }
]
{% endcodeblock %}

If captions do not exist for this video, the response will be an empty JSON array.

If this video does not exist, the response will be an empty HTTP 404 Not Found.


### Captions: Show

This method will return the captions for a specific language for a video in SRT format.

<code class="full_width">GET https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions/&lt;language-code&gt;.json</code>

`<language-code>` denotes which language to get captions for and it should conform to [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).

This method takes no parameters.

#### The Response

The response will be a JSON object with the following properties:

Field | Description
------|------------
language | A 3 character language code as specified by [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).
captions | The text of the captions for the specified language in SRT format.

##### Example JSON Response

{% codeblock example_json_response.json %}

{
  "captions": {
    "language": "eng",
    "text": "English SRT file contents here."
  }
}

{% endcodeblock %}

If the specified captions do not exist for this video, the response will be an empty HTTP 404 Not Found.

If this video does not exist, the response will be an empty HTTP 404 Not Found.


### Captions: Update

This method is for replacing the captions on a video.

<code class="full_width">PUT https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions/&lt;language-code&gt;.json</code>

`<language-code>` denotes which language to update captions for and it should conform to [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).

Parameter | Description
----------|------------
caption_file | Either an attached SRT file or a string parameter with the contents of an SRT file.

#### The Response

If successful, the response will be an empty HTTP 200 OK.

If the specified captions do not exist for this video, the response will be an empty HTTP 404 Not Found.

If this video does not exist, the response will be an empty HTTP 404 Not Found.


### Captions: Delete

This method is for removing the captions file from a video altogether.

<code class="full_width">DELETE https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions/&lt;language-code&gt;.json</code>

`<language-code>` denotes which language to delete captions for and it should conform to [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).

This method takes no parameters.

#### The Response

If successful, the response will be an empty HTTP 200 OK.

If the specified captions do not exist for this video, the response will be an empty HTTP 404 Not Found.

If this video does not exist, the response will be an empty HTTP 404 Not Found.


### Captions: Purchase

This method is for purchasing English captions on a video.

<code class="full_width">POST https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions/purchase.json</code>

Note that this request will charge the credit card on your account if successful. Therefore, you must have a saved credit card in order to use this API endpoint.

#### The Response

If successful, the response will be an empty HTTP 200 OK.

If English captions already exist for this video, the response will be an empty HTTP 400 Bad Request.

If this video does not exist, the response will be an empty HTTP 404 Not Found.

---

## Asset URLs - Tips & Tricks


### Modifying File Extensions

Asset URLs in Wistia take this form:

<code class="full_width">http://embed.wistia.com/deliveries/43500c9644e43068d8995dcb5ddea82440419eaf.bin</code>

The `.bin` extension at the URL is for binary. 
Certain ornery clients (iTunes, ahem) won't accept URLs that don't end in an
extension that's familiar to them.  In this case, you can drop the `.bin`, add
a slash, and append whatever filename and extension you like -– you'll still
get the underlying asset. So, say the URL above is an mp4 file and we _really_
want that in the URL. Here's what we'd have:

<code class="full_width">http://embed.wistia.com/deliveries/43500c9644e43068d8995dcb5ddea82440419eaf/my-file.mp4</code>


### Resizing Images

Using the Data API or [oEmbed endpoint]({{ '/oembed' | post_url }}), you can obtain the thumbnail URL for your video, and then manipulate it. Check [working with images]({{ '/working-with-images' | post_url }}).


### Extracting Thumbnails

You can also extract thumbnails from a video by modify the URL of that video 
asset. Pretty sneaky, right? Here's how to do it: 
[Extracting Thumbnails]({{ '/extracting-thumbnails' | post_url }})
