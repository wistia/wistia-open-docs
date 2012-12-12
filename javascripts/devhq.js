// given a current color, return the next color
function addColor(currentColor) {
  if (currentColor == "bracket_default") {
    return "bracket_yellow";
  } else if (currentColor == "bracket_yellow") {
    return "bracket_blue";
  } else if (currentColor == "bracket_blue") { 
    return "bracket_red";
  } else if (currentColor == "bracket_red") {
    return "bracket_default";
  }
}

function clearAllColors(tile_array) {
  tile_array.each(function() {
    $this = $(this);
    $this.removeClass(getColorFromClasses($this));
    $this.addClass("bracket_default");
  });
}


// given an element, return the color class it is currently assigned.
function getColorFromClasses(elem) {
  var k;
  var classes_array = elem.attr('class').split(/\s+/);
  for (k = 0; k < classes_array.length; k++) {
    if ($.inArray(classes_array[k], colors) >= 0) {
      return classes_array[k];
    }
  };
  return "bracket_default";
}

// first get the current color class, remove it, then add new one
function changeColorOnClick(elem) {
  var currColorClass = getColorFromClasses(elem);
  elem.removeClass(currColorClass)
      .addClass(addColor(currColorClass));
}

// select the row, then color the row in order
function colorEachRow() {
  for (var j = 0; j < verticalTiles; j++) {
    $(".row" + j).each(function(index) {
      $(this).addClass(colors[index % colors.length]);
    });
  }
}

// find out when the arrow starts!
function getStart(j) {
  if ( j < 2 ) {
    return 2 - j;
  } else if ( j >= 2 && j <= 3 ){
    return 0;
  } else {
    return j - 3;
  }
}

// find out if a given index (hor, vert) is inside the default color arrow
function isOutsideArrow(i,j) {
  var start = getStart(j);
  return (i < start + padding) || (i > start + padding + arrowWidth);
}

//
// originalColor: #2C5CA7, colors: [ yellow: #F9D164, accent_blue: #69D0E6, red: #F8654E ]
//
var originalColor = "bracket_default";
var colors = ["bracket_yellow", "bracket_blue", "bracket_red"];
var colorsCleared = false;

var tiledWall = $(".tiled_wall");
var firstTile = $(".one_tile:first");
var headerWidth = tiledWall.width();
var headerHeight = tiledWall.height();
var tileWidth = firstTile.width();
var tileHeight = firstTile.height();
var horizontalTiles = Math.ceil(headerWidth / tileWidth) + 2;
var arrowWidth = Math.floor(600 / tileWidth);
var padding = Math.floor(($(window).width() - 960) / 2 / tileWidth) + 2;
var verticalTiles = Math.floor(headerHeight / tileHeight);
var $startTile = firstTile.remove();

// the tiling process
for (var i = 0; i < horizontalTiles; i++) {
  for (var j = 0; j < verticalTiles; j++) {
    var $clone = $startTile.clone();
    $clone.css({ left: tileWidth * i, top: tileHeight * j });
    if ( !isOutsideArrow(i, j) ) {
      $clone.addClass("insideArrow row" + j);
    } else {
      $clone.addClass("bracket_default");
    }
    if ( j < verticalTiles / 2 ) {
      $clone.addClass('openBracket');
    }
    tiledWall.append($clone);
  }
}

// apply colors to the original arrow
colorEachRow();

// make the top half 'open brackets'
var openBrackets = $('.openBracket');
openBrackets.each(function() {
  $(this).html(function(i, html) {
    return html.replace("/", "<span class='dimSlash'>/</span>");
  });
});

// find the last tile, so we can replace the tiles before it
var lastTile = $('.insideArrow:last');
// the last row
var lastRowTiles = $('.one_tile').filter( function() {
  return lastTile.offset().top == $(this).offset().top;
});

var lastTileIndex = lastRowTiles.index(lastTile);
// find the tilesToBeReplaced, and the width of those tiles
var tilesToBeReplaced = lastRowTiles.filter(":gt(" + (lastTileIndex - 5) + ")").filter(":lt(4)");
var widthOfTilesToBeReplaced = tilesToBeReplaced.length * tileWidth;
// anchor on the tile BEFORE the tiles that need replacing
var tileBeforeReplacement = tilesToBeReplaced.first().prev();
tilesToBeReplaced.remove();

//
// now we insert the replacement and style it
//
var $lefty = $("<div class='lefty'>&lt;</div>");
var $righty = $("<div class='righty'>/&gt;</div>");
var $middly = $("<div class='middly'>wistia<span class='devhq_accent_blue'>.</span>developers</div>");
var $sickWrapper = $("<div class='sick_wrapper'></div>");
$sickWrapper.append($lefty).append($middly).append($righty);
tileBeforeReplacement.after($sickWrapper);
//var newMiddlyWidth = widthOfTilesToBeReplaced - $lefty.outerWidth() - $righty.outerWidth() - 10;
//var newLetterSpacing = Math.floor((newMiddlyWidth - $middly.outerWidth() + 10) / $middly.text().length);
//$middly.width(newMiddlyWidth);
//$middly.css("letter-spacing", newLetterSpacing);
$sickWrapper.css({
  left: parseInt(tileBeforeReplacement.css('left'), 10),
  top: parseInt(tileBeforeReplacement.css('top'), 10) + tileHeight
});

$middly.css('top', tileHeight - $middly.height() - 6);

// bump the 'nerds' subtitle to line up
var subtitleOffset = parseInt($sickWrapper.css('left'), 10) + $lefty.width() + 11;
$('#devhq_subtitle').css('left', subtitleOffset);

// these buggers change color on click
$('.one_tile').on('click', function() {
  changeColorOnClick($(this));
});

$('.sick_wrapper').on('click', function() {
  if (!colorsCleared) {
    clearAllColors($('.one_tile'));
    colorsCleared = true;
  } else {
    colorEachRow();
    colorsCleared = false;
  }
});

$('.devhq_footer li a').on('hover', function() {
  $(this).next('p').toggleClass('visible');
});
