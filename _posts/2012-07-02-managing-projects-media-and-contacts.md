# Managing projects, media, and contacts

## Projects

### How to create a project?
`<style float-right>`{{:new-project.png|}}`</style>`
To create a project, login as a manager, hover over the "Actions" menu on the "My Projects" page, and select "New Project".  Once you click "New Project", you will immediately be taken into the new project where you can upload content, invite contacts, and edit the project name.
\\
\\
### How to edit the name of a project?

Once you are inside the project, if you hover your mouse over the title of the project, you will see an "edit" indicator pop-up next to the title on the right.  Simple click anywhere on the project name and you will be in edit mode where you can make changes to the name.  When finished, simply hit return or click elsewhere on the page and your new project name will be saved.

### How to delete a project?

`<style float-right>`{{:delete-project.png?150|}}`</style>`
\\
\\
\\
To delete a project, go into the project and put your mouse over the Project Actions menu.  Select the "Delete Project".  You will be asked if you are sure you want to delete the project, select "OK".

\\
\\
\\
### How to disable comments for a project

To turn off comments (preventing users from seeing or making comments), go into the project and select "Project Settings" from the Project Actions menu.  A "Project Settings" dialog will appear.  Select the "Off" option for the Comments setting and click the "Save Settings" button.  Comments are now disabled for the project.
\\
`<style center>`{{:comments-off.png?450|}}`</style>`
\\
### What is a project section?

Project sections allow you to organize media within a project.  Media can be put into project sections and the sections can then expanded or collapsed to provide a cleaner experience for projects with many media. \\
`<style center>`{{:sections.png?450|}}`</style>`
\\

### How to put media into a project section

Once a section has been created you can drag-and-drop media from other parts of the project into that section.  Simply put your mouse over the media you want to move, click and hold the left mouse button, and then drag the media to the section you wish to place it in.  The image below shows a media being dragged and dropped into a section.\\
`<style center>`{{:section-dnd.png?450|}}`</style>`
\\
### How to target sections for upload

When uploading new media into a project with many sections and other media items, it can be very useful to upload directly to one of your sections.  To do this, simply click the target icon on the right-hand side of the section header and it will turn from gray to red.  While this target icon is red, all media uploaded or copied into the project will automatically be placed in this section.
`<style center>`{{:target-section.png?450|}}`</style>`
\\
### How to change permissions for users on a project

`<style float-right>`{{:manage-permissions.png?180|}}`</style>`
\\
\\
While permissions are initially set when a contact is invited to a project, often managers will want to change those permissions after the initial invite.  To do this, first select "Manage Permissions" from the Project Actions menu.
\\
\\
This will bring up a dialog box that shows a matrix of contacts shared on that project and the permissions that those contacts have.  Simply check the boxes appropriately to provide the contacts with the permissions you desire.  When finished, click the "Update Permissions" button at the bottom of the dialog and your changes will be saved.
`<style center>`{{:permissions-dialog.png?450|}}`</style>`
\\

### How to add a description to your project

To add a description to your project, first go to the project page.  Now, choose "Add Sidebar Element" from the Projcet Actions menu.  This will bring up a dialog box.  Press the "Add" button for the Description sidebar element.
`<style center>`{{:add-sidebar.png?400|}}`</style>`
\\

`<style float-right>`{{:description.png?180|}}`</style>`

A new description element will now show up below the Media Actions menu.  Clicking the "Edit" button below the Description element will bring up the rich-text editor.  Within the rich-text editor, you can edit the description visually or directly edit the source HTML for the description. When finished editing, click the "Save" button below the Description element and your changes will be saved.
\\
## Media

### How to embed a video

