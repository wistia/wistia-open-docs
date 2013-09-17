---
title: Contact Management
layout: post
category: Private Sharing
description: Contacts are the individual folks you invite in to your Wistia account to privately view your content. Learn all about creating contacts and managing their permissions here.
post_intro: <p><b>Contacts</b> are viewers that you have given certain permissions to (the most basic being the ability to view videos in your Wistia account).</p><p>Contacts can also be given permission to download content, upload new videos, or invite other viewers on a project-by-project basis. All contact activity is recorded and viewable within the “User Sessions” portion of Wistia Stats.</p><p>When to use contacts:</p><ul><li>When you want people to view content privately within Wistia</li><li>When you want to be able to track viewing of your content (in your Wistia account)</li></ul>
footer: 'for_intermediates'
---

## How to Create a Contact

While there are several ways to create a contact within Wistia, the easiest way 
is to simply share a project with someone.  To do this, you will need the person's 
email address.  Directions on sharing a project via email can be found in the 
[Private Sharing doc article]({{ '/private-sharing' | post_url }}).  

When you share a Wistia project with an individual (or group of individuals), 
the contacts are automatically created in your account if they did not 
previously exist.

Alternatively, contacts can be created without sharing projects.  To do this, 
choose the "Contacts" item in the Account tab on any page in your Wistia account.
This will take you to your "My Contacts" page.

From here, choose *Create Contacts* from the <span class="action_menu">Actions</span> menu.
A dialog will appear that will let you either create a single new contact 
(the "New Contact" tab) or create many new contacts simultaneously 
(the "Advanced Add" tab).  Choose whichever method is appropriate based on the 
number of contacts you want to create.  Simply enter the requested information 
and hit <span class="faux_button">Create contacts</span>.

{{ "Contacts created in this manner will NOT have access to any content and must be explicitly shared on projects in your account." | note }}

## How to invite a contact to view your content

Directions on sharing a project with a contact via email can be found in the 
section: [Private Sharing doc article]({{ '/private-sharing' | post_url }}).

## How to view statistics for a contact

If you have shared video with a contact, please see the 
[Statistics for user sessions doc article]({{ '/private-analytics' | post_url }}) to 
learn how to view viewing statistics for that contact.

## How to remove content access for a contact

As mentioned in other sections contact access to content is controlled on a 
project-by-project basis.  As a result, if a contact is shared on multiple 
projects, you will need to remove them from each project individually or delete 
the contact from your account entirely.

{% post_image hashed_id: 'd0bfab05474351f90b5bfb9281ed051119c9111b', width: 320, class: 'float_right' %}

To remove a contact from a project, go to the project page and select "Manage 
permissions" from the Project Actions menu.  This will bring up the permission
management dialog.  To remove the contact, click the trashcan icon on the far 
right-hand side of the line for that contact.  This will completely remove the 
contact's access to the project materials.  

Finally, click the "Update Permissions" button on the dialog to save the change.

## How to change permissions for a contact on a project

Access to content for a contact is controlled at the Project level.  To learn 
how to change permissions on a Project for a Contact, please see 
[change permissions for users on a project]({{ '/private-sharing#managing_permissions' | post_url }}).

## What are contact groups?

Contact groups are collections of contacts that can be managed and treated as a 
single user for the purposes of controlling access and permissions on projects.  
Hundreds (or even thousands) of users can be added to a contact group.  Then, by 
simply sharing a project with that single group, all of the users in the group 
will be given access to a project.  This makes working with large numbers of 
users with similar content access and permissions much easier.

As another example, let's say there are three projects that make up new employee 
training for a company using Wistia.  Furthermore, let's say that the company's
Wistia manager had created a "New Hire" group which had been shared on the projects 
with specific permissions.  Now, when the company hires a new employee, they can 
simply add the new contact to the "New Hire" group and the new contact will have 
access to all of the appropriate content. 

## How to create contact groups

Contact groups are created and managed from the Contacts area of the Wistia 
application.  To get to this area, choose "Contacts" from the Account tab on 
any page in your Wistia account.

There are two main ways to add contacts to a contact group.  If you want to 
add existing users to a new or existing group, select the users you wish to 
add to the group by checking the box next to their name on the "My Contacts" 
page.  

Once you have selected all of the desired contacts, choose "Add to group" from 
the Actions menu. You will be prompted to enter a name for the group you would 
like to add the contacts to.  This can be either a new or existing group.  

Once the group name is entered, press the "Add to group" button.  This will 
complete the process.  Now the entire group can be shared on projects just as 
you would share an individual contact.

If you wish to create new users and add them to a group as a single action, 
choose "Create contacts" from the Actions menu.  On the dialog you are presented, 
two tabs will be shown.  Select the tab which reads "Advanced Add".   A list of 
email address (comma or line break separated) can be entered into the Contacts 
area and the group name (new or existing) is entered into the box labeled "Add to group".  

When completed, click the "Create contacts" button and all of the contacts will 
be created and immediately added to the group.  Don't worry if some of the 
contacts in your list are already contacts in your account, they will only be 
added to the group (no duplicate contacts will be created).

{% post_image hashed_id: '9eec03f4f25becaf23e9bf2bb78aaa669873ed6d', width: 660, class: 'center' %}


## How can a contact change their password?

Yes. Contact credentials within Wistia are self-managed, which means that the 
contact chooses their own password and the user resets their own password if it 
is forgotten.  If a contact forgets their password, they can click the "Forgot 
your password?" link on your Wistia account's login page.

{% post_image hashed_id: '3b9465ddfd0f6cd43c6b29aaec269d46fdaa468c', width: 660, class: 'center' %}

The contact will then be prompted for their email address (which is also their 
Wistia login).  Once the "Reset Account" button is pressed, an email will be 
sent containing a link which will allow them to set their password again.

{% post_image hashed_id: 'ddab300c7ed243b3d0396fdc22600320d7d15a6d', width: 660, class: 'center' %}

The contact's old password will work until it is reset which prevents others 
from locking a contact out by resetting the contact's password.  Finally, 
because the email address is used as the login, even if a third party resets a 
contact's password, they will not receive the email containing the new link to 
set the contact's password.

