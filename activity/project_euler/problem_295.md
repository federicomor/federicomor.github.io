+++
title = "P295"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_294/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_296/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Lenticular Holes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 5th June 2010, 01:00 pm; Solved by 506;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=295">Problem 295</a></h3></div>
<div class="problem_content" role="problem">
<p>We call the convex area enclosed by two circles a <dfn>lenticular hole</dfn> if:
</p><ul><li>The centres of both circles are on lattice points.</li>
<li>The two circles intersect at two distinct lattice points.</li>
<li>The interior of the convex area enclosed by both circles does not contain any lattice points.
</li>
</ul><p>Consider the circles:<br>
$C_0$: $x^2 + y^2 = 25$<br>
$C_1$: $(x + 4)^2 + (y - 4)^2 = 1$<br>
$C_2$: $(x - 12)^2 + (y - 4)^2 = 65$
</p>
<p>
The circles $C_0$, $C_1$ and $C_2$ are drawn in the picture below.</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0295_lenticular.gif?1678992056" alt="0295_lenticular.gif"></div>
<p>
$C_0$ and $C_1$ form a lenticular hole, as well as $C_0$ and $C_2$.</p>
<p>
We call an ordered pair of positive real numbers $(r_1, r_2)$ a <dfn>lenticular pair</dfn> if there exist two circles with radii $r_1$ and $r_2$ that form a lenticular hole.
We can verify that $(1, 5)$ and $(5, \sqrt{65})$ are the lenticular pairs of the example above.</p>
<p>
Let $L(N)$ be the number of <b>distinct</b> lenticular pairs $(r_1, r_2)$ for which $0 \lt r_1 \le r_2 \le N$.<br>
We can verify that $L(10) = 30$ and $L(100) = 3442$.</p>
<p>
Find $L(100\,000)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
