## Upload Widget

The Upload Widget is a snippet of HTML, CSS, and JS that you can embed on your page to allow viewers of that page to upload their own media to your site.

### Upload Widget Generator

Wistia has an [Upload Widget Generator]({{ site.url }}/{{ page.lang }}/upload-widget-generator.html) that you can use to make embedding an upload widget easy and quick for non-technical users.  The rest of this page is geared primarily towards developers that want more control over how their page behaves with the widget.

### Upload Widget Code

The snippet should take the following form:

	
	`<div id="wistia-upload-widget" style="width: 500px; height: 75px;">``</div>`
	`<script src="http://static.wistia.com/javascripts/upload_widget.js">``</script>`
	`<script>`
	var widget1 = new wistia.UploadWidget({ divId: 'wistia-upload-widget', publicProjectId: '4bD' });
	`</script>`


Use your project's *public* ID as the **publicProjectId** parameter on the last line (in this instance, '4bD').

**Note:** In order for the upload widget to work for a project, that project must have anonymous uploads enabled (i.e. **anonymousCanUpload** must be true).

The upload widget should load into the area defined by the **%%`<div>`%%** tag.  You can change the dimensions of this tag and it will make a best effort to fit within the bounds of that div.

### JavaScript Event Callbacks

You may optionally specify JavaScript callbacks to get called whenever various events happen in the widget.  In order to do so, pass an extra 'callbacks' parameter in the options hash passed to the upload widget initialization code.  The callbacks object should be a plain old JavaScript hash where the keys signify callback names and the values are the functions you want called when each event happens.  See the example at the bottom of this page.

#### fileQueued

This event gets triggered after the user has selected a file to upload from the file selection dialog.  The callback function gets an object describing the selected file.  Here are the fields in the file object:

 | Field                | Description                          | 
 | -----                | -----------                          | 
 | **name**             | The name of the selected file.       | 
 | **size**             | The size of the file, in bytes.      | 
 | **creationdate**     | The date the file was created.       | 
 | **modificationdate** | The date the file was last modified. | 

#### uploadProgress

This event gets triggered continuously as the file gets uploaded.  The only extra parameter is the total number of bytes that have been loaded.

#### uploadSuccess

This event gets triggered after the file has been successfully uploaded.  It receives an object describing the newly created media:

 | Field                   | Description                                                                                                                                                                                                                             | 
 | -----                   | -----------                                                                                                                                                                                                                             | 
 | **id**                  | A unique numeric identifier for the media within the system.                                                                                                                                                                            | 
 | **name**                | The display name of the media.                                                                                                                                                                                                          | 
 | **type**                | A string representing what type of media this is.  Valid values are "Video", "Image", "Audio", "Swf", "MicrosoftOfficeDocument", "PdfDocument", or "UnknownType".                                                                       | 
 | **section** (optional)  | The title of the section in which the media appears.  This attribute is omitted if the media is not in a section (default).                                                                                                             | 
 | **thumbnail**           | An object representing the thumbnail for this media.  The attributes are URL, width, and height.                                                                                                                                        | 
 | **duration** (optional) | For Audio or Video files, this field specifies the length (in seconds).  For Document files, this field specifies the number of pages in the document.  For other types of media, or if the duration is unknown, this field is omitted. | 
 | **created**             | The date when the media was originally uploaded.                                                                                                                                                                                        | 
 | **updated**             | The date when the media was last changed.                                                                                                                                                                                               | 

#### uploadComplete

This event gets triggered after the entire upload process has finished, whether or not an error occurred.  It does not receive any additional arguments.

#### fileQueueError

An error occurred while the user was selecting the file.  The handler receives an object describing the error:

 | Field       | Description                                                                                                                                  | 
 | -----       | -----------                                                                                                                                  | 
 | **code**    | A string indicating what type of error occurred.  Possible values include: "FILE_TOO_BIG_ERROR", "EMPTY_FILE_ERROR", and "FILE_QUEUE_ERROR". | 
 | **message** | A more user-friendly description of the error.                                                                                               | 
 | **file**    | An object describing the file that the user tried to select, if available.                                                                   | 

#### uploadError

An error occurred while transferring the file to our servers.  The handler receives an object describing the error:

 | Field       | Description                                                                                                                                                                   | 
 | -----       | -----------                                                                                                                                                                   | 
 | **code**    | A string indicating what type of error occurred.  Possible values include: "FILE_CANCELLED", "IO_ERROR", "HTTP_ERROR", "UPLOAD_FAILED", "UPLOAD_STOPPED", and "UPLOAD_ERROR". | 
 | **message** | A more user-friendly description of the error.                                                                                                                                | 
 | **file**    | An object describing the file that the user tried to upload, if available.                                                                                                    | 

#### postUploadFailure

The file was transferred to our servers correctly, but an error occurred during the JSONP call that tells the main Wistia application about the new file.  The handler receives a string whose possible values are "error" or "timeout".

### Example

