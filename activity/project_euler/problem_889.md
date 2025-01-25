+++
title = "P889"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_888/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_890/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Rational Blancmange</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 4th May 2024, 11:00 pm; Solved by 121;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=889">Problem 889</a></h3></div>
<div class="problem_content" role="problem">
<p>
Recall the blancmange function from <a href="https://projecteuler.net/problem=226">Problem 226</a>: $T(x) = \sum\limits_{n = 0}^\infty\dfrac{s(2^nx)}{2^n}$, where $s(x)$ is the distance from $x$ to the nearest integer.</p>

<p>
For positive integers $k, t, r$, we write $$F(k, t, r) = (2^{2k} - 1)T\left(\frac{(2^t + 1)^r}{2^k + 1}\right).$$ It can be shown that $F(k, t, r)$ is always an integer.<br>
For example, $F(3, 1, 1) = 42$, $F(13, 3, 3) = 23093880$ and $F(103, 13, 6) \equiv 878922518\pmod {1\,000\,062\,031}$.</p>

<p>
Find $F(10^{18} + 31, 10^{14} + 31, 62)$. Give your answer modulo $1\,000\,062\,031$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
