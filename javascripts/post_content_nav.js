$(document).ready(function() {
  var h2 = $('h2'),
    h1 = $('.post_title > h1'),
    nav_box_ul = $('#page_nav');

  h1.attr('id', h1.text().toLowerCase().replace(/ /g, "_"));
  nav_box_ul.append('<li><a href="#' + h1.attr('id') + '">' + h1.text() + ' Topics</a></li>');

  h2.each( function() {
    $this = $(this);
    $this.attr('id', $this.text().toLowerCase().replace(/ /g, "_"));

    nav_box_ul.append('<li><a href="#' + $this.attr('id') + '">' + $this.text() + '</a></li>');

  });

  $('#page_nav').onePageNav();

});
