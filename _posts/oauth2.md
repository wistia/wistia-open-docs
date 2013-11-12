---
special_category_link: developers
api: true
layout: post
title: Authenticating with OAuth2
description: Learn how to link an OAuth2 application with your account, then use it to act on behalf of your users.
category: Developers
post_intro: <p>So you want to integrate your app with Wistia. Cool! To make it really easy for your end-users to connect their Wistia account, you'll want to use the OAuth2 protocol.</p><p>Here you'll find an overview of our OAuth flow and the technical details you need to implement it.</p>
---


## Get Approved

OAuth2 is not yet available for all accounts. Until it is, send an email to 
<a href="mailto:support@wistia.com">support@wistia.com</a> to get it enabled.


## Create an OAuth Application

Before you can perform the OAuth protocol, you need to register an oauth
application with us. By doing this, your users will be able to verify that 
your app is genuine, and that they authorize whatever permissions you request.

1. Go to Account > Account Dashboard.
2. Click API to launch the API Settings modal.
3. Click the "register your app" link at the bottom. This opens the OAuth
   Applications page.
4. Go to Actions > New Application.
5. Enter a name, a brief description, and a callback URL (also known as a
   Redirect URI in OAuth2 jargon) for your app. These can be changed later, so
don't fret too much over them. Click Save.
6. Your app should now be visible in the list of OAuth Applications.
7. Click the name of your app, or Edit, to get credentials and update your
   app's information.


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
4. We will redirect back to the Redirect URI with a `code` URL param.
5. We will redirect back to the Redirect URI with `error` and
   `error_description` URL params.

Note that the `redirect_uri` you pass in the authorization URL must match the
Callback URL that you configured previously. However, you are also allowed to 
include arbitrary query params on the `redirect_uri`. This might be desirable 
if you want to maintain state but can't store it in the session.

For example, if you want to pass an account ID in `redirect_uri`, you could 
modify the Authorization URL to be:

<code class="full_width">https://app.wistia.com/oauth/authorize?client_id=10c665d60281648f87d273488b8705bef6b4507c3473bbb1a81e397857962af5&redirect_uri=https%3A%2F%2Flocalhost%2Fmyapp%3Faccount_id%3D35&response_type=code</code>

After the OAuth flow is finished, it would redirect to:

<code class="full_width">https://localhost/myapp?account_id=35&code=e110c0d1043fdc139d577989bb22dad04d86992fc61cb871cd7c4ab2652762e8</code>

Or if there's an error:

<code class="full_width">http://localhost/myapp?error=access_denied&error_description=The+resource+owner+or+authorization+server+denied+the+request.</code>


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

If you're not using ruby, you can find an OAuth2 library for your own language, 
or roll your own authentication using the technical details on this page.

Note: These keys are not valid and are for demonstration purposes only.


## Perform an API request with OAuth credentials

There are three ways to authenticate with your token.

1. Include it in the `access_token` query param.
2. Include it in the `bearer_token` query param.
3. Include it in the "Authorization" request header as `Bearer %s`, where `%s`
   is the token.

When using the Upload API, only the first two methods (that is, via query
params) are supported.


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

Note: These keys are not valid and are for demonstration purposes only.


## Technical Reference

### Site URL

__https://api.wistia.com__

This is just the base URL of the Wistia API. It can be used as the base URL 
for the other endpoints.


### Authorize URL

__https://api.wistia.com/oauth/authorize__

Expects a request like:

    https://api.wistia.com/oauth/authorize?client_id=mypublicconsumerkey&redirect_uri=https%3A%2F%2Flocalhost%2Fmyapp

It will ultimately redirect back to the Redirect URI with a `code` param if
succesful, or `error` and `error_description` params if unsuccessful.


### Token URL

__https://api.wistia.com/oauth/token__

It expects requests like:

    https://api.wistia.com/oauth/token?grant_type=authorization_code&code=myauthorizationcode
    https://api.wistia.com/oauth/token?grant_type=refresh_token&refresh_token=myrefreshtoken

Responds with JSON in the form:

    {
      "access_token": "ba371cc8c511e0d9114b8e17777ebc4ad5e23811144341f0ca4726d67ff4b19e",
      "token_type": "bearer",
      "expires_in": 21600,
      "refresh_token": "366d1b695bccf10bae1b50bb869ea17187328e5b90045eb6368d7c912f03393c",
      "scope": ["read", "write", "offline"]
    }


## Known Issues

- The wistia-api ruby gem currently does __not__ support oauth. We will be
  updating this in the future.
- The Upload API does not yet support oauth authentication. This should be
  fixed soon.
- Only managers and owners of an account can authorize an application at this
  time.
- The `scope` param is currently ignored. Until the api supports it, all
  applications must request the scope "read write offline".
