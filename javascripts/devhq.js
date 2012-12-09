function colorPicker(index) {
  var length = colors.length;
  if ( index == length - 1 ) {
    return originalColor;
  } else if ( index >= 0 ) {
    index++;
    return colors[index];
  } else {
    return colors[0];
  }
}

function colorEachRow() {
  for (var j=0; j < verticalTiles; j++) {
    $(".row" + j).each(function(index) {
      $(this).css('color', colors[index%colors.length]);
    });
  }
}

function getStart(j) {
  var start;
  if ( j < 2 ) {
    start = 2 - j;
  } else if ( j >= 2 && j <= 3 ){
    start = 0;
  } else {
    start = j - 3;
  }
  return start;
}

function isOutsideArrow(i,j) {
  var start = getStart(j);
  return (i < start + padding) || (i > start + padding + arrowWidth);
}

function colorMind(i,j) {
  if ( isOutsideArrow(i,j) ) {
    return originalColor;
  } else {
    return randomColor();
  }
}

//
// originalColor: #2C5CA7, colors: [ yellow: #F9D164, accent_blue: #69D0E6, orange: #F8654E ]
//
var originalColor = 'rgb(44, 92, 167)';
var colors = ['rgb(249, 209, 100)','rgb(105, 208, 230)','rgb(248, 101, 78)'];

var tiledWall = $(".tiled_wall");
var firstTile = $(".one_tile:first");
var headerWidth = tiledWall.width();
var headerHeight = tiledWall.height();
var tileWidth = firstTile.width() + 6;
var tileHeight = firstTile.height();
var horizontalTiles = Math.ceil(headerWidth / tileWidth) + 2;
var arrowWidth = Math.floor(600/tileWidth);
var padding = Math.floor(($(window).width() - 960)/ 2 / tileWidth) + 2;
var verticalTiles = Math.floor(headerHeight / tileHeight);
var $startTile = firstTile.remove();

for (var i=0; i < horizontalTiles; i++) {
  for (var j=0; j < verticalTiles; j++) {
    var $clone = $startTile.clone();
    $clone.css({ left: tileWidth * i, top: tileHeight * j });
    if ( !isOutsideArrow(i,j) ) {
      $clone.addClass("insideArrow row" + j);
    }
    if ( j < 3 ) {
      $clone.addClass('openBracket');
    }
    tiledWall.append($clone);
  }
}

colorEachRow();

var openBrackets = $('.openBracket');
openBrackets.each(function() {
  $(this).html(function(i, html) {
    return html.replace("/", "<span class='dimBracket'>/</span>");
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

// now we insert the replacement and style
var $lefty = $("<div class='lefty'>&lt;/</div>");
var $righty = $("<div class='righty'>&gt;</div>");
var $middly = $("<div class='middly'>wistia<span class='devhq_accent_blue'>.</span>developers</div>");
var $sickWrapper = $("<div class='sick_wrapper'></div>");
$sickWrapper.append($lefty).append($middly).append($righty);
tileBeforeReplacement.after($sickWrapper);
$middly.width($middly.width() + widthOfTilesToBeReplaced - $sickWrapper.width());
$sickWrapper.css({
  left: parseInt(tileBeforeReplacement.css('left'), 10),
  top: parseInt(tileBeforeReplacement.css('top'), 10) + tileHeight
});
// bump the 'nerds' subtitle to line up
var subtitleOffset = parseInt($sickWrapper.css('left'), 10) + $lefty.width();
$('#devhq_subtitle').css('left', subtitleOffset);

$('.one_tile').on('click', function() {
  var $this = $(this);
  var color = $this.css('color');
  var index = colors.indexOf(color);
  $this.css('color', colorPicker(index));
});
