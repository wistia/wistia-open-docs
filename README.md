Wistia Documentation
====================

The Wistia Documentation ([http://wistia.com/doc](http://wistia.com/doc)) is built on top of Jekyll.
Jekyll is a ruby-based static site generator. woot.

If the doc was a living being, it would live in a cave. A sweet cave, but a cave all the same.
Being short a cave, it lives here in this repo instead.

Usage
-----

### Getting Set Up

    git clone
    bundle install

Content
-------

Update markdown files in `_posts` directory. 
Based on markdown syntax by [John Gruber](http://daringfireball.net/projects/markdown/).

To add a new post, use `rake np title=FOO` - this will create post file in directory w date and title slug w Yaml

### Images
Images get uploaded to the Bakery - currently live in Project in home acct.

Images have their own Jekyll 'tag':

    {% post_image hashed_id: *video hashed id* (string), width: *width* (integer), class: *classes* (string) %}

### Videos

Videos are generated using the embedly plugin (oEmbed):

    {% embedly http://home.wistia.com/medias/AAAAAAA %}

defaults: 

* playerColor: "688AAD" # $accent_blue from screen.sass
* width: "660"
* height: "413"
* videoWidth: "660"
* videoHeight: "413"
* playButton: true
* embedType: "seo"
* controlsVisibleOnLoad: false

### Links

Links also use a custom filter, so we can control the root path:

    {{ '/link-to-page' | post_url }}

### To see changes

    rake preview

to compile site, launch local server, and track changes to site/styling (localhost:9393)

Changes to posts, javascript, and sass will take effect dynamically (you'll still need to re-load, you slacker).

**Note:** Changes to layouts, includes, config files, and static pages (anything in HAML) need to be re-converted. Re-run `rake preview` to see updates.

Styling
-------

Wistia Doc uses Sass and Compass. See more about Compass: http://compass-style.org/

To-Do
-----

* Clean up javascript duplication between API and Standard Post layouts
* Investigate adding Coffeescript support
* Update the floating nav for API layouts
* Break out 'developers' area for Dev HQ

Contact
-------

Want to chat? Weird, me too. You can [email me](mailto:jeff@wistia.com), or reach me on [twitter](http://twitter.com/jeffvincent).
