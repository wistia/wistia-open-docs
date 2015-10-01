class NavBar
  constructor: ->
    @mainTitle = $('.post_title > h1')
    @navBoxUl = $('ul#page_nav')
    @titlesForNav = @titlesForNav()
    @buildNavBox()
    $('li.header_link:first').css('border', 'none')

  buildNavBox: ->
    if @titlesForNav.length
      @mainTitle.attr 'id', $.textToId(@mainTitle.text())
      @appendTitlesToNavBox()
      @addSubtopicAnchor()
      @spaceTheTopicsTitle()
    else
      @navBoxUl.hide()
      $('#container').css("text-align", "center")
      $('#post_container').css("left", 0)

    $('#page_nav').onePageNav(changeHash: true)

  appendTitlesToNavBox: ->
    @navBoxUl
      .append """
        <li class="title_list_item"><a href="##{@mainTitle.attr('id')}">#{@mainTitle.text()}</a></li>
        """

    for title in @titlesForNav
      text = $(title).text()
      idText = $.textToId(text)

      @appendListElemToNavBox $(title), text, idText

  appendListElemToNavBox: (elem, linkText, idText) ->
    linkSettings = @linkSettings(elem, linkText)
    @navBoxUl.append """
      <li class="#{linkSettings.klass}"><a href="##{idText}">#{linkSettings.linkText}</a></li>
      """

  addSubtopicAnchor: ->
    topics = $('h2,h3:not(#wistiacom_footer h3)')

    for topic in topics
      idText = $.textToId($(topic).text())
      
      $(topic).attr('id', idText).prepend """
          <a class="subtopic_anchor" href="##{idText}">#</a>
        """


  linkSettings: (elem, linkText) ->
    if window.api
      if elem.is 'h3'
        { klass: "sub_link", linkText: $.sectionTitleToNavTitle(linkText) }
      else
        { klass: "header_link", linkText: linkText }
    else
      { klass: "", linkText: linkText }

  titlesForNav: ->
    $('h2')

  spaceTheTopicsTitle: ->
    $topicsTitleBox = $('#page_nav li:first-child')
    $titleLink = $topicsTitleBox.find('a')
    $titleLink.css 'top', ($topicsTitleBox.height() - $titleLink.height())/2

$.browserEscapeCharacters = (span) ->
  span.html span.html().replace(/</g, '&lt;').replace(/>/g, '&gt;')

$.textToId = (text) ->
  text.toLowerCase().replace(/[^\s0-9a-z]/g, '').replace(/\s/g, '_')

$.sectionTitleToNavTitle = (text) ->
  if (/\:\s/).test(text)
    text = text.split(/\:\s/)[1]
  text

$ ->
  window.navBar = new NavBar

  # Use elements with classes navigable_start/navigable_end to denote sections
  # where h3 elements should be rolled up into a nav. They will be created as
  # an unordered list and inserted just before .navigable_start.
  $('.navigable_start').each ->
    $start = $(this)
    $subHeaders = $start.nextUntil('.navigable_end', 'h3[id]')

    $ul = $('<ul class="generated_nav">')
    $subHeaders.each ->
      $h3 = $(this)
      $li = $('<li>')
      $a = $('<a>').
        attr('href', "##{$h3.attr('id')}").
        text($h3.text().replace(/^#/, ''))
      $li.append($a)
      $ul.append($li)

    $start.before($ul)
