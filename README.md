
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
**rake preview** to bundle site, launch local server, and track changes to site/styling (if this fails, remove 'Indexer' plugin)

### For running search locally ###
Install elasticsearch ([here](http://www.elasticsearch.org/download/) or install via homebrew '*brew install elasticsearch*'
**gem install tire** (also included in bundler as a production gem)
**rake test_search** this will launch a foreman instance (*Procfile_search*) running both Elasticsearch and a Sinatra App w/ Tire

