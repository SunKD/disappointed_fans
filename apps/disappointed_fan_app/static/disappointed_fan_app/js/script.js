
// var url = "http://localhost:8000/"
// var url_json = url + "data.json"

// d3.json(url_json, function(d) {

//   var tagscounter = [],
//         dates = [],
//         margin = { top: 0, right: 0, bottom: 30, left: 40 },
//         height =  window.innerHeight * (7/10),
//         width = window.innerWidth * (5/10);
//         // innerRadius = Math.min(width,height)/3,
//         // outerRadius = innerRadius + 30;
//         // height = 200 - margin.top - margin.bottom,
//         // width = 300 - margin.left - margin.right;


//   var tempColor,
//       yScale,
//       yAxisValues,
//       yAxisTicks,
//       yGuide,
//       xScale,
//       xAxisValues,
//       xAxisTicks,
//       xGuide,
//       colors,
//       tooltip,
//       myChart;

//   for (var i = 0; i<d.data.length; i++) {
//       tagscounter.push(d.data[i]);
//       dates.push( new Date(d.datetweet[i]) );
//   }

//   yScale = d3.scaleLinear()
//     .domain([0, d3.max(tagscounter)])
//     .range([0,height]);

//   yAxisValues = d3.scaleLinear()
//     .domain([0, d3.max(tagscounter)])
//     .range([height,0]);

//   yAxisTicks = d3.axisLeft(yAxisValues)
//   .ticks(10)

//   xScale = d3.scaleBand()
//     .domain(tagscounter)
//     .paddingInner(.1)
//     .paddingOuter(.1)
//     .range([0, width])

//   xAxisValues = d3.scaleTime()
//     .domain([dates[0],dates[(dates.length-1)]])
//     .range([0, width])

//   xAxisTicks = d3.axisBottom(xAxisValues)
//     .ticks(d3.timeDay.every(1))

//   colors = d3.scaleLinear()
//     .domain([0, 100, d3.max(tagscounter)])
//     .range(['#FFFFFF', '#2D8BCF', '#DA3637'])

//   tooltip = d3.select('body')
//     .append('div')
//     .style('position', 'absolute')
//     .style('padding', '0 10px')
//     .style('background', 'white')
//     .style('opacity', 0);

//   myChart = d3.select('#viz').append('svg')
//     .attr('width', width + margin.left + margin.right)
//     .attr('height', height + margin.top + margin.bottom)
//     .append('g')
//     .attr('transform',
//       'translate(' + margin.left + ',' + margin.right + ')')
//     .selectAll('rect').data(tagscounter)
//     .enter().append('rect')
//       .attr('fill', colors)
//       .attr('width', function(d) {
//         return xScale.bandwidth();
//       })
//       .attr('height', 0)
//       .attr('x', function(d) {
//         return xScale(d);
//       })
//       .attr('y', height)

//       .on('mouseover', function(d) {
//         tooltip.transition().duration(200)
//           .style('opacity', .9)
//         tooltip.html(
//           '<div style="font-size: 14px; font-weight: normal">' +
//             d + '</div>'
//         )
//           .style('left', (d3.event.pageX -35) + 'px')
//           .style('top', (d3.event.pageY -30) + 'px')
//         tempColor = this.style.fill;
//         // d3.select(this)
//         //   .style('fill', 'yellow')
//       })

//       .on('mouseout', function(d) {
//         tooltip.html('')
//         // d3.select(this)
//         //   .style('fill', tempColor)
//       });

//   yGuide = d3.select('#viz svg').append('g')
//             .attr('transform', 'translate(40,0)')
//             .call(yAxisTicks)

//   xGuide = d3.select('#viz svg').append('g')
//             .attr('transform', 'translate(40,'+ height + ')')
//             .call(xAxisTicks)

//   myChart.transition()
//       .attr('height', function(d) {
//         return yScale(d);
//     })
//     .attr('y', function(d) {
//       return height - yScale(d);
//     })
//     .delay(function(d, i) {
//         return i * 20;
//     })
//     .duration(1000)
//     .ease(d3.easeBounceOut)

