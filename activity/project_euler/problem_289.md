+++
title = "Eulerian Cycles"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_288/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_290/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</p>
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
<h2>Eulerian Cycles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 23rd April 2010, 01:00 pm; Solved by 548;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=289">Problem 289</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $C(x, y)$ be a circle passing through the points $(x, y)$, $(x, y + 1)$, $(x + 1, y)$ and $(x + 1, y + 1)$.</p>

<p>For positive integers $m$ and $n$, let $E(m, n)$ be a configuration which consists of the $m \cdot n$ circles:<br>
$\{ C(x, y): 0 \le x \lt m, 0 \le y \lt n, x \text{ and } y \text{ are integers} \}$.</p>

<p>An Eulerian cycle on $E(m, n)$ is a closed path that passes through each arc exactly once.<br>
Many such paths are possible on $E(m, n)$, but we are only interested in those which are not self-crossing: a non-crossing path just touches itself at lattice points, but it never crosses itself.</p>

<p>The image below shows $E(3,3)$ and an example of an Eulerian non-crossing path.<br></p><div align="center"><img src="https://projecteuler.net/resources/images/0289_euler.gif?1678992056" alt="0289_euler.gif"></div>

<p>Let $L(m, n)$ be the number of Eulerian non-crossing paths on $E(m, n)$.<br>
For example, $L(1,2) = 2$, $L(2,2) = 37$ and $L(3,3) = 104290$.</p>

<p>Find $L(6,10) \bmod 10^{10}$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
