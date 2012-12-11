$(document).ready(function() {

  // getting that nav bar set right //
  (function right_nav() {
    var h_arr = $('h2,h3'),
      h1 = $('.post_title > h1'),
      nav_box_ul = $('ul#page_nav'),
      post_content_nav = $('#post_content_nav');

    var section_title_to_nav_title = function(text) {
      if ((/\:\s/).test(text)) {
        text = text.split(/\:\s/)[1];
      }
      return text;
    };

    var text_to_id = function(text) {
      return text.toLowerCase().replace(/[^\s0-9a-z]/g, '').replace(/\s/g, '_');
    };

    h1.attr('id', text_to_id(h1.text()));
    nav_box_ul.prepend('<li class="title_list_item"><a href="#' + h1.attr('id') + '">' + h1.text() + '</a></li>');

    h_arr.each( function() {
      var $this = $(this);

      $this.attr('id', text_to_id($this.text()));

      var $text = $(this).text();

      if ($this.is('h3')) {
        nav_box_ul.append('<li class="sub_link"><a href="#' + $this.attr('id') + '">' + section_title_to_nav_title($text) + '</a></li>');
      }
      else {
        nav_box_ul.append('<li class="header_link"><a href="#' + $this.attr('id') + '">' + $text + '</a></li>');
      }

      $this.attr('id', text_to_id($this.text())).prepend('<a class="subtopic_anchor" href="#' + $this.attr('id') + '">#</a></li>');

    });

    $('#page_nav').onePageNav({ changeHash: true });
    $('li.header_link:first').css('border', 'none');


    if (post_content_nav.height() + 80 < $(window).height()) {
      post_content_nav.css('position', 'fixed');
    }

    // get the spacing on the title bar set right
    function space_the_topics_title() {
      var $topics_title_box = $('li.title_list_item'),
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

  //plugin
  jQuery.fn.topLink = function(settings) {
    settings = jQuery.extend({
      min: 1,
      fadeSpeed: 200
    }, settings);
    return this.each(function() {
      //listen for scroll
      var el = $(this);
      el.hide(); //in case the user forgot
      $(window).scroll(function() {
        if($(window).scrollTop() >= settings.min)
        {
          el.fadeIn(settings.fadeSpeed);
        }
        else
        {
          el.fadeOut(settings.fadeSpeed);
        }
      });
    });
  };

  //usage w/ smoothscroll
  //set the link
  $('#top-link').topLink({
    min: 400,
    fadeSpeed: 500
  });
  //smoothscroll
  $('#top-link').click(function(e) {
    e.preventDefault();
    $.scrollTo(0,300);
  });

});