// }); // json import

// //import data.csv
// var svg = d3.select("#svg2"),
//     margin = {top: 20, right: 20, bottom: 30, left: 40},
//     width = +svg.attr("width") - margin.left - margin.right,
//     height = +svg.attr("height") - margin.top - margin.bottom,
//     g = svg.append("g").attr("transform", "translate(" + margin.left + "," + margin.top + ")");

// var x0 = d3.scaleBand()
//     .rangeRound([0, width])
//     .paddingInner(0.1);

// var x1 = d3.scaleBand()
//     .padding(0.05);

// var y = d3.scaleLinear()
//     .rangeRound([height, 0]);

// var z = d3.scaleOrdinal()
//     .range(["#98abc5", "#8a89a6", "#7b6888", "#6b486b", "#a05d56", "#d0743c", "#ff8c00"]);

// url_csv = url + "data.csv"
// d3.csv(url_csv, function(d, i, columns) {
//   for (var i = 1, n = columns.length; i < n; ++i) {
//     d[columns[i]] = +d[columns[i]]
//     console.log(columns[i]);
//   };
//   return d;
// }, function(error, data) {
//     if (error) throw error;

//     var keys = data.columns.slice(1);
//     console.log(keys);
//     console.log(data);
//     console.log(data.Date);

//   x0.domain(data.map(function(d) { return d.Date; }));
//   x1.domain(keys).rangeRound([0, x0.bandwidth()]);
//   y.domain([0, d3.max(data, function(d) { return d3.max(keys, function(key) { return d[key]; }); })]).nice();

//   g.append("g")
//     .selectAll("g")
//     .data(data)
//     .enter().append("g")
//       .attr("transform", function(d) { return "translate(" + x0(d.Date) + ",0)"; })
//     .selectAll("rect")
//     .data(function(d) { return keys.map(function(key) { return {key: key, value: d[key]}; }); })
//     .enter().append("rect")
//       .attr("x", function(d) { return x1(d.key); })
//       .attr("y", function(d) { return y(d.value); })
//       .attr("width", x1.bandwidth())
//       .attr("height", function(d) { return height - y(d.value); })
//       .attr("fill", function(d) { return z(d.key); });

//   g.append("g")
//       .attr("class", "axis")
//       .attr("transform", "translate(0," + height + ")")
//       .call(d3.axisBottom(x0));

//   g.append("g")
//       .attr("class", "axis")
//       .call(d3.axisLeft(y).ticks(null, "s"))
//     .append("text")
//       .attr("x", 2)
//       .attr("y", y(y.ticks().pop()) + 0.5)
//       .attr("dy", "0.32em")
//       .attr("fill", "#000")
//       .attr("font-weight", "bold")
//       .attr("text-anchor", "start");
//     //   .text("Population");

//   var legend = g.append("g")
//       .attr("font-family", "sans-serif")
//       .attr("font-size", 10)
//       .attr("text-anchor", "end")
//     .selectAll("g")
//     .data(keys.slice().reverse())
//     .enter().append("g")
//       .attr("transform", function(d, i) { return "translate(0," + i * 20 + ")"; });

//   legend.append("rect")
//       .attr("x", width - 19)
//       .attr("width", 19)
//       .attr("height", 19)
//       .attr("fill", z);

//   legend.append("text")
//       .attr("x", width - 24)
//       .attr("y", 9.5)
//       .attr("dy", "0.32em")
//       .text(function(d) { return d; });
// }); // import data.csv


