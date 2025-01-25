+++
title = "P570"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_569/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_571/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Snowflakes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 17th September 2016, 10:00 pm; Solved by 294;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=570">Problem 570</a></h3></div>
<div class="problem_content" role="problem">
<p>A snowflake of order $n$ is formed by overlaying an equilateral triangle (rotated by $180$ degrees) onto each equilateral triangle of the same size in a snowflake of order $n-1$. A snowflake of order $1$ is a single equilateral triangle.</p>



<div> <img src="https://projecteuler.net/resources/images/0570-snowflakes.png?1678992053" alt="0570-snowflakes.png"> </div>


<p>Some areas of the snowflake are overlaid repeatedly. In the above picture, blue represents the areas that are one layer thick, red two layers thick, yellow three layers thick, and so on.</p>

<p>For an order $n$ snowflake, let $A(n)$ be the number of triangles that are one layer thick, and let $B(n)$ be the number of triangles that are three layers thick. Define $G(n) = \gcd(A(n), B(n))$.</p>

<p>E.g. $A(3) = 30$, $B(3) = 6$, $G(3)=6$.<br>
$A(11) = 3027630$, $B(11) = 19862070$, $G(11) = 30$.</p>

<p>Further, $G(500) = 186$ and $\sum_{n=3}^{500}G(n)=5124$.</p>

<p>Find $\displaystyle \sum_{n=3}^{10^7}G(n)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
