+++
title = "P514"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_513/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="javascript:void(0)" onclick="getRandomProblem()" style="color: black; text-decoration: none;" title="random problem">🎲 </a>
<script>
  function getRandomProblem() {
    fetch('/activity/project_euler/data.txt') 
      .then(response => response.text())
      .then(data => {
        const maxProblems = parseInt(data.trim(), 10);
        const randomProblemNumber = Math.floor(Math.random() * maxProblems) + 1;
        window.location = '/activity/project_euler/problem_' + randomProblemNumber + '/';
      })
      .catch(err => console.error('Error fetching max problems:', err));
  }
</script>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_515/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</div>
~~~

~~~
<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_main.1735430422.css">
<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_default.1627113674.css">
<script src="https://projecteuler.net/js/mathjax_config.js"></script>
<script src="https://cdnjs.cloudflare.com/polyfill/v3/polyfill.min.js?version=4.8.0&features=es6"></script>
<script id="MathJax-script" async
src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>
<div id="content">

<div class="center print"><img src="https://projecteuler.net/images/clipart/print_page_logo.png" alt="projecteuler.net"></div>
<h2>Geoboard Shapes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 3rd May 2015, 04:00 am; Solved by 255;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=514">Problem 514</a></h3></div>
<div class="problem_content" role="problem">
<p>A <strong>geoboard</strong> (of order $N$) is a square board with equally-spaced pins protruding from the surface, representing an integer point lattice for coordinates $0 \le x, y \le N$.</p>

<p>John begins with a pinless geoboard. Each position on the board is a hole that can be filled with a pin. John decides to generate a random integer between $1$ and $N+1$ (inclusive) for each hole in the geoboard. If the random integer is equal to $1$ for a given hole, then a pin is placed in that hole.</p>

<p>After John is finished generating numbers for all $(N+1)^2$ holes and placing any/all corresponding pins, he wraps a tight rubberband around the entire group of pins protruding from the board. Let $S$ represent the shape that is formed. $S$ can also be defined as the smallest convex shape that contains all the pins.</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0514_geoboard.png?1678992053" alt="0514_geoboard.png"></div>

<p>The above image depicts a sample layout for $N = 4$. The green markers indicate positions where pins have been placed, and the blue lines collectively represent the rubberband. For this particular arrangement, $S$ has an area of $6$. If there are fewer than three pins on the board (or if all pins are collinear), $S$ can be assumed to have zero area.</p>

<p>Let $E(N)$ be the expected area of $S$ given a geoboard of order $N$. For example, $E(1) = 0.18750$, $E(2) = 0.94335$, and $E(10) = 55.03013$ when rounded to five decimal places each.</p>

<p>Calculate $E(100)$ rounded to five decimal places.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
