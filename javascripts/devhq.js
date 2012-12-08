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

function randomColor() {
  return colors[Math.floor(Math.random() * colors.length)];
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
// yellow: #F9D164, accent_blue: #69D0E6, orange: #F8654E, dimBlue: #2C5CA7
//
var originalColor = 'rgb(44, 92, 167)';
var colors = ['rgb(249, 209, 100)','rgb(105, 208, 230)','rgb(248, 101, 78)'];

tiled_wall = $(".tiled_wall");
one_tile = $(".one_tile:first");
var headerWidth = tiled_wall.width();
var headerHeight = tiled_wall.height();
var tileWidth = one_tile.width() + 6;
var tileHeight = one_tile.height();
var horizontalTiles = Math.ceil(headerWidth / tileWidth) + 2;
var arrowWidth = Math.floor(600/tileWidth);
var padding = Math.floor(($(window).width() - 960)/ 2 / tileWidth) + 2;
var verticalTiles = Math.floor(headerHeight / tileHeight);
var $startTile = one_tile.remove();

for (var i=0; i < horizontalTiles; i++) {
  for (var j=0; j < verticalTiles; j++) {
    var $clone = $startTile.clone();
    $clone.css({ left: tileWidth * i, top: tileHeight * j, color: colorMind(i,j) });
    if ( !isOutsideArrow(i,j) ) {
      $clone.addClass('insideArrow');
    }
    if ( j < 3 ) {
      $clone.addClass('openBracket');
    }
    tiled_wall.append($clone);
  }
}

var openBrackets = $('.openBracket');
openBrackets.each(function() {
  wrapInner(function() {
    return "<span class='dimSlash' />";
  });
});

var lastTile = $('.insideArrow:last');
var lastRowTiles = $('.one_tile').filter( function() {
  return lastTile.offset().top == $(this).offset().top;
});
var lastTileIndex = lastRowTiles.index(lastTile);
var tilesToBeReplaced = lastRowTiles.filter(":gt(" + (lastTileIndex - 5) + ")").filter(":lt(4)");
var widthOfTilesToBeReplaced = tilesToBeReplaced.length * tileWidth;
var tileBeforeReplacement = tilesToBeReplaced.first().prev();
tilesToBeReplaced.remove();
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
var subtitleOffset = parseInt($sickWrapper.css('left'), 10) + $lefty.width();
console.log("newer amt", subtitleOffset);
$('#devhq_subtitle').css('left', subtitleOffset);


$('.one_tile').on('click', function() {
  var $this = $(this);
  var color = $this.css('color');
  var index = colors.indexOf(color);
  newColor = colorPicker(index);
  $this.css('color', newColor);
});
