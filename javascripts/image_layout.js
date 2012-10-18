$(document).ready(function() {

  function fixFloatedImages() {
    $(".post_image.float_right").each(function() {
      var $img = $(this),
        $p = $img.closest('p').next('p'),
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

  fixFloatedImages();
  $(window).resize(fixFloatedImages());

});
