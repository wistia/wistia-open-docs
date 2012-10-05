$(document).ready(function() {
  function perform_search() {
    var entered_query = $('#search_text').val().replace(/ /g, '_');
    window.location.replace( basepath + "/search?query=" + entered_query );
  }

  $('#search_button').on('click', function() {
    perform_search();
  });
  
  $('#search_text').keyup( function(e) {
    if (e.keyCode == 13) {
      perform_search();
    }
  });

  $(window).keyup( function(e) {
    if (e.keyCode == 191) {
      $('input#search_text').focus();
    }
  });

});
