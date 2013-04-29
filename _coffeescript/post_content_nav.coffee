class NavBar
  constructor: ->
    @mainTitle = $('.post_title > h1')
    @navBoxUl = $('ul#page_nav')
    @titlesForNav = @titlesForNav()
    @buildNavBox()
    $('li.header_link:first').css('border', 'none')

  build_nav_box: ->
    if @titlesForNav.length
      @mainTitle.attr 'id', $.text_to_id(@mainTitle.text())
      @appendTitlestoNavBox()
      @spaceTheTopicsTitle()
    else
      @navBoxUl.hide()
      $('#container').css("text-align", "center")
      $('#post_container').css("left", "0")

    $('#page_nav').onePageNav(changeHash: true)

  append_titles_to_nav_box: ->
    @navBoxUl
      .append('<li class="title_list_item"><a href="#' +
        @mainTitle.attr('id') + '">' + @mainTitle.text() + '</a></li>')

    for title in @titlesForNav
      $text = $(title).text()
      $idText = $.textToID($text)

      $(title)
        .attr('id', $idText)
        .prepend('<a class="subtopic_anchor" href="#' +
          $idText + '">#</a>')

      @appendListElemtoNavBox $(title), $text, $idText

  appendListElemtoNavBox: (elem, linkText, idText) ->
    if window.api
      if elem.is 'h3'
        @navBoxUl
          .append('<li class="sub_link"><a href="#' + idText +
            '">' + $.sectionTitletoNavTitle(linkText) + '</a></li>')
      else
        @navBoxUl
          .append('<li class="header_link"><a href="#' + idText + '">' +
            linkText + '</a></li>')
    else
      @navBoxUl
        .append('<li><a href="#' + idText + '">' + linkText + '</a></li>')

  titlesForNav: ->
    if window.api
      $('h2,h3').not('#wistiacom_footer h3')
    else
      $('h2')

  spaceTheTopicsTitle: ->
    $topicsTitleBox = $('#page_nav li:first-child')
    $titleLink = $topicsTitleBox.find('a')

    $titleLink.css 'top', ($topicsTitleBox.height() - $titleLink.height())/2

$.browserEscapeCharacters = (span) ->
  span.html span.html().replace(/</g, '&lt;').replace(/>/g, '&gt;')

$.textToID = (text) ->
  text.toLowerCase().replace(/[^\s0-9a-z]/g, '').replace(/\s/g, '_')

$.sectionTitletoNavTitle = (text) ->
  if (/\:\s/).test(text)
    text = text.split(/\:\s/)[1]
  text

$ ->
  window.navBar = new NavBar

  if $('span.code').length
    $('span.code').each ->
      $.browserEscapeCharacters $(this)

  if $('pre').length
    $('pre').find('code.language-markup').each ->
      $.browserEscapeCharacters $(this)
