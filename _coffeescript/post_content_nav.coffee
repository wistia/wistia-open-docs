class NavBar
  constructor: ->
    @main_title = $('.post_title > h1')
    @nav_box_ul = $('ul#page_nav')
    @titles_for_nav = @titles_for_nav()
    @build_nav_box()
    $('li.header_link:first').css('border', 'none')

  build_nav_box: ->
    if @titles_for_nav.length
      @main_title.attr 'id', $.text_to_id @main_title.text()
      @append_titles_to_nav_box()
      @space_the_topics_title()
    else
      @nav_box_ul.hide()
      $('#container').css("text-align", "center")
      $('#post_container').css("left", "0")

    $('#page_nav').onePageNav { changeHash: true }

  append_titles_to_nav_box: ->
    @nav_box_ul
      .append('<li class="title_list_item"><a href="#' +
        @main_title.attr('id') + '">' + @main_title.text() + '</a></li>')

    for title in @titles_for_nav
      $text = $(title).text()
      $id_text = $.text_to_id($text)

      $(title)
        .attr('id', $id_text)
        .prepend('<a class="subtopic_anchor" href="#' +
          $id_text + '">#</a>')

      @append_list_elem_to_nav_box $(title), $text, $id_text

  append_list_elem_to_nav_box: (elem, link_text, id_text) ->
    if window.api
      if elem.is 'h3'
        @nav_box_ul
          .append('<li class="sub_link"><a href="#' + id_text +
            '">' + $.section_title_to_nav_title(link_text) + '</a></li>')
      else
        @nav_box_ul
          .append('<li class="header_link"><a href="#' + id_text + '">' +
            link_text + '</a></li>')
    else
      @nav_box_ul
        .append('<li><a href="#' + id_text + '">' + link_text + '</a></li>')

  titles_for_nav: ->
    if window.api
      $('h2,h3').not('#wistiacom_footer h3')
    else
      $('h2')

  space_the_topics_title: ->
    $topics_title_box = $('#page_nav li:first-child')
    $title_a = $topics_title_box.find('a')

    $title_a.css 'top', ($topics_title_box.height() - $title_a.height())/2

$.browser_escape_characters = (span) ->
  span.html span.html().replace(/</g, '&lt;').replace(/>/g, '&gt;')

$.text_to_id = (text) ->
  text.toLowerCase().replace(/[^\s0-9a-z]/g, '').replace(/\s/g, '_')

$.section_title_to_nav_title = (text) ->
  if (/\:\s/).test(text)
    text = text.split(/\:\s/)[1]
  text

$ ->
  window.navBar = new NavBar

  if $('span.code').length
    $('span.code').each ->
      $.browser_escape_characters $(this)

  if $('pre').length
    $('pre').find('code.language-markup').each ->
      $.browser_escape_characters $(this)
