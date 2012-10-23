
## Wistia Documentation ##

## Jekyll ##

Jekyll is a ruby-based static site generator. woot.

## Usage ##

### Getting Set Up
**git clone** project onto your local computer
**bundle install** to get all gems running locally

## Content
Update markdown files in \_posts directory. 
Based on markdown syntax by [John Gruber](http://daringfireball.net/projects/markdown/).
To add a new post, use *rake np title=FOO* - this will create post file in directory w date and title slug w Yaml

### Images
Images get uploaded to the Bakery - currently live in Jeff's account, but will be moved to Home account in the future.

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
**rake preview** to bundle site, launch local server, and track changes to site/styling (localhost:9393)

Changes to posts, javascript, and sass will take effect on re-load.

**Note:** Changes to layouts, includes, config files, and static pages (anything in HAML) need to be re-converted. Re-run *rake preview* to see updates.

## Styling

Wistia Doc uses sass and Compass. See more about Compass: http://compass-style.org/
