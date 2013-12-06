performSearch = () ->
  enteredQuery = $('#searchField').val().replace(/[ ]/g, '_')
  window.location.replace "#{basepath}/search?query=#{enteredQuery}"

$('#search button').on 'click', ->
  performSearch()

$(window).keyup (e) ->
  if e.keyCode == 191 # '/'
    searchField.focus()

$('#searchField').keyup (e) ->
  if e.keyCode == 13 # 'enter'
    performSearch()
