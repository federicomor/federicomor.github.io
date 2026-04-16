+++
title = "P465"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_464/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_466/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Polar Polygons</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 30th March 2014, 05:00 am; Solved by 259;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=465">Problem 465</a></h3></div>
<div class="problem_content" role="problem">
<p>The <dfn>kernel</dfn> of a polygon is defined by the set of points from which the entire polygon's boundary is visible. We define a <dfn>polar polygon</dfn> as a polygon for which the origin is <u>strictly</u> contained inside its kernel.</p>

<p>For this problem, a polygon can have collinear consecutive vertices. However, a polygon still cannot have self-intersection and cannot have zero area.</p>

<p>For example, only the first of the following is a polar polygon (the kernels of the second, third, and fourth do not strictly contain the origin, and the fifth does not have a kernel at all):
</p><p align="center"><img src="https://projecteuler.net/resources/images/0465_polygons.png?1678992053" alt="0465_polygons.png"></p>


<p>Notice that the first polygon has three consecutive collinear vertices.</p>

<p>Let $P(n)$ be the number of polar polygons such that the vertices $(x, y)$ have integer coordinates whose absolute values are not greater than $n$.</p>

<p>Note that polygons should be counted as different if they have different set of edges, even if they enclose the same area. For example, the polygon with vertices $[(0,0),(0,3),(1,1),(3,0)]$ is distinct from the polygon with vertices $[(0,0),(0,3),(1,1),(3,0),(1,0)]$.</p>

<p>For example, $P(1) = 131$, $P(2) = 1648531$, $P(3) = 1099461296175$ and $P(343) \bmod 1\,000\,000\,007 = 937293740$.</p>

<p>Find $P(7^{13}) \bmod 1\,000\,000\,007$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