$(document).ready(function(){

  var url = "http://localhost:8000/"
  var url_csv = url + "data.csv"
  var height =  window.innerHeight * (7/10);
  var width = window.innerWidth * (5/10);
  var svg = d3.select("#viz"),
      margin = {top: 20, right: 20, bottom: 30, left: 40},
        width = window.innerWidth * (5/10),
        height = window.innerHeight * (7/10),
      // width = +svg.attr("width") - margin.left - margin.right,
      // height = +svg.attr("height") - margin.top - margin.bottom,
      g = svg.append("g").attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var x0 = d3.scaleBand()
      .rangeRound([0, width])
      .paddingInner(0.1);

  var x1 = d3.scaleBand()
      .padding(0.05);

  var y = d3.scaleLinear()
      .rangeRound([height, 0]);

  var z = d3.scaleOrdinal()
      .range(["#98abc5", "#8a89a6", "#7b6888", "#6b486b", "#a05d56", "#d0743c", "#ff8c00"]);


  d3.csv(url_csv, function(d, i, columns) {
    for (var i = 1, n = columns.length; i < n; ++i) d[columns[i]] = +d[columns[i]];
    return d;
  }, function(error, data) {
      if (error) throw error;

      var keys = data.columns.slice(1);
      console.log(keys);
      console.log(data);
      console.log(data.Date);

    x0.domain(data.map(function(d) { return d.Date; }));
    x1.domain(keys).rangeRound([0, x0.bandwidth()]);
    y.domain([0, d3.max(data, function(d) { return d3.max(keys, function(key) { return d[key]; }); })]).nice();

    g.append("g")
      .selectAll("g")
      .data(data)
      .enter().append("g")
        .attr("transform", function(d) { return "translate(" + x0(d.Date) + ",0)"; })
      .selectAll("rect")
      .data(function(d) { return keys.map(function(key) { return {key: key, value: d[key]}; }); })
      .enter().append("rect")
        .attr("x", function(d) { return x1(d.key); })
        .attr("y", function(d) { return y(d.value); })
        .attr("width", x1.bandwidth())
        .attr("height", function(d) { return height - y(d.value); })
        .attr("fill", function(d) { return z(d.key); });

    g.append("g")
        .attr("class", "axis")
        .attr("transform", "translate(0," + height + ")")
        .call(d3.axisBottom(x0));

    g.append("g")
        .attr("class", "axis")
        .call(d3.axisLeft(y).ticks(null, "s"))
      .append("text")
        .attr("x", 2)
        .attr("y", y(y.ticks().pop()) + 0.5)
        .attr("dy", "0.32em")
        .attr("fill", "#000")
        .attr("font-weight", "bold")
        .attr("text-anchor", "start");
      //   .text("Population");

    var legend = g.append("g")
        .attr("font-family", "sans-serif")
        .attr("font-size", 10)
        .attr("text-anchor", "end")
      .selectAll("g")
      .data(keys.slice().reverse())
      .enter().append("g")
        .attr("transform", function(d, i) { return "translate(0," + i * 20 + ")"; });

    legend.append("rect")
        .attr("x", width - 19)
        .attr("width", 19)
        .attr("height", 19)
        .attr("fill", z);

    legend.append("text")
        .attr("x", width - 24)
        .attr("y", 9.5)
        .attr("dy", "0.32em")
        .text(function(d) { return d; });
  });



  // toggle functions for the Mobile Landing Page
  var howCheck = 1
  var whyCheck = 1
    $('#how').click(function(){
        if (howCheck) {
            $('#how-data').slideToggle();
            howCheck = 0;
        }else{
            $('#how-data').slideToggle();
            howCheck = 1;
        }
    })
    $('#why').click(function(){
        if (whyCheck) {
            $('#why-data').slideToggle();
            whyCheck = 0;
        }else{
            $('#why-data').slideToggle();
            whyCheck = 1;
        }
    })
    function picked() {
        var choice = document.getElementById("firstchoice").value;
        if (choice == "Baseball") {
            $("#none").hide();
            $("#baseball").show();
            $("#soccer").hide();
            $("#hockey").hide();
            $("#basketball").hide();
        } else if (choice == "Soccer") {
            $("#none").hide();
            $("#baseball").hide();
            $("#soccer").show();
            $("#hockey").hide();
            $("#basketball").hide();
        }else if(choice == "Hockey"){
            $("#none").hide();
            $("#baseball").hide();
            $("#soccer").hide();
            $("#hockey").show();
            $("#basketball").hide();
        }else if(choice == "Basketball"){
            $("#none").hide();
            $("#baseball").hide();
            $("#soccer").hide();
            $("#hockey").hide();
            $("#basketball").show();
        }
    }
});