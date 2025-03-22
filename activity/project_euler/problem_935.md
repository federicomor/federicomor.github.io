+++
title = "P935"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_934/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_936/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Rolling Square</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 9th March 2025, 01:00 am; Solved by 56</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=935">Problem 935</a></h3></div>
<div class="problem_content" role="problem">
<p>
A square of side length $b&lt;1$ is rolling around the inside of a larger square of side length $1$, always touching the larger square but without sliding.<br>
Initially the two squares share a common corner. At each step, the small square rotates clockwise about a corner that touches the large square, until another of its corners touches the large square. Here is an illustration of the first three steps for $b = \frac5{13}$.</p>
<center><img src="https://projecteuler.net/resources/images/0935_rolling.png?1738619705" alt="0935_rolling.png"></center>
<p>
For some values of $b$, the small square may return to its initial position after several steps. For example, when $b = \frac12$, this happens in $4$ steps; and for $b = \frac5{13}$ it happens in $24$ steps.</p>

<p>
Let $F(N)$ be the number of different values of $b$ for which the small square first returns to its initial position within at most $N$ steps. For example, $F(6) = 4$, with the corresponding $b$ values:
$$\frac12,\quad 2 - \sqrt 2,\quad 2 + \sqrt 2 - \sqrt{2 + 4\sqrt2},\quad  8 - 5\sqrt2 + 4\sqrt3 - 3\sqrt6,$$
the first three in $4$ steps and the last one in $6$ steps. Note that it does not matter whether the small square returns to its original <b>orientation</b>.<br>
Also $F(100) = 805$.</p>

<p>
Find $F(10^8)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

\literate{/_literate/script.jl}
{{ addcomments }}
