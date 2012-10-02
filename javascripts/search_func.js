$(document).ready(function() {
  var query = (window.location.href.split('?')[1] || "").split('=')[1],
    header = results_header(query),
    results_json;

  function send_search(query, callback) {
    $.getJSON( '/doc/search/' + query + "?format=json&amp;callback=?", function(data) { 
      callback(data);
    });
  }

  function convert_json_to_html(json) {
    title = json.title;
    description = json.description;
    url = json.url;

    return "<div class='result'><h2><a href='" + url + "'>" + title + "</a></h2>" + 
      "<p class='description'>" + description + "</p></div>";
  }

  function results_header(query) {
    var html_start_str = "<div class='results_header'><h1>",
      html_end_str = "</h1></div>";

    if (query) {
      return html_start_str + "Results for '" + query.replace(/_/g, ' ') + "'" + html_end_str; 
    }
    else { 
      return html_start_str + "enter a search to begin" + html_end_str;
    }

  }

  if (query) {
    send_search(query, function(data) {
      var result_html = "";

      if (data.results.length > 0) {
        results_json = data.results;
        $.each(results_json, function(i, val) {
          result_html += convert_json_to_html(val);
        });
      }
      else {
        result_html = "<div class='no_result'><p>We couldn't find any results for your query, <span class='query'>'" + query + "'</span>." + 
          "<p>Please try another or head back to the <a href='/'>Documentation Main page</a>.</p></div>";
      }

      $('#results').append( header ).append( result_html );
    });
  }
  else {
    $('#results').append( header );
  }

  });
