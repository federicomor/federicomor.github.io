+++
title = "P433"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_432/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_434/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Steps in Euclid's Algorithm</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 22nd June 2013, 04:00 pm; Solved by 494;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=433">Problem 433</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $E(x_0, y_0)$ be the number of steps it takes to determine the greatest common divisor of $x_0$ and $y_0$ with <strong>Euclid's algorithm</strong>. More formally:<br>$x_1 = y_0$, $y_1 = x_0 \bmod y_0$<br>$x_n = y_{n-1}$, $y_n = x_{n-1} \bmod y_{n-1}$<br>
$E(x_0, y_0)$ is the smallest $n$ such that $y_n = 0$.
</p>
<p>
We have $E(1,1) = 1$, $E(10,6) = 3$ and $E(6,10) = 4$.
</p>
<p>
Define $S(N)$ as the sum of $E(x,y)$ for $1 \leq x,y \leq N$.<br>
We have $S(1) = 1$, $S(10) = 221$ and $S(100) = 39826$.
</p>
<p>
Find $S(5\cdot 10^6)$.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
