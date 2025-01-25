+++
title = "P411"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_410/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_412/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Uphill Paths</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th January 2013, 10:00 pm; Solved by 738;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=411">Problem 411</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $n$ be a positive integer. Suppose there are stations at the coordinates $(x, y) = (2^i \bmod n, 3^i \bmod n)$ for $0 \leq i \leq 2n$. We will consider stations with the same coordinates as the same station.
</p><p>
We wish to form a path from $(0, 0)$ to $(n, n)$ such that the $x$ and $y$ coordinates never decrease.<br>
Let $S(n)$ be the maximum number of stations such a path can pass through.
</p><p>
For example, if $n = 22$, there are $11$ distinct stations, and a valid path can pass through at most $5$ stations. Therefore, $S(22) = 5$.
The case is illustrated below, with an example of an optimal path:
</p>
<p align="center"><img src="https://projecteuler.net/resources/images/0411_longpath.png?1678992053" alt="0411_longpath.png"></p>
<p>
It can also be verified that $S(123) = 14$ and $S(10000) = 48$.
</p><p>
Find $\sum S(k^5)$ for $1 \leq k \leq 30$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
