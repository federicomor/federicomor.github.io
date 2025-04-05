+++
title = "P351"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_350/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_352/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Hexagonal Orchards</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 17th September 2011, 10:00 pm; Solved by 2850;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=351">Problem 351</a></h3></div>
<div class="problem_content" role="problem">
<p>A <dfn>hexagonal orchard</dfn> of order $n$ is a triangular lattice made up of points within a regular hexagon with side $n$. The following is an example of a hexagonal orchard of order $5$:
</p>

<div align="center">
<img src="https://projecteuler.net/resources/images/0351_hexorchard.png?1678992052" class="dark_img" alt="0351_hexorchard.png"><br></div>

<p>
Highlighted in green are the points which are hidden from the center by a point closer to it. It can be seen that for a hexagonal orchard of order $5$, $30$ points are hidden from the center.
</p>

<p>
Let $H(n)$ be the number of points hidden from the center in a hexagonal orchard of order $n$.
</p>

<p>
$H(5) = 30$. $H(10) = 138$. $H(1\,000) = 1177848$.
</p>

<p>
Find $H(100\,000\,000)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
