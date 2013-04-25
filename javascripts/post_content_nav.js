$(document).ready(function() {

  $.browser_escape_characters = function(span) {
    return span.html(span.html().replace(/</g, '&lt;').replace(/>/g, '&gt;'))
  };

  $.text_to_id = function(text) {
    return text.toLowerCase().replace(/[^\s0-9a-z]/g, '').replace(/\s/g, '_');
  };

  $.section_title_to_nav_title = function(text) {
    if ((/\:\s/).test(text)) {
      text = text.split(/\:\s/)[1];
    }
    return text;
  };

  var navBar = {
    main_title: $('.post_title > h1'),
    nav_box_ul: $('ul#page_nav'),
    titles_for_nav: null,

    init: function() {
      this.titles_for_nav = this.titles_for_nav();
      this.build_nav_box();
      $('li.header_link:first').css('border', 'none');
    },

    build_nav_box: function() {
      if (this.titles_for_nav.length) {
        this.main_title.attr('id', $.text_to_id(this.main_title.text()));
        this.append_titles_to_nav_box();
        this.space_the_topics_title();
      }
      else {
        this.nav_box_ul.hide();
        $('#container').css("text-align", "center");
        $('#post_container').css("left", "0");
      }

      $('#page_nav').onePageNav({ changeHash: true });
    },

    append_titles_to_nav_box: function() {
      navBar.nav_box_ul
        .append('<li class="title_list_item"><a href="#' + 
          this.main_title.attr('id') + '">' + this.main_title.text() + '</a></li>');

      var i;
      for (i = 0; i < navBar.titles_for_nav.length; i++) {
        var $this = $(navBar.titles_for_nav[i]);
        var $text = $this.text();
        var $id_text = $.text_to_id($text);

        $this
          .attr('id', $id_text)
          .prepend('<a class="subtopic_anchor" href="#' + 
            $id_text + '">#</a>');

        navBar.append_list_elem_to_nav_box($this, $text, $id_text);
      }
    },

    append_list_elem_to_nav_box: function(elem, link_text, id_text) {
      if (window.api) {
        if (elem.is('h3')) {
          navBar.nav_box_ul
            .append('<li class="sub_link"><a href="#' + id_text +
              '">' + $.section_title_to_nav_title(link_text) + '</a></li>');
        } else {
          navBar.nav_box_ul
            .append('<li class="header_link"><a href="#' + id_text + '">' +
              link_text + '</a></li>');
        }
      } else {
        navBar.nav_box_ul
          .append('<li><a href="#' + id_text + '">' + link_text + '</a></li>');
      }
    },

    titles_for_nav: function() {
      if (window.api) {
        return $('h2,h3').not('#wistiacom_footer h3');
      } else {
        return $('h2');
      }
    },

    space_the_topics_title: function() {
      var $topics_title_box = $('#page_nav li:first-child'),
      $title_a = $topics_title_box.find('a');

      $title_a.css('top', ($topics_title_box.height() - $title_a.height())/2);
    }
  };

  navBar.init();

  // for the embed screen tomfoolery //
  if ($('.embed_type_image').length) {
    $('.embed_type_image').each( function() {
      $this = $(this),
      $prev_elem_height = $this.prev().outerHeight();

    if ($this.outerHeight() < $prev_elem_height ) {
      $this.css('height', $prev_elem_height );
    }
    });
  };

  if ($('span.code').length) {
    $('span.code').each( function() {
      $.browser_escape_characters($(this));
    });
  };

  if ($('pre').length) {
    $('pre').find('code.language-markup').each( function() {
      $.browser_escape_characters($(this));
    });
  };
});
