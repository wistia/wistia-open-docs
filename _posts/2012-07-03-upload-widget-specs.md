---
layout: post
category: For Developers
title: Upload Widgets Dev Info
description: The upload widget is a simple yet poweful tool for uploading videos outside of your Wistia account. Embed them anywhere you want people to upload content!
post_intro: <p>The Upload Widget is a snippet of HTML, CSS, and JS that you can embed on your page to allow viewers of that page to upload their own media to your site.  It's great for user generated content campaigns (UGC).</p> <p>Wistia has an <a href="/newdoc/upload-widgets">Upload Widget Generator</a> that you can use to make embedding an upload widget easy and quick for non-technical users.  The rest of this page is geared primarily towards developers that want more control over how their page behaves with the widget.</p>
footer: 'for_developers'
---

## Upload Widget Code

The snippet should take the following form:

<pre><code class='language-markup'>
<div id="wistia-upload-widget" style="width: 500px; height: 75px;"></div>
<script src="http://static.wistia.com/javascripts/upload_widget.js"></script>
<script>
var widget1 = new wistia.UploadWidget({ divId: 'wistia-upload-widget', publicProjectId: '4bD' });
</script>
</code></pre>


Use your project's public ID as the <span class="code">publicProjectId</span> parameter on the last line (in this instance, **4bD**).

**Note:** In order for the upload widget to work for a project, that project must have anonymous uploads enabled (i.e. **anonymousCanUpload** must be true).

The upload widget should load into the area defined by the <span class="code">&lt;div&gt;</span> tag.  You can change the dimensions of this tag and it will make a best effort to fit within the bounds of that div.

## JavaScript Event Callbacks

You may optionally specify JavaScript callbacks to get called whenever various events happen in the widget.  In order to do so, pass an extra 'callbacks' parameter in the options hash passed to the upload widget initialization code.

The callbacks object should be a plain old JavaScript hash where the keys signify callback names and the values are the functions you want called when each event happens.  See the example at the bottom of this page.

### fileQueued

This event gets triggered after the user has selected a file to upload from the file selection dialog.  The callback function gets an object describing the selected file.  Here are the fields in the file object:

 Field                | Description                          
 -----                | -----------                          
 **name**             | The name of the selected file.       
 **size**             | The size of the file, in bytes.      
 **creationdate**     | The date the file was created.       
 **modificationdate** | The date the file was last modified. 

### uploadProgress

This event gets triggered continuously as the file gets uploaded.  The only extra parameter is the total number of bytes that have been loaded.

### uploadSuccess

This event gets triggered after the file has been successfully uploaded.  It receives an object describing the newly created media:

 Field                   | Description                                                                                                                                                                                                                             
 -----                   | -----------                                                                                                                                                                                                                             
 **id**                  | A unique numeric identifier for the media within the system.                                                                                                                                                                            
 **name**                | The display name of the media.                                                                                                                                                                                                          
 **type**                | A string representing what type of media this is.  Valid values are "Video", "Image", "Audio", "Swf", "MicrosoftOfficeDocument", "PdfDocument", or "UnknownType".                                                                       
 **section** (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).                                                                                                             
 **thumbnail**           | An object representing the thumbnail for this media.  The attributes are URL, width, and height.                                                                                                                                        
 **duration** (optional) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted. 
 **created**             | The date when the media was originally uploaded.                                                                                                                                                                                        
 **updated**             | The date when the media was last changed.                                                                                                                                                                                               

### uploadComplete

This event gets triggered after the entire upload process has finished, whether or not an error occurred.  It does not receive any additional arguments.

### fileQueueError

An error occurred while the user was selecting the file.  The handler receives an object describing the error:

 Field       | Description                                                                                                                                  
 -----       | -----------                                                                                                                                  
 **code**    | A string indicating what type of error occurred.  Possible values include: "FILE_TOO_BIG_ERROR", "EMPTY_FILE_ERROR", and "FILE_QUEUE_ERROR". 
 **message** | A more user-friendly description of the error.                                                                                               
 **file**    | An object describing the file that the user tried to select, if available.                                                                   

### uploadError

An error occurred while transferring the file to our servers.  The handler receives an object describing the error:

 Field       | Description                                                                                                                                                                   
 -----       | -----------                                                                                                                                                                   
 **code**    | A string indicating what type of error occurred.  Possible values include: "FILE_CANCELLED", "IO_ERROR", "HTTP_ERROR", "UPLOAD_FAILED", "UPLOAD_STOPPED", and "UPLOAD_ERROR". 
 **message** | A more user-friendly description of the error.                                                                                                                                
 **file**    | An object describing the file that the user tried to upload, if available.                                                                                                    

### postUploadFailure

The file was transferred to our servers correctly, but an error occurred during the JSONP call that tells the main Wistia application about the new file.  The handler receives a string whose possible values are "error" or "timeout".

## Example

<pre><code class="language-markup">
&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;
&lt;html&gt;
    &lt;head&gt;
    &lt;title&gt;Tester&lt;/title&gt;
    &lt;script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"&gt;&lt;/script&gt;
    &lt;/head&gt;
    &lt;body&gt;
    &lt;div id="wistia-upload-widget" style="width: 500px; height: 75px;"&gt;&lt;/div&gt;
    &lt;div id="wistia-upload-widget-2" style="width: 500px; height: 75px;"&gt;&lt;/div&gt;
    &lt;div id="wistia-upload-widget-3" style="width: 500px; height: 75px;"&gt;&lt;/div&gt;
    &lt;script src="http://static.wistia.com/javascripts/upload_widget.js"&gt;&lt;/script&gt;
    &lt;div id="output"&gt;&lt;p&gt;Output:&lt;/p&gt;&lt;/div&gt;
    &lt;script&gt;
