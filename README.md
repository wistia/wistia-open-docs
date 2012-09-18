
## Wistia Documentation ##

## Jekyll ##

Jekyll is a ruby-based static site generator. woot.

## Usage ##

### Getting Set Up ###
**git clone** project onto your local computer
**bundle install** to get all gems running locally

### Making Content Changes ###
Update markdown files in \_posts directory. 
Based on markdown syntax by [John Gruber](http://daringfireball.net/projects/markdown/).
To add a new post, use *rake np title=FOO* - this will create post file in directory w date and title slug w Yaml

### To see changes ###
**rake preview** to bundle site, launch local server, and track changes to site/styling
*Note:* Changes to layouts, includes, etc. should be done on the HAML file itself, and then re-run **rake preview**.

### Re: Images ###
Images get uploaded to the Bakery - currently live in Jeff's account, but will be moved to Home account in the future.

### Styling ###
Wistia Doc uses sass and Compass. See more about Compass: http://compass-style.org/
