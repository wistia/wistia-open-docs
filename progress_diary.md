
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

## july 31 ##

* got search queries working using Elasticsearch and Tire:
  - http://karmi.github.com/tire/
  - https://github.com/karmi/tire/
* idea from all this came from Jay Soo site http://jaysoo.ca/2012/02/02/added-search-to-website/
* Next project is setting up search app (Sinatra?)
  - will searches be passed in URL (yes) and if so, how?
* working around haml issues. haml haml haml.
* had to revert to old jekyll (not henrik's haml-sickness) because of issues.  May try implementing henrik's haml stuff in current jekyll. This means still running old rake task to convert haml to html, etc.
* now on to Sinatra, which is pretty sick

## aug 1 ##

* worked for a while on getting the Sinatra app to return a HAML page, should I iframe, should I generate layouts on the app side, etc.
* that was dumb. Now going to have Sinatra app return JSON & JSONP, which will be interpreted on the doc side by js
* tried to add in prism.js quickly ( http://prismjs.com/ ) but failed.  Will revisit.
* added search boxes across the doc. attempting to style it Joe-style :)
* added in the generate_categories plugin, which needs some work/customization.  Will be using the category pages as the breadcrumbs.
* speaking of categories, might come back to tackle something like this in the future: http://www.brousalis.com/blog/2012/07/08/jekyll-category-list-plugin/

## aug 3 ##
* Added compass ellipsis to the title to make sure it stays clean. Damn compass is good.
* Built in breadcrumbs & category pages.  Starting to look slick.
* customized the categories plugin, which used to have ugly URL (base/categories/category_name/index.html) and now has pretty URL (base/categories/category_name.html)
* Spent a lot of time getting the breadcrumbs right - added a layout for non-post pages (utilities) and fought w Liquid to get it to show custom breadcrumbs even for those pages.  The key was to put everything on one line!!
* I know this is probably early, but also put in keyboard shortcuts to get to search ('/') and to enter search query.
* TODO: the footers for each post, and perhaps an overall footer?

## aug 6 ##
* got Max Kohl set up running the new doc locally. He handled it no problem, except for all the errors it threw at him.  Ended up having to remove the Indexer plugin - no way to get it running in production only at this point. Will need to find another way 'round that issue.

## aug 17 ##
* Fell a bit behind here, quick updates: 
  * updated SASS with mixins (some limited refactoring)
  * updated styling to better reflect doc per Joe's feedback
  * Max K went through and added descriptions to each post - gonna be awesome for search results.
  * Will be using the Bakery to serve images for the doc.  Pulling new images page-by-page (fun!) uploading them to Bakery, and then placing delivery URLs in as img src.  
  * Added javascript to re-size images dynamically based on class.
