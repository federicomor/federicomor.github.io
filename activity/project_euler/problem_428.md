+++
title = "P428"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_427/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_429/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Necklace of Circles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th May 2013, 01:00 am; Solved by 274;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=428">Problem 428</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $a$, $b$ and $c$ be positive numbers.<br>
Let $W, X, Y, Z$ be four collinear points where $|WX| = a$, $|XY| = b$, $|YZ| = c$ and $|WZ| = a + b + c$.<br>
Let $C_{in}$ be the circle having the diameter $XY$.<br>
Let $C_{out}$ be the circle having the diameter $WZ$.<br></p>

<p>
The triplet $(a, b, c)$ is called a <dfn>necklace triplet</dfn> if you can place $k \geq 3$ distinct circles $C_1, C_2, \dots, C_k$ such that:
</p><ul><li>$C_i$ has no common interior points with any $C_j$ for $1 \leq i, j \leq k$ and $i \neq j$,
</li><li>$C_i$ is tangent to both $C_{in}$ and $C_{out}$ for $1 \leq i \leq k$,
</li><li>$C_i$ is tangent to $C_{i+1}$ for $1 \leq i \lt k$, and
</li><li>$C_k$ is tangent to $C_1$.
</li></ul><p>
For example, $(5, 5, 5)$ and $(4, 3, 21)$ are necklace triplets, while it can be shown that $(2, 2, 5)$ is not.
</p>
<p align="center"><img src="https://projecteuler.net/resources/images/0428_necklace.png?1678992053" class="dark_img" alt="0428_necklace.png"></p>

<p>
Let $T(n)$ be the number of necklace triplets $(a, b, c)$ such that $a$, $b$ and $c$ are positive integers, and $b \leq n$.
For example, $T(1) = 9$, $T(20) = 732$ and $T(3000) = 438106$.
</p>
<p>
Find $T(1\,000\,000\,000)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
