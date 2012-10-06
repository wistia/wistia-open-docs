---

title: Account Setup
layout: post
category: Account Management
description: Questions about admin type stuff? Account Dashboards? Billing statements? Don't worry, we've got it all covered right here.
footer: 'for_intermediates'
---

<div class="video_embed">
  <div id="wistia_b0778cb217" class="wistia_embed" style="width:660px;height:413px;" data-video-width="660" data-video-height="413"><object id="wistia_b0778cb217_seo" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="display:block;height:413px;position:relative;width:660px;"><param name="movie" value="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01"></param><param name="allowfullscreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="bgcolor" value="#000000"></param><param name="wmode" value="opaque"></param><param name="flashvars" value="customColor=688AAD&hdUrl%5Bheight%5D=800&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F0fa41904defad7a39f5a5a0c56bb1b3de63ca875.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=198.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fc0fc42a25a1ec4ef35630eec41dae9d9a9419567.jpg%3Fimage_crop_resized%3D660x413&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F55a71ef3140402e9328ee4bf9564dda8ce22e883.bin"></param><embed src="http://embed.wistia.com/flash/embed_player_v2.0.swf?2012-06-01" allowfullscreen="true" allowscriptaccess="always" bgcolor=#000000 flashvars="customColor=688AAD&hdUrl%5Bheight%5D=800&hdUrl%5Btype%5D=hdflv&hdUrl%5Burl%5D=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F0fa41904defad7a39f5a5a0c56bb1b3de63ca875.bin&hdUrl%5Bwidth%5D=1280&mediaDuration=198.0&stillUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2Fc0fc42a25a1ec4ef35630eec41dae9d9a9419567.jpg%3Fimage_crop_resized%3D660x413&unbufferedSeek=true&videoUrl=http%3A%2F%2Fembed.wistia.com%2Fdeliveries%2F55a71ef3140402e9328ee4bf9564dda8ce22e883.bin" name="wistia_b0778cb217_html" style="display:block;height:100%;position:relative;width:100%;" type="application/x-shockwave-flash" wmode="opaque"></embed></object></div>
  <script charset="ISO-8859-1" src="http://fast.wistia.com/static/concat/E-v1.js"></script>
  <script>
  wistiaEmbed = Wistia.embed("b0778cb217", {
    version: "v1",
    videoWidth: 660,
    videoHeight: 413,
    playerColor: "688AAD"
  });
  </script>
  <script charset="ISO-8859-1" src="http://fast.wistia.com/embed/medias/b0778cb217/metadata.js"></script>
</div>

## Converting to a Full Account
Yes! If you decide to convert from a Trial to a fully functional Wistia account, you will keep all the contacts, media, and settings you've created during your trial period. No need to start from scratch - we've got you covered!

---

## Uploading Your Logo
To upload your logo, you must be logged in as the account owner. Choose the "Account Settings" option under the "Account" tab at the top of any page in your Wistia account.  Then, choose the "Upload your logo" button.  This will cause a dialog box to appear that will guide you through the process of uploading and displaying your company logo in your Wistia account.

<div class="post_image center"><img src="http://embed.wistia.com/deliveries/c77b6d361116d8baa8c8b2175c526dd682223956.png" alt="upload_logo" /></div>


---

## Filtering out Internal Stats
<div class="post_image float_right"><img src="http://embed.wistia.com/deliveries/c3b7767bf8523160c7ded97ff69ea4bf260b5ce1.png" alt="embed_settings_screen" /></div>
<p style="margin-top:60px;">
Yes!  You can filter out your views based on IP, and those of the other testers you might have looking at your Wistia videos before launch.  In the Account Dashboard, click the "Embed Settings" dialogue page - this contains a box where you can enter comma-separated IP addresses.  The IP Filtering tool is only available on the Account Dashboard, so you will need owner-level permissions to access it.
</p>
<div class="clear"></div>


---

## Change the Subdomain (URL) of your Wistia Account
To change your Wistia account URL, you must be logged in as the account owner.  Choose the "Account Settings" option under the "Account" tab at the top of any page in your Wistia account.  Then, choose the "Settings" button.  A dialog box like the one shown below will appear.

<div class="post_image center"><img src="http://embed.wistia.com/deliveries/f7cccd88af9bfe8ac2ab39061bfebbae29fcd93e.png" alt="account-settings" /></div>

In the section labeled "Address" you will see a text box showing the current URL of your Wistia account (in the case of the above picture, http://ben.wistia.com).  Simply type the name you wish to use in the text box (only letters, numbers, and hyphens) and press the "Save settings" button at the bottom. 

Please note that once you change the URL for your account, all previous links referenced by http://YourOldName.wistia.com will no longer work.

---

## Set a custom domain (CNAME)
If you have your own domain name, re-naming your Wistia account is no problem.
<ul>
<li>First, you will need to select a subdomain for your account (ie. videos./yourdomain/.com).</li>
<li>Then, have the CNAME point for that domain point to: **app.wistia.com**</li>
</ul>

Once that is set up, the CNAME gets propagated (which can take a couple hours).  Once that is complete, log in to your "Account Settings" in your account. Change the "Address" to CNAME, and enter your new hostname.

Once you save, everything should be switched over for you, and you are now rocking custom a URL!

**Note:** Any links previously shared or videos embedded from your account will still operate as normal

**WAIT!** CNAME'ing your domain won't change the name in the embed codes. Our system isn't designed for customizable embed hosts.  This will merely change the address where you/viewers can see your Wistia account videos.  This choice was made because video loading effect it would have - essentially our focus is on your video loading fast.


---

## Monthly Usage
<div class="post_image float_right"><img src="http://embed.wistia.com/deliveries/e9d0506033f5d35682bfe1f741f3dc2099467de9.png" alt="subscription" /></div>

To see account limits, you must be logged in as the account owner.  Choose the "Account Settings" option under the "Account" tab at the top of any page in your Wistia account. Along the right hand side of the Account page, you will see usage and limit information within the panel labeled "Current Subscription". 

<div class="clear"></div>


---

## Billing Statements

To see billing statements, you must be logged in as the account owner.  Choose the "Account Settings" option under the "Account" tab at the top of any page in your Wistia account. From here, click the  "Billing statements" button.  This will bring up a dialog box showing a list of all the receipts for your transactions.

<div class="post_image center"><img src="http://embed.wistia.com/deliveries/ab90b75617a960e658aa84c3eb8e17a8e8f0d70f.png" alt="billing" /></div>


---

## Adding & Removing Managers
Choose the "Account Settings" item under the "Account" tab from any page within your Wistia account.  Click the "Add / remove managers" button on the Accounts page. A dialog will appear.  To add managers, enter the new manager's email address into the text box and click the "Add" button.  To remove existing managers, click the "Remove" button in the far right hand column. 

<div class="post_image center"><img src="http://embed.wistia.com/deliveries/1ac3c146ef56721d5e8718229243ba6c66158cf3.png" alt="add_managers" /></div>
