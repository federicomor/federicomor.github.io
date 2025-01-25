+++
title = "P422"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_421/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_423/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sequence of Points on a Hyperbola</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 7th April 2013, 07:00 am; Solved by 309;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=422">Problem 422</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $H$ be the hyperbola defined by the equation $12x^2 + 7xy - 12y^2 = 625$.</p>

<p>Next, define $X$ as the point $(7, 1)$. It can be seen that $X$ is in $H$.</p>

<p>Now we define a sequence of points in $H$, $\{P_i: i \geq 1\}$, as:
</p><ul><li> $P_1 = (13, 61/4)$.
</li><li> $P_2 = (-43/6, -4)$.
</li><li> For $i \gt 2$, $P_i$ is the unique point in $H$ that is different from $P_{i-1}$ and such that line $P_iP_{i-1}$ is parallel to line $P_{i-2}X$. It can be shown that $P_i$ is well-defined, and that its coordinates are always rational.
</li></ul>
<div class="center"><img src="https://projecteuler.net/resources/images/0422_hyperbola.gif?1678992057" class="dark_img" alt="0422_hyperbola.gif"></div>
<p>You are given that $P_3 = (-19/2, -229/24)$, $P_4 = (1267/144, -37/12)$ and $P_7 = (17194218091/143327232, 274748766781/1719926784)$.</p>

<p>Find $P_n$ for $n = 11^{14}$ in the following format:<br>If $P_n = (a/b, c/d)$ where the fractions are in lowest terms and the denominators are positive, then the answer is $(a + b + c + d) \bmod 1\,000\,000\,007$.</p>

<p>For $n = 7$, the answer would have been: $806236837$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
