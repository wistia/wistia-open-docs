$(document).ready(function() {

  function fixFloatedImages() {
    $(".float_right, .float_left").each(function() {
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
          var offset_diff = Math.round(($img.outerHeight(true) - heightFinder($p)) / 2);
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
  $("img").load(fixFloatedImages);

});
