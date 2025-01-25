+++
title = "P261"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_260/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_262/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Pivotal Square Sums</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 23rd October 2009, 05:00 pm; Solved by 771;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=261">Problem 261</a></h3></div>
<div class="problem_content" role="problem">
<p>Let us call a positive integer $k$ a <dfn>square-pivot</dfn>, if there is a pair of integers $m \gt 0$ and $n \ge k$, such that the sum of the $(m+1)$ consecutive squares up to $k$ equals the sum of the $m$ consecutive squares from $(n+1)$ on:</p>
$$(k - m)^2 + \cdots + k^2 = (n + 1)^2 + \cdots + (n + m)^2.$$

<p>Some small square-pivots are
</p><ul><li>$\mathbf 4$: $3^2 + \mathbf 4^2 = 5^2$</li>
<li>$\mathbf{21}$: $20^2 + \mathbf{21}^2 = 29^2$</li>
<li>$\mathbf{24}$: $21^2 + 22^2 + 23^2 + \mathbf{24}^2 = 25^2 + 26^2 + 27^2$</li>
<li>$\mathbf{110}$: $108^2 + 109^2 + \mathbf{110}^2 = 133^2 + 134^2$</li></ul><p>Find the sum of all <b>distinct</b> square-pivots $\le 10^{10}$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
