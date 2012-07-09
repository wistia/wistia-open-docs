$(document).ready(function() {
  var h2 = $('h2'),
    h1 = $('.post_title > h1'),
    nav_box_ul = $('#page_nav');

  var text_to_id = function(text) {
    return text.toLowerCase().replace(/[^\s0-9a-z]/g, '').replace(/\s/g, '_');
  };

  h1.attr('id', text_to_id(h1.text()));
  nav_box_ul.append('<li><a href="#' + h1.attr('id') + '">' + h1.text() + ' Topics</a></li>');

  h2.each( function() {
    $this = $(this);
    $this.attr('id', text_to_id($this.text()));

    nav_box_ul.append('<li><a href="#' + $this.attr('id') + '">' + $this.text() + '</a></li>');

  });

  $('#page_nav').onePageNav();

});
