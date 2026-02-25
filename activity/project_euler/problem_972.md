+++
title = "P972"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_971/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_973/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Hyperbolic Plane</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 30th November 2025, 10:00 am; Solved by 183;<br>Difficulty level: 17</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=972">Problem 972</a></h3></div>
<div class="problem_content" role="problem">
<p>
The <b>hyperbolic plane</b> can be represented by the <b>open unit disc</b>, namely the set of points $(x, y)$ in $\Bbb R^2$ with $x^2 + y^2 &lt; 1$.</p>

<p>
A <b>geodesic</b> is defined as either a diameter of the open unit disc or a circular arc contained within the disc that is orthogonal to the boundary of the disc.<br>
The following diagram shows the hyperbolic plane with two geodesics; one is a diameter and the other is a circular arc.</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0972_hyperbolic.png?1762877126" alt="0972_hyperbolic.png"></div>

<p>
Let $\mathcal V(N)$ be the set of points $(x, y)$ such that $x^2 + y^2 \lt 1$ and $x, y$ are both rational numbers with denominator not exceeding $N$.</p>

<p>
Let $T(N)$ be the number of ordered triples $(P, Q, R)$ such that $P, Q, R$ are three different points in $\mathcal V(N)$ and there is a hyperbolic line passing through all of them.<br>
For example, $T(2) = 24$ and $T(3) = 1296$.</p>

<p>
Find $T(12)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