`<code html upload-widget-test.html>`
`<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">`
`<html>`
    `<head>`
    `<title>`Tester`</title>`
    `<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js">``</script>`
    `</head>`
    `<body>`
    `<div id="wistia-upload-widget" style="width: 500px; height: 75px;">``</div>`
    `<div id="wistia-upload-widget-2" style="width: 500px; height: 75px;">``</div>`
    `<div id="wistia-upload-widget-3" style="width: 500px; height: 75px;">``</div>`
    `<script src="http://static.wistia.com/javascripts/upload_widget.js">``</script>`
    `<div id="output">``<p>`Output:`</p>``</div>`
    `<script>`
      var progressMessages = 0;
      var cb = {
        'initializationComplete': function() {
          $('#output').append(`<p>`initializationComplete`</p>`);
        },

        'initializationError': function(error) {
          $('#output').append(`<p>`initializationError: ' + error + `</p>`);
        },

        'fileQueued': function(file) {
          $('#output').append(`<p>`fileQueued: ' + file.name + `</p>`);
        },

        'uploadProgress': function() {
          progressMessages += 1;

          if ($('#output .progress').size() == 0) {
            $('#output').append(`<p>`uploadProgress: `<span class="progress">`1`</span>``</p>`);
          } else {
            $('#output span.progress').html(progressMessages.toString());
          }
        },

        'uploadSuccess': function(jsonFile) {
          $('#output').append(`<p>`uploadSuccess`</p>`);
        },

        'uploadComplete': function() {
          $('#output').append(`<p>`uploadComplete`</p>`);
        },

        'postUploadFailure': function(error) {
          $('#output').append(`<p>`postUploadFailure: ' + error + `</p>`);
        },

        'fileQueueError': function(error) {
          $('#output').append(`<p>`fileQueueError: ' + error.code + `</p>`);
        },

        'uploadError': function(error) {
          $('#output').append(`<p>`uploadError: ' + error.code + `</p>`);
        }
      };

      var widget1 = new wistia.UploadWidget({ divId: 'wistia-upload-widget', publicProjectId: '4bD', callbacks: cb, buttonText: 'Project Upload' });

      // 2nd widget
      var progressMessages2 = 0;
      var cb2 = {
        'initializationComplete': function() {
          $('#output').append(`<p>`initializationComplete2`</p>`);
        },

        'initializationError': function(error) {
          $('#output').append(`<p>`initializationError2: ' + error + `</p>`);
        },

        'fileQueued': function(file) {
          $('#output').append(`<p>`fileQueued2: ' + file.name + `</p>`);
        },

        'uploadProgress': function() {
          progressMessages2 += 1;

          if ($('#output .progress2').size() == 0) {
            $('#output').append(`<p>`uploadProgress2: `<span class="progress2">`1`</span>``</p>`);
          } else {
            $('#output span.progress2').html(progressMessages2.toString());
          }
        },

        'uploadSuccess': function(jsonFile) {
          $('#output').append(`<p>`uploadSuccess2`</p>`);
        },

        'uploadComplete': function() {
          $('#output').append(`<p>`uploadComplete2`</p>`);
        },

        'postUploadFailure': function(error) {
          $('#output').append(`<p>`postUploadFailure2: ' + error + `</p>`);
        },

        'fileQueueError': function(error) {
          $('#output').append(`<p>`fileQueueError2: ' + error.code + `</p>`);
        },

        'uploadError': function(error) {
          $('#output').append(`<p>`uploadError2: ' + error.code + `</p>`);
        }
      };

      var widget2 = new wistia.UploadWidget({ divId: 'wistia-upload-widget-2', publicProjectId: '8j3', callbacks: cb2 });

      // 3rd widget
      var progressMessages3 = 0;
      var cb3 = {
        'initializationComplete': function() {
          $('#output').append(`<p>`initializationComplete3`</p>`);
        },

        'initializationError': function(error) {
          $('#output').append(`<p>`initializationError3: ' + error + `</p>`);
        },

        'fileQueued': function(file) {
          $('#output').append(`<p>`fileQueued3: ' + file.name + `</p>`);
        },

        'uploadProgress': function() {
          progressMessages2 += 1;

          if ($('#output .progress3').size() == 0) {
            $('#output').append(`<p>`uploadProgress3: `<span class="progress3">`1`</span>``</p>`);
          } else {
            $('#output span.progress3').html(progressMessages2.toString());
          }
        },

        'uploadSuccess': function(jsonFile) {
          $('#output').append(`<p>`uploadSuccess3`</p>`);
        },

        'uploadComplete': function() {
          $('#output').append(`<p>`uploadComplete3`</p>`);
        },

        'postUploadFailure': function(error) {
          $('#output').append(`<p>`postUploadFailure3: ' + error + `</p>`);
        },

        'fileQueueError': function(error) {
          $('#output').append(`<p>`fileQueueError3: ' + error.code + `</p>`);
        },

        'uploadError': function(error) {
          $('#output').append(`<p>`uploadError3: ' + error.code + `</p>`);
        }
      };

      var widget3 = new wistia.UploadWidget({ divId: 'wistia-upload-widget-3', publicProjectId: '8j3', callbacks: cb3 });
    `</script>`
    `</body>`
`</html>`
`</code>`
