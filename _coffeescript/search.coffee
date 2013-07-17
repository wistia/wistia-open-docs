class Search
  constructor: ->
    @query = @getQuery()
    @header = @buildHeader()
    @getSearchResults @query, (data) =>
      @resultHtml = ""
      if data.results.length
        for result in data.results
          @resultHtml += @convertJsonToHtml result
      else if @query?
        @resultHtml = @noResultsStr(@query)
      else
        @resultHtml = @suggestedSearchesStr()

      @renderResults()

  getQuery: ->
    (window.location.href.split('?')[1] || "").split('=')[1]
    
  getSearchResults: (query, callback) ->
    $.getJSON "#{basepath}/search/#{query}?format=json&callback=?", callback

  stringify: (str) ->
    str.replace(/_/g, ' ')

  noResultsStr: (query) ->
    """
    <div class='no_result'>
      <p>We couldn't find any results for your query, <span class='query'>#{@stringify query}</span>.
      <p>Please try another search, or head back to the <a href='http://wistia.com/doc'>Documentation Main page</a>.</p>
    </div>
    """

  suggestedSearchesStr: ->
    """
    <h2 class='suggested-title'>Here are some of our favorites:</h2>
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

  convertJsonToHtml: (json) ->
    """
    <div class='result'>
      <h2><a href='#{basepath}#{json.url}'>#{json.title}</a></h2> 
      <p class='description'>#{json.description}</p>
    </div>
    """

  buildHeader: ->
    html_start_str = "<div class='results_header'><h1>"
    html_end_str = "</h1></div>"

    resultHeaderText = if @query? and @query.length > 0
        "#{@query.length} results found for #{@stringify @query}"
      else
        "Enter a search to begin"

    return "#{html_start_str}#{resultHeaderText}#{html_end_str}"

  renderResults: ->
    $('#results').append(@header).append(@resultHtml)

$ ->
  docSearch = new Search()
