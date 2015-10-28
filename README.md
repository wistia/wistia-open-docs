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

### Installing Bundler

If you don't have bundler installed:

    gem install bundler

### Compiling the Docs

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
* and track changes to site/styling (localhost:9292)

Changes to posts, javascript, and sass will take effect dynamically
(you'll still need to re-load, you slacker).

**Note:** Changes to layouts, includes, config files, and static pages
(anything in HAML) need to be re-converted. Re-run `rake preview` to see updates.

### How to Delete Pages

Did you find something tragically old in the docs? Yeah, me too. Here's how to delete that bad boy.

1. Delete the markdown file locally, and remove any references to it in the
site index.
2. After you've pushed changes to master and deployed, make sure that ish is
gone by heading to the page. Hard refresh, friend--don't forget!
3. if it isn't, purge the page in Fastly's cache from skycrank with
`curl -X PURGE http://wistia.com/doc/thepageurl`
4. last but not least, [ask Google to remove it from the interwebs/search](https://www.google.com/webmasters/tools/removals?pli=1)

### Style / Frameworks

Wistia Doc uses Sass and Compass. See more about Compass: http://compass-style.org/

Production Commands
-------------------

### Deployment

Push code to github:

    git push origin master

From skycrank, update the docs box with master:

    ./crank docs deploy

Contact
-------

Want to chat? Weird, me too. You can [email me](mailto:jeff@wistia.com), or
reach me on [twitter](http://twitter.com/jeffvincent).

Swiftype
--------

Wistia-doc uses [Swiftype](https://swiftype.com/) search engine to crawl and index the Wistia Docs.

The Wistia Docs indexes and stats can be found in the `wistia-doc` engine on Swiftype. There, one can configure the
look & feel, search results, and other customizations.

To add search functionality to a page, simply add the `.st-default-search-input` class to an `<input>` tag and run the
Switype installer on the page:

      <script>
      (function(w,d,t,u,n,s,e){w['SwiftypeObject']=n;w[n]=w[n]||function(){
        (w[n].q=w[n].q||[]).push(arguments);};s=d.createElement(t);
        e=d.getElementsByTagName(t)[0];s.async=1;s.src=u;e.parentNode.insertBefore(s,e);
      })(window,document,'script','//s.swiftypecdn.com/install/v2/st.js','_st');
      _st('install','[KEY]','2.0.0');
      </script>