</code><code class="language-javascript">
      var progressMessages = 0;
      var cb = {
        'initializationComplete': function() {
          $('#output').append(&lt;p&gt;initializationComplete&lt;/p&gt;);
        },

        'initializationError': function(error) {
          $('#output').append(&lt;p&gt;initializationError: ' + error + &lt;/p&gt;);
        },

        'fileQueued': function(file) {
          $('#output').append(&lt;p&gt;fileQueued: ' + file.name + &lt;/p&gt;);
        },

        'uploadProgress': function() {
          progressMessages += 1;

          if ($('#output .progress').size() == 0) {
            $('#output').append(&lt;p&gt;uploadProgress: &lt;span class="progress"&gt;1&lt;/span&gt;&lt;/p&gt;);
          } else {
            $('#output span.progress').html(progressMessages.toString());
          }
        },

        'uploadSuccess': function(jsonFile) {
          $('#output').append(&lt;p&gt;uploadSuccess&lt;/p&gt;);
        },

        'uploadComplete': function() {
          $('#output').append(&lt;p&gt;uploadComplete&lt;/p&gt;);
        },

        'postUploadFailure': function(error) {
          $('#output').append(&lt;p&gt;postUploadFailure: ' + error + &lt;/p&gt;);
        },

        'fileQueueError': function(error) {
          $('#output').append(&lt;p&gt;fileQueueError: ' + error.code + &lt;/p&gt;);
        },

        'uploadError': function(error) {
          $('#output').append(&lt;p&gt;uploadError: ' + error.code + &lt;/p&gt;);
        }
      };

      var widget1 = new wistia.UploadWidget({ divId: 'wistia-upload-widget', publicProjectId: '4bD', callbacks: cb, buttonText: 'Project Upload' });

      // 2nd widget
      var progressMessages2 = 0;
      var cb2 = {
        'initializationComplete': function() {
          $('#output').append(&lt;p&gt;initializationComplete2&lt;/p&gt;);
        },

        'initializationError': function(error) {
          $('#output').append(&lt;p&gt;initializationError2: ' + error + &lt;/p&gt;);
        },

        'fileQueued': function(file) {
          $('#output').append(&lt;p&gt;fileQueued2: ' + file.name + &lt;/p&gt;);
        },

        'uploadProgress': function() {
          progressMessages2 += 1;

          if ($('#output .progress2').size() == 0) {
            $('#output').append(&lt;p&gt;uploadProgress2: &lt;span class="progress2"&gt;1&lt;/span&gt;&lt;/p&gt;);
          } else {
            $('#output span.progress2').html(progressMessages2.toString());
          }
        },

        'uploadSuccess': function(jsonFile) {
          $('#output').append(&lt;p&gt;uploadSuccess2&lt;/p&gt;);
        },

        'uploadComplete': function() {
          $('#output').append(&lt;p&gt;uploadComplete2&lt;/p&gt;);
        },

        'postUploadFailure': function(error) {
          $('#output').append(&lt;p&gt;postUploadFailure2: ' + error + &lt;/p&gt;);
        },

        'fileQueueError': function(error) {
          $('#output').append(&lt;p&gt;fileQueueError2: ' + error.code + &lt;/p&gt;);
        },

        'uploadError': function(error) {
          $('#output').append(&lt;p&gt;uploadError2: ' + error.code + &lt;/p&gt;);
        }
      };

      var widget2 = new wistia.UploadWidget({ divId: 'wistia-upload-widget-2', publicProjectId: '8j3', callbacks: cb2 });

      // 3rd widget
      var progressMessages3 = 0;
      var cb3 = {
        'initializationComplete': function() {
          $('#output').append(&lt;p&gt;initializationComplete3&lt;/p&gt;);
        },

        'initializationError': function(error) {
          $('#output').append(&lt;p&gt;initializationError3: ' + error + &lt;/p&gt;);
        },

        'fileQueued': function(file) {
          $('#output').append(&lt;p&gt;fileQueued3: ' + file.name + &lt;/p&gt;);
        },

        'uploadProgress': function() {
          progressMessages2 += 1;

          if ($('#output .progress3').size() == 0) {
            $('#output').append(&lt;p&gt;uploadProgress3: &lt;span class="progress3"&gt;1&lt;/span&gt;&lt;/p&gt;);
          } else {
            $('#output span.progress3').html(progressMessages2.toString());
          }
        },

        'uploadSuccess': function(jsonFile) {
          $('#output').append(&lt;p&gt;uploadSuccess3&lt;/p&gt;);
        },

        'uploadComplete': function() {
          $('#output').append(&lt;p&gt;uploadComplete3&lt;/p&gt;);
        },

        'postUploadFailure': function(error) {
          $('#output').append(&lt;p&gt;postUploadFailure3: ' + error + &lt;/p&gt;);
        },

        'fileQueueError': function(error) {
          $('#output').append(&lt;p&gt;fileQueueError3: ' + error.code + &lt;/p&gt;);
        },

        'uploadError': function(error) {
          $('#output').append(&lt;p&gt;uploadError3: ' + error.code + &lt;/p&gt;);
        }
      };

      var widget3 = new wistia.UploadWidget({ divId: 'wistia-upload-widget-3', publicProjectId: '8j3', callbacks: cb3 });
    &lt;/script&gt;
    &lt;/body&gt;
&lt;/html&gt;
</code></pre>
