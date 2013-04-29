class Search
  constructor: ->
    @query = (window.location.href.split('?')[1] || "").split('=')[1]
    @header = @buildHeader()
    @getSearchResults @query, (data) =>
      @result_html = ""
      if data.results.length
        resultsJSON = data.results
        for result in resultsJSON
          @result_html += @convertJSONtoHTML result
      else if @query?
        console.log "noResultsStr"
        @result_html = @noResultsStr(@query)
      else
        console.log "suggestedSearchesStr"
        @result_html = @suggestedSearchesStr()

      @renderResults()

  getSearchResults: (query, callback) ->
    $.getJSON "#{basepath}/search/#{query}?format=json&amp;callback=?", (data) ->
      callback data

  stringify: (str) ->
    str.replace(/_/g, ' ')

  noResultsStr: (query) ->
    """
    <div class='no_result'>
      <p>We couldn't find any results for your query, <span class='query'>#{@stringify query}</span>.
      <p>Please try another search or head back to the <a href='/'>Documentation Main page</a>.</p>
    </div>
    """

  suggestedSearchesStr: ->
    """
    <h2 class='suggested-title'>Need some suggestions?</h2>
    <div class='result'>
      <h2><a href='#{basepath}/media'>Guide to Using Media in Wistia</a></h2> 
      <p class='description'>From changing the title, to embedding it on your 
      website or blog, learn all the functionality for uploaded media here.</p>
    </div>
    <div class='result'>
      <h2><a href='#{basepath}/projects'>Guide to Using Projects in Wistia</a></h2> 
      <p class='description'>Projects are where you store, organize, and access 
      media. Projects are the building blocks for Wistia organization.</p>
    </div>
    <div class='result'>
      <h2><a href='#{basepath}/wistia-basics'>Wistia Basics Video Series</a></h2> 
      <p class='description'>If you are getting started, or just need a little 
      refresher, the Wistia Basics series is just what you need. Join Chris and 
      Jeff as they take you through the key features and workflows of Wistia, 
      to make sure you get the most out of your account.</p>
    </div>
    """

  convertJSONtoHTML: (json) ->
    title = json.title
    description = json.description
    url = json.url

    """
    <div class='result'>
      <h2><a href='#{basepath}#{url}'>#{title}</a></h2> 
      <p class='description'>#{description}</p>
    </div>
    """

  buildHeader: ->
    html_start_str = "<div class='results_header'><h1>"
    html_end_str = "</h1></div>"

    resultHeaderText = if @query? and @query.length > 0
        "Results for #{@stringify @query}"
      else
        "Enter a search to begin"
    
    return "#{html_start_str}#{resultHeaderText}#{html_end_str}"

  renderResults: ->
    console.log "renderResults", @result_html
    $('#results').append(@header).append(@result_html)

$ ->
  docSearch = new Search()
