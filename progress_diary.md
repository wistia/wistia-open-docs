
**Start Date:** July 2 2012
**Goal:** Create a Jekyll-based static site for the Wistia Doc to live on. For customers, will provide a more seamless experience between multiple Wistia web presence(s). For internal Wistians, will make doc easier to update, both style and content-wise.

## july 2 ##

* Established the Jekyll base for future Jekyll projects.
* Used a Dokuwiki-to-markdown converter to get text ready for the big time
* Started basic styling

## july 3 ##

* Experimented with several Jekyll forks to find good support for HAML.  Still no good ones.
* More styling

## july 5 ##

* Installed Foreman to handle Jekyll server and Compass updates.  Still need to add HAML updates.  Foreman is SICK (adding 'foreman start' to rake task 'jekyll preview').
* (-) TODO: get a permalink icon for the left of the H2 (perhaps using a :before CSS3) emulating Campaign Monitor ( http://www.campaignmonitor.com/api/account/ )
* (X) TODO: get Joe to look at it and start thinking about design / platform for this / resource center

## july 7 ##

* got the highlight of current section working with One Page Nav jQuery plug-in ( http://trevordavis.net/blog/jquery-one-page-navigation-plugin/ ). Similar to what I put together in the Data API page but prob better :)
* TODO: add search in the upper right of the page
* inspiration: http://popcornjs.org/popcorn-docs/index.html
* need to figure out YAML -- think it's worked out.
* added the 'footer' section - currently used for 'developers' vs 'non-developers' but could also be for different difficulty ratings.

## july 13 ##

* been working on the design and some javascript to make the layout more consistent and easy to do.  Still needs some work.
* majority of work has been converting the content (moving the images over, updating embeds, etc.)
* big project next is implementation of search - seems like plugin may be the answer
* search resources:
  * http://pradeepnayak.in/technology/2012/06/20/search-for-your-jekyll-site/
  * http://developmentseed.org/blog/2011/09/09/jekyll-github-pages/

## july 14 ##

* added (back) a glossary, for simplifying the explainers in the doc pages...perhaps to move to 'asides' later?
* wrote the js to handle the title height positioning
* TODO: get the shadow around the video embeds right
* removed media stats page and heatmaps page, merged with analytics
* removed "for marketers" guide
* TODO: re-grab lots of images

## july 16 ##

* TODO: something be wrong with the js related to p tags - see 'private-analytics.html'
* TODO: emulate GitHub help with 'bootcamp', 'breadcrumbs'
* TODO: Github also has sweet 'drawers' - use the "help bubble" for these!!!!

## july 17 ##

* drawer ideas: 'don't have a video?', 'what is embedding?', 'what are heatmaps?'
* holy crap, finally finished first pass of the content
* TODO: run through images and start pulling new ones
* TODO: get on the main page

## july 25 ##

* major break for Customer Champion interviews. need to devote more time to this projie to get it out the door!
* main page is looking much better, still not there but close
* Tentatively chosen Sphinx as the search - based on a Brendan recommendation, using client-side queries to a Sphinx+Sinatra app and then assembling the results on the client-side will work pretty well
  * basically, the downsides of Sphinx (not being able to extend it, not being able to query files like word docs, etc.) don't apply here.
  * I'd like long-term to be able to use Sphinx with AJAX for auto-complete, so that still needs to be researched
    * UPDATE: yep, we can: http://www.ivinco.com/blog/sphinx-in-action-autocomplete/
    * http://stackoverflow.com/questions/9772114/autocomplete-search-with-sphinx
* More search resources:
  * http://sphinxsearch.com/docs/2.0.4/
  * http://www.slideshare.net/hayesdavis/quick-introduction-to-sphinx-and-thinking-sphinx
  * https://devcenter.heroku.com/articles/flying_sphinx

## july 26 ##

* installing sphinx locally 
  - 'brew install sphinx'.  Since we use mysql for everything else, I plan to continue this (use mysql w Sphinx). ( http://chopmode.wordpress.com/2010/06/20/thinking-sphinx-with-postgres-support-on-osx/ )
  - now working on translating text documents into mysql db

## july 27 ##

* lots of text parsing, to build a mysql table of the posts
* OMG are we using elasticsearch now?
  - elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.18.3/config/elasticsearch.yml
* the challenge right now is to determine how to 'index' the site content (and when), and then which tool to use.
  - for simplicity, I'm researching a method that would index content on site build (aka could be set to exclude files, would index the built HTML, etc.) this would be based on the IndexTank implementation: https://github.com/PascalW/jekyll_indextank/blob/master/indexer.rb put possibly translated for ElasticSearch etc.
  - the trouble with this approach is it does not use Mysql, which would rule out Sphinx
  - using Tire and Elasticsearch seems to be done before: http://jaysoo.ca/2012/02/02/added-search-to-website/
