$(document).ready(function() {

  // getting that nav bar set right //
  (function right_nav() {
    var h2 = $('h2'),
      h1 = $('.post_title > h1'),
      nav_box_ul = $('ul#page_nav');

    var text_to_id = function(text) {
      return text.toLowerCase().replace(/[^\s0-9a-z]/g, '').replace(/\s/g, '_');
    };

    if (h2.length) {
      h1.attr('id', text_to_id(h1.text()));
      nav_box_ul.append('<li><a href="#' + h1.attr('id') + '">' + h1.text() + ' Topics</a></li>');
    }
    // if no nav box, then hide it entirely and re-center main post //
    else {
      $post_container = $('#post_container');
      nav_box_ul.hide();
      $post_width = $post_container.width();
      $('#container').css("width", $post_width);
      $('#post_container').css("left", 0);
    }

    h2.each( function() {
      $this = $(this);
      $this.attr('id', text_to_id($this.text()));

      nav_box_ul.append('<li><a href="#' + $this.attr('id') + '">' + $this.text() + '</a></li>');

    });

    $('#page_nav').onePageNav();


    // get the spacing on the title bar set right
    function space_the_topics_title() {
      var $topics_title_box = $('#page_nav li:first-child'),
        $title_a = $topics_title_box.find('a');

      $title_a.css('top', ($topics_title_box.height() - $title_a.height())/2);
    }

    space_the_topics_title();

  })();

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

  // for <pre> code snippets //
  function browser_escape_characters(span) {
    span.html(span.html().replace(/</g, '&lt;').replace(/>/g, '&gt;'))
  };

  if ($('span.code').length) {
    $('span.code').each( function() {
      $this = $(this);

      browser_escape_characters($this);
    });
  };

  if ($('pre').length) {
    $('pre').find('code.language-markup').each( function() {
      $this = $(this);

      browser_escape_characters($this);
    });
  };

});
