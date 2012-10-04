$(document).ready(function() {

  function sizeImages() {
    $(".post_image").each(function() {
      var $img_div = $(this),
      $width = $('#post').width(),
      $img = $img_div.find('img'),
      $img_src = $img.attr('src'),
      $resize_str = "?image_resize=";

      if ($img_div.hasClass('float_right')) {
        $img.attr('src', $img_src + $resize_str + ($width / 2));
      }
      else if ($img_div.hasClass('center')) {
        $img.attr('src', $img_src + $resize_str + $width);
      }
//    if ($img_div.width() > $width) {
//      $img_div.addClass('center').find('img').width( $width - 10).attr('src', $img_src + $resize_str + $width);
//    }
    });
    fixFloatedImages();
  }  
  
  function fixFloatedImages() {
    $(".post_image.float_right").each(function() {
      var $img = $(this),
        $p = $img.next('p'),
        $prev_elem = $img.prev();

      function heightFinder(elem) {
        var height = elem.outerHeight(true);
        if (elem.nextUntil(":not(p, ul, ol, a, span)").length) {
          elem.nextUntil(":not(p, ul, ol, a, span)").each( function() { 
            height += $(this).outerHeight(true);
          });
        }
        return height;
      }

      function offsetFinder() {
        if ($p.length) {
          var totalHeight = heightFinder($p);
          var offset_diff = Math.round(($img.outerHeight(true) - totalHeight) / 2);
          if (offset_diff > 0 ) {
            $p.css("top", offset_diff) && $p.nextUntil(":not(p, ul, a, span)").each ( function() {
              if (!$(this).is('div')) {
                $(this).css('top', offset_diff);
              }
            });
          }
        }
      }
      offsetFinder();
      $img.find('img').load(function() {
        offsetFinder();
      });
    });
  }

  sizeImages();
  $(window).resize(fixFloatedImages());

});