To embed a video on your website, see the Sharing section entitled ["Embed a video on your website"]({{ site.url }}/{{ page.lang }}/sharing#Embed a video on your website.html).
\\
\\
### How to edit the name of a media

Once you are on the page where the media is displayed, if you hover your mouse over the title of the project, you will see an "edit" indicator pop-up next to the title on the right.  Simple click anywhere on the project name and you will be in edit mode where you can make changes to the name.  When finished, simply hit return or click elsewhere on the page and your new media name will be saved.
\\

### How to invite an individual to view your video

To invite an individual to view your video within Wistia, see the Sharing section entitled ["Privately share video via email"]({{ site.url }}/{{ page.lang }}/sharing#Privately share video via email.html).
\\
\\
### How to enable or prevent users from downloading media

`<style float-right>`{{:manage-permissions.png?180|}}`</style>`
\\
\\
\\
By default, contacts invited into Wistia are not permitted to download your media files.  A contact's ability to download files is controlled via permissions at the project level.  To adjust a contact's permissions for a particular project, go into that project and choose "Manage permissions" from the Project Actions menu.
\\
\\
\\
\\
`<style float-left>`{{:permissions-dialog.png?400|}}`</style>`
After clicking the "Manage permissions" option, the following dialog will be shown with a matrix of permissions for your contacts.  To enable a particular contact to download your media files, check the "Download" box for that contact.  To revoke download permissions for a contact, uncheck the "Download" box.  After setting the permissions appropriately, hit the "Update Permissions" button at the bottom of the dialog.

Please note that the above action changes the permissions for a contact on a particular project.  If the contact is shared on other projects, their permissions on those other projects will not be affected.
\\
\\
### How to change the thumbnail image on a video

The thumbnail image for a video can be set in one of two ways:
 1.  A frame can be chosen from the video
 2.  An image can be uploaded to be used as the thumbnail image

Both methods of changing the thumbnail image can be accessed from the same point in the application.  First, go to the page where the video is displayed.   Then, from the Media Actions menu, choose "Change Thumbnail".  

`<style float-right>`{{:change-thumbnail.png?400|}}`</style>` **1. Choosing a frame -** You can select a frame from the video to be the thumbnail for the video.  To do this, seek to the point in the video where the frame you want to use is displayed in the video player.  Then, click the "Set current frame as thumbnail" button.

**2. Upload thumbnail -** You always have the option to upload a new image as the thumbnail image for a video.  Simply click the "Choose file" button and find the file on your local computer.  When done, hit the "Upload thumbnail" button and the old video thumbnail will be replaced with your new one.
\\

### What are timecoded comments?

Timecoded comments allow the user to link a comment on a video to a particular time in the video.  The timecode is captured and stored with the comment such that when another user views the comment, they can click on the time code, the video will skip directly to the point in the video where the comment was made.

`<style center>`{{:timecoded-comment.png?450|}}`</style>`
\\
### How to make a timecoded comment

To make a timecoded comment, pause the video at the time to which you wish the comment to be linked.  Then, simply check the box next to the Post Comment button which says "Link comment to current time in video".  Once the box is checked and the comment has been written, click the Post comment button and your comment will be saved.

`<style center>`{{:make-comment.png?450|}}  `</style>`
\\
### Can I turn off comments for videos and other media?

Yes. Comments can be disabled/enabled at the project level.  See ["How to disable comments for a project"]({{ site.url }}/{{ page.lang }}/managing_projects_media_and_contacts#How to disable comments for a project.html) to learn how.
\\
### How to add a description to your video

To add a description to your video, first go to the page where the video can be viewed.  Now, choose "Add Sidebar Element" from the Media Actions menu.  This will bring up a dialog box.  Press the "Add" button for the Description sidebar element.
`<style center>`{{:add-sidebar.png?400|}}`</style>`
\\

`<style float-right>`{{:description.png?180|}}`</style>`

A new description element will now show up below the Media Actions menu.  Clicking the "Edit" button below the Description element will bring up the rich-text editor.  Within the rich-text editor, you can edit the description visually or directly edit the source HTML for the description. When finished editing, click the "Save" button below the Description element and your changes will be saved.
\\
### How to see tracking statistics for my video

If you have embedded your video on your website, please see ["How to view tracking statistics for my video: Statistics for embedded videos"]({{ site.url }}/{{ page.lang }}/tracking-basic#Statistics for embedded videos.html).

If you have shared video with people via email and/or Project Link, please see ["How to view tracking statistics for my video: Statistics for user sessions"]({{ site.url }}/{{ page.lang }}/tracking-basic#Statistics for user sessions.html).
### How to copy a video to another project

`<style float-right>`{{:copy_media.png|}}`</style>`Go to the project you wish to copy the video to.  Under the Project Actions menu, choose the "Copy media" option.  This will open up the Copy Media panel in the right-hand sidebar.  From the drop-down menu in the Copy Media panel, choose the project from which you wish to copy media.  Once the project is selected in the Copy Media panel, all of the media from that project will be displayed below the drop down box.  Simply click on the the media in the Copy Media panel to copy it to the current project.

## Contacts

### What is a contact?

A contact is an individual named user that can view and access media within your Wistia account. Contacts can be given permission to download content, upload new videos, or invite other viewers on a project-by-project basis. All contact activity is recorded and viewable within the “User Sessions” portion of Wistia Stats.

When to use contacts:

*  When you want people to view content privately within Wistia

*  When you want to be able to track viewing of your content by someone's email address
\\
### How to create a contact

While there are several ways to create a contact within Wistia, the easiest way is to simply share a project with someone.  To do this, you will need the person's email address.  Directions on sharing a project via email can be found in the section: ["How to privately share a video from Wistia"]({{ site.url }}/{{ page.lang }}/share-privately.html).  When you share a Wistia project with an individual (or group of individuals), the contacts are automatically created in your account if they did not previously exist.
\\
\\
Alternatively, contacts can be created without sharing projects.  To do this, choose the "Contacts" item in the Account tab on any page in your Wistia account.  This will take you to your "My Contacts" page.  From here, choose "Create contacts" from the Actions menu.  A dialog will appear that will let you either create a single new contact (the "New Contact" tab) or create many new contacts simultaneously (the "Advanced Add" tab).  Choose whichever method is appropriate based on the number of contacts you want to create.  Simply enter the requested information and hit the "Create contacts" button and your new contacts will be created.  Please note that contacts created in this manner will NOT have access to any content and must be explicitly shared on projects in your account.
\\
### How to invite a contact to view your content

Directions on sharing a project with a contact via email can be found in the section: ["How to privately share a video from Wistia"]({{ site.url }}/{{ page.lang }}/share-privately.html).
\\
### How to view statistics for a contact

If you have shared video with a contact, please see ["How to view tracking statistics for my video: Statistics for user sessions"]({{ site.url }}/{{ page.lang }}/tracking-basic#Statistics for user sessions.html) to learn how to view viewing statistics for that contact.
\\
### How to remove content access for a contact

As mentioned in other sections contact access to content is controlled on a project-by-project basis.  As a result, if a contact is shared on multiple projects, you will need to remove them from each project individually or delete the contact from your account entirely.

`<style float-right>`{{:permissions-dialog.png?400|}}`</style>`To remove a contact from a project, go to the project page and select "Manage permissions" from the Project Actions menu.  This will bring up the permission management dialog.  To remove the contact, click the trashcan icon on the far right-hand side of the line for that contact.  This will completely remove the contact's access to the project materials.  Finally, click the "Update Permissions" button on the dialog to save the change.
\\
\\
\\

### How to change permissions for a contact on a project

Access to content for a contact is controlled at the Project level.  To learn how to change permissions on a Project for a Contact, please see our help section: ["How to change permissions for users on a project"]({{ site.url }}/{{ page.lang }}/managing_projects_media_and_contacts#How to change permissions for users on a project.html).
\\
### What are contact groups?

Contact groups are collections of contacts that can be managed and treated as a single user for the purposes of controlling access and permissions on projects.  Hundreds (or even thousands) of users can be added to a contact group.  Then, by simply sharing a project with that single group, all of the users in the group will be given access to a project.  This makes working with large numbers of users with similar content access and permissions much easier.

As another example, let's say there are three projects that make up new employee training for a company using Wistia.  Furthermore, let's say that the company's Wistia manager had created a "New Hire" group which had been shared on the projects with specific permissions.  Now, when the company hires a new employee, they can simply add the new contact to the "New Hire" group and the new contact will have access to all of the appropriate content. 
\\
### How to create contact groups

Contact groups are created and managed from the Contacts area of the Wistia application.  To get to this area, choose "Contacts" from the Account tab on any page in your Wistia account.  

There are two main ways to add contacts to a contact group.  If you want to add existing users to a new or existing group, select the users you wish to add to the group by checking the box next to their name on the "My Contacts" page.  Once you have selected all of the desired contacts, choose "Add to group" from the Actions menu. You will be prompted to enter a name for the group you would like to add the contacts to.  This can be either a new or existing group.  Once the group name is entered, press the "Add to group" button.  This will complete the process.  Now the entire group can be shared on projects just as you would share an individual contact.

If you wish to create new users and add them to a group as a single action, choose "Create contacts" from the Actions menu.  On the dialog you are presented, two tabs will be shown.  Select the tab which reads "Advanced Add".   A list of email address (comma or line break separated) can be entered into the Contacts area and the group name (new or existing) is entered into the box labeled "Add to group".  When completed, click the "Create contacts" button and all of the contacts will be created and immediately added to the group.  Don't worry if some of the contacts in your list are already contacts in your account, they will only be added to the group (no duplicate contacts will be created).

`<style center>`{{:advanced-add.png?450|}}`</style>`
\\ 
### Can a contact be invited in such a way that they don't need to set a password?

Yes.  By default, when a project is shared with a contact, the contact will be required to choose a password if they have never logged into Wistia before or enter their password if they have previously logged in to Wistia. 

`<style float-right>`{{:share-dialog.png?400|}}`</style>`To share a project with a contact in a manner that doesn't require a password, choose "Share project" from the Project Actions menu.  Then, uncheck the "Require invitees to enter password" box in the permissions section.  Fill out the rest of the information on the form as appropriate and then click the "Share" button.  The person shared will receive an email with a link to the project.  When they click this link, they will not be required to login; rather, they will be taken directly to the project page where they will be able to view your content.  The users activity will still be tracked and tied to their contact information in your account.  Their activity can be viewed in the User Sessions section of the Stats.
\\
### How can a contact change their password?

Yes. Contact credentials within Wistia are self-managed, which means that the contact chooses their own password and the user resets their own password if it is forgotten.  If a contact forgets their password, they can click the "Forgot your password?" link on your Wistia account's login page.

`<style center>`{{:forgotten-password.png?400|}}`</style>`

The contact will then be prompted for their email address (which is also their Wistia login).  Once the "Reset Account" button is pressed, an email will be sent containing a link which will allow them to set their password again.  

`<style center>`{{:reset-password-screen.png?400|}}`</style>`

The contact's old password will work until it is reset which prevents others from locking a contact out by resetting the contact's password.  Finally, because the email address is used as the login, even if a third party resets a contact's password, they will not receive the email containing the new link to set the contact's password.
\\
----
\\
~~DISQUS~~
