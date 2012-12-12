$(window).load(function() {
  var width = $('body').width();
  var height = $('body').height();

  // make a canvas that fills the screen!
  $('body').prepend("<div id='beegee'></div>");

  $('#beegee').on('click', function(){ $('body').toggleClass('activated') });

  var vertices = d3.range(600).map(function(d) {
    return [Math.random() * width, Math.random() * height];
  });

  var svg = d3.select("#beegee")
    .append("svg")
      .attr("width", width)
      .attr("height", height)
      .on("mousemove", update);

  svg.selectAll("path")
      .data(d3.geom.voronoi(vertices))
    .enter().append("path")
      .attr("class", function(d, i) { return i ? "q" + (i % 9) : null; })
      .attr("d", function(d) { return "M" + d.join("L") + "Z"; });

  /*
  svg.selectAll("circle")
      .data(vertices.slice(1))
    .enter().append("circle")
      .attr("transform", function(d) { return "translate(" + d + ")"; })
      .attr("r", 2);
  */

  function update() {
    vertices[0] = d3.mouse(this);
    svg.selectAll("path")
        .data(d3.geom.voronoi(vertices)
        .map(function(d) { return "M" + d.join("L") + "Z"; }))
        .filter(function(d) { return this.getAttribute("d") != d; })
        .attr("d", function(d) { return d; });
  }

});
