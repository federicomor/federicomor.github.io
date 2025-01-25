+++
title = "P415"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_414/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_416/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Titanic Sets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 17th February 2013, 10:00 am; Solved by 351;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=415">Problem 415</a></h3></div>
<div class="problem_content" role="problem">
<p>A set of lattice points $S$ is called a <dfn>titanic set</dfn> if there exists a line passing through exactly two points in $S$.</p>

<p>An example of a titanic set is $S = \{(0, 0), (0, 1), (0, 2), (1, 1), (2, 0), (1, 0)\}$, where the line passing through $(0, 1)$ and $(2, 0)$ does not pass through any other point in $S$.</p>

<p>On the other hand, the set $\{(0, 0), (1, 1), (2, 2), (4, 4)\}$ is not a titanic set since the line passing through any two points in the set also passes through the other two.</p>

<p>For any positive integer $N$, let $T(N)$ be the number of titanic sets $S$ whose every point $(x, y)$ satisfies $0 \leq x, y \leq N$.
It can be verified that $T(1) = 11$, $T(2) = 494$, $T(4) = 33554178$, $T(111) \bmod 10^8 = 13500401$ and $T(10^5) \bmod 10^8 = 63259062$.</p>

<p>Find $T(10^{11})\bmod 10^8$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
