$(function(){
  
  console.log('start');

  var width = $(document).width() ;
  var height = $(document).height();

  // make a canvas that fills the screen!
  $('body').prepend("<canvas id='beegee' width=" + width + " height=" + height + "></canvas>");
  var canvas = $('#beegee')[0];

  // get the heck out of here if we don't have canvas
  if (!canvas.getContext) return;
  ctx = canvas.getContext('2d');
  ctx.fillStyle = 'rgb(255,200,240)';
  ctx.fillRect(0,0,canvas.width,canvas.height);

  // setup the pattern
  var patternCanvas = document.createElement('canvas');
  patternCanvas.width = width;
  patternCanvas.height = 800;
  var pctx = patternCanvas.getContext('2d');


  pctx.strokeStyle = 'rgb(200,200,200)';

  var iterations = 40;
  for(var i = 0; i < iterations; i++) {
    var x1 = i * (patternCanvas.width / iterations);
    pctx.beginPath();
    pctx.moveTo(x1,0);
    pctx.lineTo(x1,patternCanvas.height);
    pctx.stroke()
  }
  
  var iterations = 80;
  var step = (patternCanvas.height / iterations);
  for(var i = 0; i < iterations; i++) {
    c = 250 - Math.floor((80 - i) / 2);
    pctx.strokeStyle = 'rgb(' + c + ',' + c + ',' + c + ')';

    //var y1 = Math.floor(Math.random() * patternCanvas.height + 1);
    var y1 = i * step;
    var y2 = Math.floor(Math.random() * (iterations + 1)) * step;
    pctx.beginPath();
    pctx.moveTo(0,y1);
    //pctx.lineTo(patternCanvas.width,y2);
    var cp1x = patternCanvas.width / 2; 
    var cp1y = y2; //patternCanvas.height / 2; 
    pctx.quadraticCurveTo(cp1x,cp1y,patternCanvas.width,y2);
    pctx.stroke()
  }

  /*
  pctx.beginPath();
  pctx.moveTo(patternCanvas.width,0);
  pctx.lineTo(0, patternCanvas.height);
  pctx.stroke()
  */

  var pattern = ctx.createPattern(patternCanvas, 'repeat');

  // repeat the pattern
  ctx.rect(0,0,canvas.width,canvas.height);
  ctx.fillStyle = pattern;
  ctx.fill();
  
  console.log('end');

});
