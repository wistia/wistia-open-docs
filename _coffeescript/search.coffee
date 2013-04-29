class Search
  constructor: (@query) ->
    @header = @buildHeader()
    @noResultsStr =
      """
      <div class='no_result'>
        <p>We couldn't find any results for your query, <span class='query'>#{@stringify @query}</span>.
        <p>Please try another search or head back to the <a href='/'>Documentation Main page</a>.</p>
      </div>
      """
    @results = @getSearchResults @query, (data) =>
      @result_html = ""
      if data.results.length
        resultsJSON = data.results
        for result in resultsJSON
          @result_html += @convertJSONtoHTML result
      else
        @result_html = @noResultsStr

      @renderResults()

  getSearchResults: (query, callback) ->
    $.getJSON "#{basepath}/search/#{query}?format=json&amp;callback=?", (data) ->
      callback data

  stringify: (str) ->
    str.replace(/_/g, ' ')

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

    result = if @query
        "Results for #{@stringify @query}"
      else
        "enter a search to begin"
    
    return "#{html_start_str}#{result}#{html_end_str}"

  renderResults: ->
    if @result_html
      $('#results').append(@header).append(@result_html)
    else
      $('#results').append @header

$ ->
  query = (window.location.href.split('?')[1] || "").split('=')[1]
  docSearch = new Search query
