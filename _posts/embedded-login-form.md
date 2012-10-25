---
title: Embedded Login Form
description: Want to embed a Wistia login form for your private viewers? Here's how!
layout: post
footer: 'for_developers'
---

It's easy to embed a Wistia login form on your website and style it how you like. Use the code below as a template, but substitute your Wistia account hostname for app.wistia.com. For example, if your account is located at <span class="code">http://myaccount.wistia.com</span>, then you'd change all instances of <span class="code">http://app.wistia.com</span> with <span class="code">http://myaccount.wistia.com</span>.


Here's the HTML code for a basic Wistia login form:

<pre><code class="language-markup">
<form action="https://app.wistia.com/sessions" method="post"> 
  <p> 
    <label for='session_login'>Email</label> 
    <input id="session_login" name="session[login]" type="text" /> 
  </p> 
  <p> 
    <label for='session_password'>Password</label> 
    <input id="session_password" name="session[password]" type="password" />
  </p> 
  <p> 
    <button type='submit'>Login to Wistia</button> 
  </p>
</form>
</code></pre>


Here's an example of the sample code in action. Try the login form, it really works and it's secure.

<div style="padding:2em;background:#f0f0f0;border:5px solid #ccc;">
<form action="https://app.wistia.com/sessions" method="post"> 
    <p> 
    <label for='session_login'>Email</label> 
    <br/>
    <input id="session_login" name="session[login]" type="text" /> 
    </p> 
    <p> 
    <label for='session_password'>Password</label> 
    <br/>
    <input id="session_password" name="session[password]" type="password" />
    </p> 
    <p> 
    <button type='submit'>Login to Wistia</button> 
    </p>
</form>
</div>
