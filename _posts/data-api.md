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

#### Generating an API Password

Generate an API password for your account from the *API* area in your Account Dashboard.

**Note:** The user name is always `api`.

{% post_image hashed_id: '655da9c9b7addebc9d935a02a987d9332bd5f3c1', class: 'center' %}

#### Versions and Updates

We will introduce API changes when necessary/possible, and update the version
number (i.e. *v1*) when a **breaking change** is made.

Stay tuned to the [dev-forum](dev-forum.wistia.com) for updates on the API.

#### Resources

To make your Wistia experience even more awesome, here are some resources just for you:

[Wistia-API Ruby Gem](https://github.com/wistia/wistia-api) - selected
*best gem ever* by Jim Bancroft

[Wistia-API PHP Class](https://github.com/stephenreid/wistia-api) - created by
Stephen Reid


## Making Requests

### Authentication

You must use **SSL** (https instead of http) to access the API.

There are two ways to authenticate when accessing the API:

1. **HTTP Basic authentication** with `api` as your username and your API password as the password.
2. Add `api_password` as a parameter when making a request. For example:

<code class="full_width">https://api.wistia.com/v1/medias.json?api_password=xyz123</code>

### Passing Parameters

All parameters should be passed in the body of the request and URL encoded.
Alternatively, they can be appended to the end of the URL after a question mark
(?) character and passed as query string parameters.

### Response Formats

The request examples retrieve the data in **JSON** format. If you would like
the data in **XML** format, change the extension of the request from `json` to
`xml`.

### PUT and DELETE

Some HTTP clients are limited to sending `GET` and `POST` requests (e.g. HTML
forms have this limitation).  You will notice, however, that many of the API
calls only respond to `PUT` or `DELETE` requests.  In order to trigger these
calls from a client that does not support `PUT` or `DELETE`, use a POST request
and add a parameter named “\_method” (no quotes) with a value of either `put`
or `delete`.

### Rate Limit

The API has a rate limit at 100 requests per minute.  If there are more than
100 requests in a minute for a particular account, the service will respond
with HTTP `error 503 Service Unavailable` and the Retry-After HTTP header will
be set with a number of seconds to wait before trying again.


## Paging and Sorting Responses

The *list* methods in the API support paging, sorting, and filtering of
results. Filtering will be covered in the individual methods.

#### Paging

You can get your results back in chunks. In order to set the page size and/or
the number of pages that you want to see, use the following query parameters:

Parameter | Description
----------|------------
page | Specifies which page of the results you want to see. Defaults to 1 (not 0).
per_page | The number of results you want to get back per request. The maximum value of this parameter is 100. Defaults to 100.

#### Sorting

You can sort the results you receive based on a field you specify. To specify
how you want the results to be sorted, append one or both of the following
query parameters to the request URL:

Parameter | Description
----------|------------
sort_by | The name of the field to sort by.  Valid values are `name`, `mediaCount`, `created`, or `updated`.  Defaults to sorting by Project ID.
sort_direction | Specifies the direction of the sort, defaults to '1'.  1 = ascending, 0 = descending.

For example, if you want to sort your results in *descending order* by the *date
created*, your request URL would look something like this:

<code class="full_width">https://api.wistia.com/v1/projects.json?sort_by=created&amp;sort_direction=0</code>


## Projects

**Projects** are the main organizational objects within Wistia.
Media must be stored within Projects.

### Methods

* [Projects#list](#projects_list)
* [Projects#show](#projects_show)
* [Projects#create](#projects_create)
* [Projects#update](#projects_update)
* [Projects#delete](#projects_delete)
* [Projects#copy](#projects_copy)

### Projects Response

When a Project Object is returned from a method, it will include the following
fields:

Field | Description
------|------------
id    | A unique numeric identifier for the project within the system.
name  | The project's display name.
description | The project's description.
mediaCount  | The number of different medias that have been uploaded to the project.
created   | The date that the project was originally created.
updated   | The date that the project was last updated.
hashedId  | A private hashed id, uniquely identifying the project within the system.
anonymousCanUpload  | A boolean indicating whether or not anonymous uploads are enabled for the project.
anonymousCanDownload  | A boolean indicating whether or not anonymous downloads are enabled for this project.
public  | A boolean indicating whether the project is available for public (anonymous) viewing.
publicId  | If the project is public, this field contains a string representing the ID used for referencing the project in public URLs.

### Projects: List

Use the Projects#list method to request a list of Projects in your Wistia 
account. This request supports [paging and sorting](#organizing_for_list_methods).

Projects#list requests look like this:

<code class="full_width">GET https://api.wistia.com/v1/projects.json</code>

#### Example Project#List Request

To retrieve all projects in an account, 10 projects at a time, starting on the
second page of results, then your request URL should look something like this:

<code class="full_width">
  https://api.wistia.com/v1/projects.json?page=2&amp;per_page=10
</code>

That would return the following JSON:

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

---

### Projects: Show

Retrieve details about a specific project.

To get the details on a Project (and all media therein), send an HTTP **GET** request to the following URL:

<code class="full_width">
  GET https://api.wistia.com/v1/projects/&lt;project-hashed-id&gt;.json
</code>

The response for the Projects#show request will also include an array of media
objects. Each entry in the media array has [all media object fields](#media_show).

#### Example Projects#Show Request

<code class='full_width'>
  curl --user wistia:333344445555 https://api.wistia.com/v1/projects/ln2k6qwi9k.json
</code>

{% codeblock example_json_response.json %}
{
    "anonymousCanDownload": false,
    "anonymousCanUpload": false,
    "created": "2013-09-19T15:05:15+00:00",
    "description": "",
    "hashedId": "ln2k6qwi9k",
    "id": 464427,
    "mediaCount": 3,
    "medias": [
        {
            "created": "2013-09-19T15:05:17+00:00",
            "description": "",
            "duration": 167.29,
            "hashed_id": "azh1x9nesb",
            "id": 4488635,
            "name": "How They Work: Zappos",
            "progress": 1.0,
            "status": "ready",
            "thumbnail": {
                "height": 60,
                "url": "http://embed.wistia.com/deliveries/11bb346da9e041a4ce5c8f0a37803f8ef50e2848.jpg?image_crop_resized=100x60",
                "width": 100
            },
            "type": "Video",
            "updated": "2013-10-28T20:53:12+00:00"
        },
        {
            "created": "2013-09-19T15:30:49+00:00",
            "description": "<p>\n\nWistia goes to Nevada to visit with Zappos to hear what they have to say about their company culture.&nbsp;</p>\n<p>\n\n&nbsp;</p>\n<p>\n\nFor more How They Work videos, check out:</p>\n<p>\n\n<a href=\"http://jeff.wistia.com/projects/ln2k6qwi9k\">http://jeff.wistia.com/projects/ln2k6qwi9k</a></p>\n",
            "duration": 167.0,
            "hashed_id": "v80gyfkt28",
            "id": 4489021,
            "name": "How They Work - Zappos",
            "progress": 1.0,
            "status": "ready",
            "thumbnail": {
                "height": 60,
                "url": "http://embed.wistia.com/deliveries/7fbf9c2fe9c6585f9aa032f43f0aecc3f287e86b.jpg?image_crop_resized=100x60",
                "width": 100
            },
            "type": "Video",
            "updated": "2013-10-28T20:53:12+00:00"
        },
        {
            "created": "2013-09-19T15:44:10+00:00",
            "description": "<p>\n\nWistia goes to Nevada to visit with Zappos to hear what they have to say about their company culture.&nbsp;</p>\n<p>\n\n&nbsp;</p>\n<p>\n\nFor more How They Work videos, check out:</p>\n<p>\n\n<a href=\"http://jeff.wistia.com/projects/ln2k6qwi9k\">http://jeff.wistia.com/projects/ln2k6qwi9k</a></p>\n",
            "duration": 167.0,
            "hashed_id": "cqvzbmyeid",
            "id": 4489159,
            "name": "How They Work - Zappos",
            "progress": 1.0,
            "status": "ready",
            "thumbnail": {
                "height": 60,
                "url": "http://embed.wistia.com/deliveries/1d5b471a6a28b5d54787ae01a67e8d20c3b39267.jpg?image_crop_resized=100x60",
                "width": 100
            },
            "type": "Video",
            "updated": "2013-10-28T20:53:12+00:00"
        }
    ],
    "name": "How They Work",
    "public": true,
    "publicId": "ln2k6qwi9k",
    "updated": "2013-10-28T20:53:12+00:00"
}
{% endcodeblock %}


---

### Projects: Create

Create a new project in your Wistia account.

<code class="full_width">
  POST https://api.wistia.com/v1/projects.json
</code>


#### Parameters

Parameter Name  | Description
----------------|--------------
name (required) | The name of the project you want to create (*required*).  
adminEmail | The email address of the person you want to set as the owner of this project.  Defaults to the Wistia account owner.
anonymousCanUpload (optional) | A flag indicating whether or not anonymous users may upload files to this project.  Set to “1” to enable and “0” to disable.
anonymousCanDownload (optional) | A flag indicating whether or not anonymous users may download files from this project.  Set to “1” to enable and “0” to disable.  
public (optional) | A flag indicating whether or not the project is enabled for public access.  Set to “1” to enable and “0” to disable.


#### The Response

If the project is created successfully, the API will respond with an `HTTP 201
Created` status code, and the “Location” HTTP header will refer to the URL
where the API can make the next request to get the new project.  


#### Example Projects#Create Request

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

---

### Projects: Update

The Wistia data API allows you to update a project.

#### The Request

<code class="full_width">
  PUT https://api.wistia.com/v1/projects/&lt;project-hashed-id&gt;.json
</code>

#### The Parameters

Here are the valid parameters for this action:

Parameter Name | Description
---------------|---------------
name     | The project's new name.
anonymousCanUpload | A flag indicating whether or not anonymous users may upload files to this project.  Set to “1” to enable and “0” to disable.
anonymousCanDownload | A flag indicating whether or not anonymous users may download files from this project.  Set to “1” to enable and “0” to disable.
public | A flag indicating whether or not the project is enabled for public access.  Set to “1” to enable and “0” to disable.


#### Example Projects#Update Request

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

---

### Projects: Delete

The Wistia data API allows you to delete a project.

#### The Request

<code class="full_width">
  DELETE https://api.wistia.com/v1/projects/&lt;project-id&gt;.json
</code>

#### The Response

If the project is deleted successfully, the server will respond with `HTTP
status 200 OK`. The body of the response will contain an object representing
the project that was just deleted.

#### Example Projects#Delete Request


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

---

### Projects: Copy

Copy a project, including all media and sections.  

{{ "This method does not copy the projects sharing information (i.e. users that could see the old project will not automatically be able to see the new one)." | note }} 

<code class="full_width">
  POST https://api.wistia.com/v1/projects/&lt;project-id&gt;/copy.json
</code>

#### Parameters

You can specify the owner of the new project by passing an optional parameter.  
The person you specify must be a manager in the account.

Parameter Name   | Description
-----------------|----------------
adminEmail (optional) | The email address of the account manager that will be the owner of the new project.  Defaults to the account owner if invalid or omitted.

#### The Response

If the project is copied successfully, the server will respond with `HTTP 
status 201 Created`.

The HTTP `Location` header will be set to the URL where the newly created 
project resource resides.

The body of the response will contain an object representing the *new copy* of 
the project that was just created.

#### Example Projects#Copy Request

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

---

## Project Sharings

A **sharing** is an object that links either a contact or a contact group to a 
project, including information about the contacts' permissions to that project.

### Methods

* [Project Sharings#list](#project_sharings_list)
* [Project Sharings#show](#project_sharings_show)
* [Project Sharings#create](#project_sharings_create)
* [Project Sharings#update](#project_sharings_update)
* [Project Sharings#delete](#project_sharings_delete)

### Sharings Response

Field     | Description
----------|----------------
id          | Unique numeric identifier for the sharing object.
isAdmin     | Whether the user has admin rights on the project.
canShare    | Whether the user is allowed to share the project with others.
canDownload | Whether the user is allowed to download files from the project.
canUpload   | Whether the user is allowed to upload files to the project.
share       | An object identifying the `Contact` or `ContactGroup` with which this sharing object ties the project. See below for a description of the fields in this object.
project     | An object representing the project to which this sharing object grants access.  It only has 2 attributes: `id` and `name`, which both have the same meaning as they do elsewhere in the API.

### Share Response

Field     | Description
----------|---------------
id        | A unique numeric identifier for the Contact or ContactGroup.
name      | The display name of this Contact or ContactGroup.
type      | A string representing what type of share this object represents: `Contact` or `ContactGroup`.
email     | If this object refers to a Contact, this field will be present, indicating the contact email of the person with which the project is shared.  If it's a ContactGroup, this field will be omitted.


### Project Sharings: List

See a list of sharings on a project. 
This request supports [paging and sorting](#organizing_for_list_methods).

<code class="full_width">
  GET https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings.json
</code>

#### The Response

The server responds with `HTTP status 200 OK`. The response body contains a 
list of all sharings on the project.

#### Example Project Sharings#list Request

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

---

### Project Sharings: Show

See the details of a particular sharing on a project.

<code class="full_width">
  GET https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;>.json
</code>

* `<project-id>` is the hashed ID of the project for which you would like to see sharings, 
* `<sharing-id>` is the ID of the specific sharing object that you want to see.

#### The Response

The server responds with `HTTP status 200 OK` and the response body contains 
the requested sharing on the project.


#### Example Project Sharings#Show Request

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

---

### Project Sharings: Create

Share a project with a user by email. Conceptually, you do this by creating a 
new sharing object for a project.

<code class="full_width">
  POST https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings.json
</code>

This method can accept several parameters to customize the way that the sharing 
happens.

The only required parameter is **with**, which specifies the email address of 
the person with whom you want to share the project.

Parameter   | Description
------------|-------------------
with (required) | The email address of the person with whom you want to share the project.
requirePassword (optional)  | If this parameter is “1” (no quotes), which is the default value, then the user will be required to activate their account and set a password to see the project.  Set it to “0” (again, no quotes) to allow them to see the project without entering a password.
canShare (optional) | Set this parameter to “1” (no quotes) to allow the user to share the project with others.
canDownload (optional)  | Set this parameter to “1” (no quotes) to allow the user to download files from the project.
canUpload (optional)  | Set this parameter to “1” (no quotes) to allow the user to upload files to the project.


#### The Response

The server responds with `HTTP status 201 Created`, and the `Location` HTTP 
header is set to the API endpoint for the new sharing object.

The response body contains either a link for the user to activate their account
or a link for the user to access the project if they already have a 
username/password.

#### Example Project Sharings#create Request

**Status:** 201 Created<br/>
**Location:** https://api.wistia.com/v1/projects/13/sharings/16.json

{% codeblock example_json_response.json %}
{ "project": "http://myaccount.wistia.com/projects/13" }
{% endcodeblock %}

Here's an example of what the response body might look like if the user is not 
yet activated:

{% codeblock example_json_response.json %}
{ "activation": "http://myaccount.wistia.com/my_activation_link" }
{% endcodeblock %}

---

### Project Sharings: Update

Update a sharing on a project. 

#### The Request

<code class="full_width">
  PUT https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;>.json
</code>

Parameter Name    | Description
------------------|-----------------
canShare        | “1” to allow the user or group to share the project with others, “0” to disable this functionality.
canDownload     | “1” to allow the user or group to download media from the project, “0” to disable this functionality.
canUpload       | “1” to allow the user or group to upload media to the project, “0” to disable this functionality.
isAdmin         | “1” to give this user admin rights to the project, “0” to take away admin rights.

#### Example Project Sharings#Update Request

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

---

### Project Sharings: Delete

Delete a sharing on a project.

<code class="full_width">DELETE https://api.wistia.com/v1/projects/&lt;project-id&gt;/sharings/&lt;sharing-id&gt;>.json</code>

#### Response

The server will respond with `HTTP status 200 OK`. The body of the response 
will contain an object representing the sharing that was just deleted.


#### Example Project Sharings#Delete

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

---

## Medias

### Methods

* [Medias#list](#medias_list)
* [Medias#show](#medias_show)
* [Medias#update](#medias_update)
* [Medias#delete](#medias_delete)
* [Medias#copy](#medias_copy)
* [Medias#stats](#medias_stats)

### Medias Response

Field     |  Description
----------|------------------
id  | A unique numeric identifier for the media within the system.
name  | The display name of the media.  
type | A string representing what type of media this is. Values can be `Video`, `Audio`, `Image`, `PdfDocument`, `MicrosoftOfficeDocument`, `Swf`, or `UnknownType`.  
status | [Post upload processing status](#post_processing_status). There are four statuses: `queued`, `processing`, `ready`, and `failed`. 
progress (if available) | This field is a floating point value between 0 and 1 that indicates the progress of the processing for this file. For instance, a value of 0.5 indicates we're about halfway done processing this file.  
section | The title of the section in which the media appears. This attribute is omitted if the media is not in a section (default).
thumbnail | An object representing the thumbnail for this media. The attributes are `URL`, `width`, and `height`.  
duration | Specifies the length (in seconds) for audio and video files. Specifies number of pages in the document. Omitted for other types of media.
created | The date when the media was originally uploaded.  
updated | The date when the media was last changed.  
assets  | An array of the assets available for this media. See the table below for a description the fields in each asset object.  
embedCode | **DEPRECATED:** If you want to programmatically embed videos, use the [Embed Api]({{ '/embed-api' | post_url }}).
description | A description for the media which usually appears near the top of the sidebar on the media's page.  
hashed_id | A unique alphanumeric identifier for this media.

<h3 id='post_processing_status'>Media Status</h3>

Media files return a response attribute called **status**. After upload is
complete, media files must be processed. Status indicates which stage in
processing the file is at.

There are four status settings: `queued`, `processing`, `ready`, and `failed`.
Queued means the file is waiting in the queue to be processed. Processing means
the file is actively being processed. Ready means it has been fully processed
and is ready for embedding and viewing. Failed means that we were unable to
automatically process the file.

### Asset Object Response

Field        | Description
-------------|-----------------
url | A direct-access URL to the content of the asset.
width  | The width of this specific asset, if applicable.
height  | The height of this specific asset, if applicable.
fileSize  | The size of the asset file that's referenced by url, measured in bytes.
contentType | The asset's content type.
type  | The internal type of the asset, describing how the asset should be used. Values can include `OriginalFile`, `FlashVideoFile`, `MdFlashVideoFile`, `HdFlashVideoFile`, `Mp4VideoFile`, `MdMp4VideoFile`, `HdMp4VideoFile`, `IPhoneVideoFile`, `StillImageFile`, `SwfFile`, `Mp3AudioFile`, and `LargeImageFile`.

### Medias: List

Obtain a list of all the media in your account. You can [page and
sort]('#organizing_for_list_methods') the returned list.

<code class="full_width">
  https://api.wistia.com/v1/medias.json
</code>

### Filtering

You can filter the results by project or type of media. Similar to sorting,
filters are specified by appending query parameters to the end of the URL used
to access the API.  The following table lists the parameters that you can use
for filtering and a description of how to use them.

Parameter | Description
----------|---------------
project_id | An integer specifying the project from which you would like to get results.  
name | Find a media or medias whose name exactly matches this parameter.  
type  | A string specifying which type of media you would like to get. Values can be `Video`, `Audio`, `Image`, `PdfDocument`, `MicrosoftOfficeDocument`, `Swf`, or `UnknownType`.  
hashed_id | Find the media by hashed_id.

#### Example Medias#List Request

<code class='full_width'>
  curl --user wistia:333344445555 https://api.wistia.com/v1/medias.json
</code>

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
  ]
}]
{% endcodeblock %}

---

### Medias: Show

Get information about a specific piece of media that you have uploaded to your account.

<code class="full_width">
https://api.wistia.com/v1/medias/&lt;media-id&gt;.json
</code>

#### Example Media#Show

Here is an example request:

<code class='full_width'>
  curl --user wistia:2baf301d70cdfe6fa3a000770c9989674105d https://api.wistia.com/v1/medias/v80gyfkt28.json
</code>

Here is the JSON response received:

{% codeblock example_json_response.json %}
{
  "id":4489021,
  "name":"How They Work - Zappos",
  "type":"Video",
  "created":"2013-09-19T15:30:49+00:00",
  "updated":"2013-10-28T20:53:12+00:00",
  "duration":167.0,
  "hashed_id":"v80gyfkt28",
  "description":"<p>\n\nWistia goes to Nevada to visit with Zappos to hear what they have to say about their company culture.&nbsp;</p>\n<p>\n\n&nbsp;</p>\n<p>\n\nFor more How They Work videos, check out:</p>\n<p>\n\n<a href=\"http://jeff.wistia.com/projects/ln2k6qwi9k\">http://jeff.wistia.com/projects/ln2k6qwi9k</a></p>\n",
  "progress":1.0,
  "status":"ready",
  "thumbnail":{
    "url":"http://embed.wistia.com/deliveries/7fbf9c2fe9c6585f9aa032f43f0aecc3f287e86b.jpg?image_crop_resized=100x60",
    "width":100,
    "height":60
  },
  "project":{
    "id":464427,
    "name":"How They Work",
    "hashed_id":"ln2k6qwi9k"
  },
  "assets":[
    {
      "url":"http://embed.wistia.com/deliveries/856970d9a4bcb9aab381a0bd9ab714f19d72c62f.bin",
      "width":960,
      "height":540,
      "fileSize":23695556,
      "contentType":"video/mp4",
      "type":"OriginalFile"
    }, 
    {
      "url":"http://embed.wistia.com/deliveries/c16c2ef4a87dc8147305637cc302f2e9f9c78977.bin",
      "width":960,
      "height":540,
      "fileSize":17493009,
      "contentType":"video/x-flv",
      "type":"FlashVideoFile"
    },
    {
      "url":"http://embed.wistia.com/deliveries/9e5ead0ef514bef19e3bad9062038c7dad60e10a.bin",
      "width":640,
      "height":360,
      "fileSize":19542684,
      "contentType":"video/mp4",
      "type":"IphoneVideoFile"
    },
    {
      "url":"http://embed.wistia.com/deliveries/7fbf9c2fe9c6585f9aa032f43f0aecc3f287e86b.bin",
      "width":960,
      "height":540,
      "fileSize":105070,
      "contentType":"image/jpeg",
      "type":"StillImageFile"
    }
  ]
}
{% endcodeblock %}

---


### Medias: Update

Update attributes on a piece of media.

#### The Request

<code class="full_width">PUT https://api.wistia.com/v1/medias/&lt;media-id&gt;.json</code>


Parameter Name      |  Description
--------------------|-------------------------
name               | The media's new name.
new_still_media_id | The numeric ID of an image within the system that will replace the still that's displayed before the player starts playing.  If this parameter is present while updating a non-video media, or if it specifies a non-image type media, then the call will fail with an error.
description        | A new description to display next to the media within Wistia.


#### Example Media#Update Request


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

---

### Medias: Delete

Delete a media from your account.

<code class="full_width">
DELETE https://api.wistia.com/v1/medias/&lt;media-id&gt;.json
</code>

#### The Response

If the media is deleted successfully, the server will respond with `HTTP status 
200 OK` to let you know that it worked.

The body of the response will contain an object representing the piece of media
that was just deleted.


---


### Medias: Copy

The Wistia data API allows you to copy a piece of media.

<code class="full_width">
POST https://api.wistia.com/v1/medias/&lt;media-id&gt;/copy.json
</code>

#### Parameters

Parameter     |  Description
--------------|----------------
project_id (optional) | The ID of the project where you want the new copy placed.  If this value is invalid or omitted, defaults to the source media's current project.
owner (optional)      | An email address specifying the owner of the new media.  If this value is invalid or omitted, defaults to the source media's current owner.

#### The Response

If the media is copied successfully, the server will respond with `HTTP status
201 Created`. The HTTP `Location` header will be set to the URL where the
newly created media resource resides.  The body of the response will contain an
object representing the *new copy* of the media that was just created.


#### Example Media#Copy Request

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


---


### Medias: Stats

Aggregated tracking statistics for a video that has been embedded on your site.

**Note:** This request works for *videos only*.

If you try to get stats for a non-video, the server will respond with HTTP
status code `400 Bad Request` and the body will contain an error message.

<code class="full_width">
  GET https://api.wistia.com/v1/medias/&lt;media-id&gt;/stats.json
</code>

#### The Response

If the request is successful, the server will send a response with something
similar to the following:

Field   |  Description
--------|----------------
id    | A unique numeric identifier for the video within the system.
name  | The display name of the video.
stats | An object representing the aggregated embed statistics for this video.

Here is the definition of each field in the **stats** object:

Field        |  Description
-------------|----------------
pageLoads     | The total number of times that the page containing the embedded video has been loaded.
visitors      | The number of unique visitors to the page containing the embedded video.
percentOfVisitorsClickingPlay | This is an integer between 0 and 100 that shows what percentage of the time someone who saw the page containing the embedded video played the video.
plays         | The total number of times that the video has been played.  
averagePercentWatched   | This is an integer between 0 and 100.  It shows the average percentage of the video that was watched over every time the video was played.

#### Example Media#Stats Request

<code class='full_width'>
  curl --user wistia:333344445555 https://api.wistia.com/v1/medias/azh1x9nesb.json
</code>

{% codeblock example_json_response.json %}
{
    "created": "2013-09-19T15:05:17+00:00",
    "description": "",
    "duration": 167.29,
    "hashed_id": "azh1x9nesb",
    "id": 4488635,
    "name": "How They Work: Zappos",
    "progress": 1.0,
    "project": {
        "hashed_id": "ln2k6qwi9k",
        "id": 464427,
        "name": "How They Work"
    },
    "status": "ready",
    "thumbnail": {
        "height": 60,
        "url": "http://embed.wistia.com/deliveries/11bb346da9e041a4ce5c8f0a37803f8ef50e2848.jpg?image_crop_resized=100x60",
        "width": 100
    },
    "type": "Video",
    "updated": "2013-10-28T20:53:12+00:00",
    "assets": [
        {
            "contentType": "video/mp4",
            "fileSize": 267837242,
            "height": 720,
            "type": "OriginalFile",
            "url": "http://embed.wistia.com/deliveries/cb40bce84a15e9a8ccfba7ef28ab326c15435ac2.bin",
            "width": 1280
        },
        {
            "contentType": "video/x-flv",
            "fileSize": 23802260,
            "height": 540,
            "type": "FlashVideoFile",
            "url": "http://embed.wistia.com/deliveries/45f7820b4d97f8607a7cdee013f53acdfab17d5c.bin",
            "width": 960
        },
        {
            "contentType": "video/x-flv",
            "fileSize": 44687291,
            "height": 720,
            "type": "HdFlashVideoFile",
            "url": "http://embed.wistia.com/deliveries/08db858e39661cfcd6ae8f820e3c20ef294fae2a.bin",
            "width": 1280
        },
        {
            "contentType": "video/mp4",
            "fileSize": 23695556,
            "height": 540,
            "type": "HdMp4VideoFile",
            "url": "http://embed.wistia.com/deliveries/091a671a6c84876e0d245d466ccdb301ae9541d8.bin",
            "width": 960
        },
        {
            "contentType": "video/mp4",
            "fileSize": 15349574,
            "height": 360,
            "type": "IphoneVideoFile",
            "url": "http://embed.wistia.com/deliveries/b1cd50af03df70bd975deda5c14b54e8529c6585.bin",
            "width": 640
        },
        {
            "contentType": "image/jpeg",
            "fileSize": 133379,
            "height": 540,
            "type": "StillImageFile",
            "url": "http://embed.wistia.com/deliveries/11bb346da9e041a4ce5c8f0a37803f8ef50e2848.bin",
            "width": 960
        }
    ]
}
{% endcodeblock %}

---

## Account

<code class="full_width">
GET https://api.wistia.com/v1/account.json
</code>

#### The Response

Field   | Description
--------|-------------
id    | Numeric id of the account
name  | Account name
url   | Account's main Wistia URL (e.g. `http://brendan.wistia.com`)

---

## Captions

The Captions API allows you to manage the captions for a video.

**Notes:**
* You can only have 1 set of captions for each video. Support for
multiple captions will be added later.
* Captions API only supports JSON.
* `<language-code>` denotes which language to get captions for and it should
conform to [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).

### Methods

* [Captions#index](#captions_index)
* [Captions#create](#captions_create)
* [Captions#show](#captions_show)
* [Captions#update](#captions_update)
* [Captions#delete](#captions_delete)
* [Captions#purchase](#captions_purchase)

### Captions: Index

This method will return all the captions for a video.

<code class="full_width">GET https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions.json</code>

#### The Response

The response will be an array of JSON objects with the following properties:

Field | Description
------|------------
language | A 3 character language code as specified by [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).
captions | The text of the captions for the specified language in SRT format.

##### Example Captions#Index Response

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

If this video does not exist, the response will be an empty HTTP `404 Not Found`.


### Captions: Create

This method is for adding captions to a video.

<code class="full_width">
POST https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions.json
</code>

Parameter | Description
----------|------------
caption_file | Either an attached SRT file or a string parameter with the contents of an SRT file.
language | An optional parameter that denotes which language this file represents and it should conform to
[ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2). If left unspecified, the language code will be detected automatically.

Example of `caption_file` as a string parameter using curl:

<code class="full_width">curl https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions.json --data $'caption_file=1\n00:00:00,000 --> 00:00:03,000\nOh caption, my caption.'</code>

Example of `caption_file` as an attached file using curl:

<code class="full_width">
curl https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions.json --form "caption_file=@./oh_caption.srt"
</code>

#### The Response

If successful, the response will be an empty `HTTP 200 OK`.

If captions already exist for this video, the response will be `HTTP 400 Bad
Request`.

If this video does not exist, the response will be an empty HTTP `404 Not Found`.


### Captions: Show

This method will return the captions for a specific language for a video in SRT
format.

<code class="full_width">GET https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions/&lt;language-code&gt;.json</code>

#### The Response

The response will be a JSON object with the following properties:

Field | Description
------|------------
language | A 3 character language code as specified by [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).
captions | The text of the captions for the specified language in SRT format.

##### Example Captions#Show Response

{% codeblock example_json_response.json %}

{
  "captions": {
    "language": "eng",
    "text": "English SRT file contents here."
  }
}

{% endcodeblock %}

If the specified captions do not exist for this video, the response will be an
empty HTTP 404 Not Found.

If this video does not exist, the response will be an empty HTTP 404 Not Found.


### Captions: Update

This method is for replacing the captions on a video.

<code class="full_width">PUT https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions/&lt;language-code&gt;.json</code>

`<language-code>` denotes which language to update captions for and it should
conform to [ISO-639-2](https://en.wikipedia.org/wiki/ISO_639-2).

Parameter | Description
----------|------------
caption_file | Either an attached SRT file or a string parameter with the contents of an SRT file.

#### The Response

If successful, the response will be an empty `HTTP 200 OK`.

If the specified captions do not exist for this video, the response will be an
empty HTTP `404 Not Found`.

If this video does not exist, the response will be an empty HTTP `404 Not Found`.


### Captions: Delete

This method is for removing the captions file from a video altogether.

<code class="full_width">DELETE https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions/&lt;language-code&gt;.json</code>

#### The Response

If successful, the response will be an empty HTTP `200 OK`.

If the specified captions do not exist for this video, the response will be an
empty HTTP `404 Not Found`.

If this video does not exist, the response will be an empty HTTP `404 Not Found`.


### Captions: Purchase

This method is for purchasing English captions on a video.

<code class="full_width">POST https://api.wistia.com/v1/medias/&lt;media-id&gt;/captions/purchase.json</code>

Note that this request will charge the credit card on your account if
successful. Therefore, you must have a saved credit card in order to use this
API endpoint.

#### The Response

If successful, the response will be an empty HTTP `200 OK`.

If English captions already exist for this video, the response will be an empty
HTTP `400 Bad Request`.

If this video does not exist, the response will be an empty HTTP `404 Not Found`.

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
