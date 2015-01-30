---
special_category_link: developers
api: true
layout: post
title: Authenticating with OAuth2
description: Learn how to link an OAuth2 application with your account, then use it to act on behalf of your users.
category: Developers
post_intro: <p>So you want to integrate your app with Wistia. Cool! To make it really easy for your end-users to connect their Wistia account, you'll want to use the OAuth2 protocol.</p><p>Here you'll find an overview of our OAuth flow and the technical details you need to implement it.</p>
---


## What is OAuth2?

This page is meant for people who have a grasp of how OAuth2 works. If you're
not sure, check out [the official OAuth2 resource](http://oauth.net/2/).


## Get Approved

OAuth2 is not yet available for all accounts. Until it is, send an email to
<a href="mailto:support@wistia.com">support@wistia.com</a> to get it enabled.


## Create an OAuth Application

Before you can perform the OAuth protocol, you need to register an oauth
application with us. By doing this, your users will be able to verify that
your app is genuine, and that they authorize whatever permissions you request.

1. Go to Account > Settings.
2. Click the Oauth Applications tab in the sidebar.
3. Click on New Application.
4. Enter a name, a brief description, a Redirect URI (also known as a
   Callback URL in some circles), and Permissions for your app.
   These can be changed later, so don't fret too much over them. Click Save.
5. Your app should now be visible in the list of OAuth Applications.
6. Click the name of your app, or Edit, to get credentials and update your
   app's information.


### Notes on Permissions

You can choose multiple permissions--also known as "scopes"--when you create or
edit your OAuth Application. The permissions you choose there will be the same
permissions as those that the end user must approve when they grant your
application authorization.

Changing Application permissions <em>will not</em> update the permissions for
already existing access tokens. The end-user will need to revalidate if
those permissions change.


### Available Scopes

If you think you have a use case that is not covered by one or a combination of
these scopes, please send an email to
<a href="mailto:support@wistia.com">support@wistia.com</a> and explain your
situation to us. Maybe we can help you out!

#### all:all

Anything you can do with our API is allowed.

#### all:read

All requests for data are allowed, but no changes can be made.

### media:read

All requests for media and project data are allowed. This also extends to
customization and captions data.

### stats:read

All requests for stats data are allowed.

### media:upload

Uploading via the API is allowed, as well as fetching data about a single media
by hashed ID (i.e. medias#show).


## Setup an Authorization URL

Now that you've created an app, you need to have your users authorize it. To do
that, open the modal with your app's credentials and look for "Link to
authorization code". Copy that URL and set it up as a simple link on your site.

An example Authorization URL:

<code class="full_width">https://app.wistia.com/oauth/authorize?client_id=10c665d60281648f87d273488b8705bef6b4507c3473bbb1a81e397857962af5&redirect_uri=https%3A%2F%2Flocalhost%2Fmyapp&response_type=code</code>


## The Authorization Flow

When your users click the link to the Authorization URL, they will go through
the following process:

1. If they're not logged in to a Wistia account, they will be prompted for
   their login credentials. If they are logged in, skip to number 2.
2. If they have more than one account, they will be prompted to choose an
   account. If they only have one account, skip to number 3.
3. If they have not already authorized your app, they will see the name and
   description of your application, and will be prompted to authorize or deny
   it. If they're already authorized, skip to number 4. If they deny the app,
   skip to number 5.
4. We will redirect back to the Redirect URI with the following params: `code` (this is the authorization code), `account_id`, `account_url`, `account_name`, `contact_id`, `contact_name`, `contact_email`.
5. We will redirect back to the Redirect URI with `error` and
   `error_description` URL params.

Note that the `redirect_uri` you pass in the authorization URL must match the
Redirect URI that you configured previously. However, you are also allowed to
include arbitrary query params on the `redirect_uri`. This might be desirable
if you want to maintain state but can't store it in the session.

For example, if you want to pass an account ID in `redirect_uri`, you could
modify the Authorization URL to be:

<code class="full_width">https://app.wistia.com/oauth/authorize?client_id=10c665d60281648f87d273488b8705bef6b4507c3473bbb1a81e397857962af5&redirect_uri=https%3A%2F%2Flocalhost%2Fmyapp%3Fmyapp_account_id%3D35&response_type=code</code>

After the OAuth flow is finished, it would redirect to:

<code class="full_width">https://localhost/myapp?myapp_account_id=35&code=e110c0d1043fdc139d577989bb22dad04d86992fc61cb871cd7c4ab2652762e8</code>

Or if there's an error:

<code class="full_width">http://localhost/myapp?my_account_id=35&error=access_denied&error_description=The+resource+owner+or+authorization+server+denied+the+request.</code>


## Use the Authorization Code to get an Access Token

Now that you have the authorization code on your server, you can trade it for 
an access token. Here is some example ruby code that gets an access token 
using the [oauth2 gem](https://github.com/intridea/oauth2):

    require 'oauth2'

    # Initialize the OAuth2 client
    base_url = 'https://api.wistia.com'
    client_id = '5e7580f112852db6708eac9ce77f6592ffb95a3443e2f038de2ed5a82d7ca8d1'
    client_secret = 'f4fa3d09f45c5c5be6e1f9f0a336e24493f9cff9ed310442f4b5270c34be6fc2'
    client = OAuth2::Client.new(client_id, client_secret, site: base_url)

    # Trade the Authorization Code for an Access Token
    redirect_uri = 'https://localhost/myapp'
    auth_code = params[:code]
    token = client.auth_code.get_token(auth_code, redirect_uri: redirect_uri)

    # The access token
    token.token

    # The refresh token -- you probably want to persist this to disk
    token.refresh_token

    # oauth2 shorthand to perform requests:
    response = token.get('/v1/medias/myhashedid')

Note: These keys are not valid and are for demonstration purposes only.

If you're not using ruby, you can find an OAuth2 library for your own language, 
or roll your own authentication using the technical details on this page.


## Perform an API request with OAuth credentials

There are three ways to authenticate with your token.

1. Include it in the `access_token` query param.
2. Include it in the `bearer_token` query param.
3. Include it in the "Authorization" request header as `Bearer %s`, where `%s`
   is the token.

The Upload API will only support the first two methods. That is, via the
`access_token` or `bearer_token` in a query param.


## Use the Refresh Token to renew your Access Token

With every access token response, we also return a "refresh token". You can
trade a refresh token for another access token. By using a refresh token, you
can get an API key for a user without requiring re-authorization.

    base_url = 'https://api.wistia.com'
    client_id = '5e7580f112852db6708eac9ce77f6592ffb95a3443e2f038de2ed5a82d7ca8d1'
    client_secret = 'f4fa3d09f45c5c5be6e1f9f0a336e24493f9cff9ed310442f4b5270c34be6fc2'
    client = OAuth2::Client.new(client_id, client_secret, site: base_url)

    # Trade the refresh_token for a new access_token
    old_access_token = OAuth2::AccessToken.new(client, refresh_token: 'thesavedrefreshtoken')
    token = old_access_token.refresh!

    # Your refresh_token will stay the same until the end-user goes through the 
    # OAuth flow again.
    token.refresh_token

Note: These keys are not valid and are for demonstration purposes only.


## Technical Reference

### Site URL

__https://api.wistia.com__

This is just the base URL of the Wistia API. It can be used as the base URL
for the other endpoints.


### Authorize URL

__https://api.wistia.com/oauth/authorize__

Expects a request like:

    https://api.wistia.com/oauth/authorize?client_id=mypublicconsumerkey&redirect_uri=https%3A%2F%2Flocalhost%2Fmyapp&response_type=code

It will ultimately redirect back to the Redirect URI with a `code` param if
succesful, or `error` and `error_description` params if unsuccessful.


### Token URL

__https://api.wistia.com/oauth/token__

It expects requests like:

    POST https://api.wistia.com/oauth/token?client_id=myclientid&client_secret=myclientsecret&grant_type=authorization_code&code=myauthorizationcode&redirect_uri=https%3A%2F%2Flocalhost%2Fmyapp
    POST https://api.wistia.com/oauth/token?client_id=myclientid&client_secret=myclientsecret&grant_type=refresh_token&refresh_token=myrefreshtoken

Responds with JSON in the form:

    {
      "access_token": "ba371cc8c511e0d9114b8e17777ebc4ad5e23811144341f0ca4726d67ff4b19e",
      "token_type": "bearer",
      "expires_in": 21600,
      "refresh_token": "366d1b695bccf10bae1b50bb869ea17187328e5b90045eb6368d7c912f03393c",
      "scope": ["all:read"]
    }


## Revoking Access

A user can revoke access to your app by going to Account > My Settings.


## Known Issues

- The wistia-api ruby gem currently does __not__ support oauth. We will be
  updating this in the future.
- Only managers and owners of an account can authorize an application at this
  time.
