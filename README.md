Wistia Documentation
====================

The Wistia Documentation ([http://wistia.com/doc](http://wistia.com/doc)) is built on top of Jekyll.
Jekyll is a ruby-based static site generator. woot.

If the doc was a living being, it would live in a cave. A sweet cave, but a cave all the same.
Being short a cave, it lives here in this repo instead.

Overview
--------

The Wistia Doc houses our app-specific notes and instructions on using Wistia. 

We looked at a lot of *documentation software*, but it all felt
very...impersonal. Like we wanted to get the doc out there as fast as we could,
so we used this one-size-fits-all approach. That didn't feel super Wistia.

By using Jekyll, we got three sick benefits:

  1. An easy way to intro new folks to using git/github/markdown.
  2. A lightweight publishing process (Jekyll creates static files) that makes
     switching to a new platform later possible.
  3. Complete control over the styles/javascript on the page.

10,000-ft View
--------------

The idea is writing docs should just be about the content. Styling/formatting
should be done once, or using something simple (ie Markdown). If writing docs
was more complicated, we'd never update them.

Development
-----------

### Getting Set Up

    git clone
    bundle install


### Installing and starting elasticsearch

If you don't have homebrew:

    ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)

In a new window, run:

    brew install elasticsearch
    elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml


Go back to your old window and run

    rake build

### Installing CoffeeScript


if you don't have node installed:

    brew install node 

make sure this is in your `.bashrc`:

    vim ~/.bashrc

add this line to the end of your `.bashrc` file

    export NODE_PATH=/usr/local/lib/node_modules

install CoffeeScript:

    npm install -g coffee-script

### Installing wget

btw, wget is used to pull global Wistia header from `wistiacom`.

    brew install wget

### How to Add/Update Content

Update markdown files in `_posts` directory. Based on markdown syntax by 
[John Gruber](http://daringfireball.net/projects/markdown/).

To add a new post, use:

    rake np title=FOO

This will create post file with title slug and YAML block.

### How to Add/Update Images

Images get uploaded to the Bakery - currently live in Project in home acct.

Images have their own Jekyll 'tag':

    {% post_image hashed_id: *image hashed id* (string), width: *width* (integer), class: *classes* (string) %}

### How to Add/Update Videos

Videos are generated using an oEmbed plugin:

    {% wistia_embed hashed_id: AAAAAAA, videoWidth: 660, videoHeight: 400 %}

defaults: 

* playerColor: "688AAD" # $accent_blue from screen.sass
* width: "660"
* height: "413"
* videoWidth: "660"
* videoHeight: "413"
* playButton: true
* embedType: "seo"
* controlsVisibleOnLoad: false

### How to Add/Update Embedded Code 

For single line code, use the `<code>` block with class "full_width".

For inline code, just wrap in backticks.

For involved code blocks, use the [codeblock plugin](https://raw.github.com/freerobby/blog/master/source/_posts/2013-01-26-remove-merged-branches-from-git.markdown) syntax.

### How to Add/Update Links

Links also use a custom filter, so we can control the root path:

    {{ '/link-to-page' | post_url }}

### See changes

    rake preview

* compile site,
* launch local server,
* and track changes to site/styling (localhost:9393)

Changes to posts, javascript, and sass will take effect dynamically 
(you'll still need to re-load, you slacker).

**Note:** Changes to layouts, includes, config files, and static pages 
(anything in HAML) need to be re-converted. Re-run `rake preview` to see updates.

### Style / Frameworks

Wistia Doc uses Sass and Compass. See more about Compass: http://compass-style.org/

Production Commands
-------------------

### Deployment

Pretty much none, just:

    git push origin master

### Box Problems

Restart Elasticsearch
  
    rc-status
    /etc/init.d/elasticsearch stop
    /etc/init.d/elasticsearch start

To-Do
-----

* Update the floating nav for API layouts

Contact
-------

Want to chat? Weird, me too. You can [email me](mailto:jeff@wistia.com), or 
reach me on [twitter](http://twitter.com/jeffvincent).
