+++
title = "P405"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_404/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_406/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>A Rectangular Tiling</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 9th December 2012, 04:00 am; Solved by 684;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=405">Problem 405</a></h3></div>
<div class="problem_content" role="problem">
<p>
We wish to tile a rectangle whose length is twice its width.<br>
Let $T(0)$ be the tiling consisting of a single rectangle.<br>
For $n \gt 0$, let $T(n)$ be obtained from $T(n-1)$ by replacing all tiles in the following manner:
</p>

<div align="center">
<img src="https://projecteuler.net/resources/images/0405_tile1.png?1678992053" alt="0405_tile1.png"></div>

<p>
The following animation demonstrates the tilings $T(n)$ for $n$ from $0$ to $5$:
</p>

<div align="center">
<img src="https://projecteuler.net/resources/images/0405_tile2.gif?1678992056" alt="0405_tile2.gif"></div>

<p>
Let $f(n)$ be the number of points where four tiles meet in $T(n)$.<br>
For example, $f(1) = 0$, $f(4) = 82$ and $f(10^9) \bmod 17^7 = 126897180$.
</p>

<p>
Find $f(10^k)$ for $k = 10^{18}$, give your answer modulo $17^7$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
