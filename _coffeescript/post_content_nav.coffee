class NavBar
  constructor: ->
    @mainTitle = $('.post_title > h1')
    @navBoxUl = $('ul#page_nav')
    @titlesForNav = @titlesForNav()
    @buildNavBox()
    $('li.header_link:first').css('border', 'none')

  buildNavBox: ->
    if @titlesForNav.length
      @mainTitle.attr 'id', $.textToID(@mainTitle.text())
      @appendTitlestoNavBox()
      @spaceTheTopicsTitle()
    else
      @navBoxUl.hide()
      $('#container').css("text-align", "center")
      $('#post_container').css("left", "0")

    $('#page_nav').onePageNav(changeHash: true)

  appendTitlestoNavBox: ->
    @navBoxUl
      .append(
        """
        <li class="title_list_item"><a href="##{@mainTitle.attr('id')}">#{@mainTitle.text()}</a></li>
        """)

    for title in @titlesForNav
      $text = $(title).text()
      $idText = $.textToID($text)

      $(title)
        .attr('id', $idText)
        .prepend(
          """
          <a class="subtopic_anchor" href="##{$idText}">#</a>
          """)

      @appendListElemtoNavBox $(title), $text, $idText

  appendListElemtoNavBox: (elem, linkText, idText) ->
    linkSettings = @linkSettings(elem, linkText)
    @navBoxUl.append(
      """
      <li class="#{linkSettings.klass}"><a href="##{idText}">#{linkSettings.linkText}</a></li>
      """)

  linkSettings: (elem, linkText) ->
    if window.api
      if elem.is 'h3'
        { klass: "sub_link", linkText: $.sectionTitletoNavTitle(linkText) }
      else
        { klass: "header_link", linkText: linkText }
    else
      { klass: "", linkText: linkText }

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
