# Dynamic Links: Email Marketing Tools

The table below contains information on email marketing tools and whether they support the creation of dynamic links.  If they do support dynamic links, the URL email merge tag is also shown.  If your email marketing is not shown, please feel free to email us at `<support@wistia.com>` and we can find out if your provider supports this feature.

 | Provider          | Supports Dynamic Links? | URL Email merge Tag           |              
 | --------          | ----------------------- | -------------------           |              
 | AWeber            | Yes                     | {!email}                      |              
 | Blue Hornet       | Yes                     | `<nowiki>`%%to_email%%`</nowiki>` |              
 | Campaign Monitor  | Yes                     | [email]                       |              
 | Constant Contact  | Yes*                    | $subscriber.email$            |              
 | Emma              | No                      | N/A                           |              
 | iContact          | Yes                     | [email]                       |              
 | MailChimp         | Yes                     | *%%                           | %%URL:EMAIL%% | %%* | 
 | Vertical Response | Yes                     | {EMAIL_ADDRESS}               |              


\\
\\
### * Constant Contact Instructions

You can create dynamic links in Constant Contact's New Wizard by adding the proper variable to the link URL. You can insert dynamic links into New Wizard templates.  You CANNOT insert dynamic links into custom HTML templates.  

(You can use dynamic links in a custom XHTML template, however the steps are different than described below. Contact Constant Contact support for more information on the steps you need to follow to create dynamic links.)

Dynamic links are not trackable in Constant Contact reports.

The dynamics links will only function in a scheduled email, not a test email.

Go to the block where you want to create the link and click the Edit icon.

Place your cursor at the location within the block where you want the link to appear.

Under the Insert menu, click Link.

Enter the Link Name (what the recipient will see).

Check the Disable Link Tracking box.

Important: The Disable Link Tracking box must be checked for dynamic links to function correctly.

Enter the link URL.

Example: http://www.yourdomainhere.com?wemail=$subscriber.email$ 
