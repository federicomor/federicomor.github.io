+++
title = "Cutting Squares"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_269/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_271/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cutting Squares</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 26th December 2009, 01:00 am; Solved by 705;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=270">Problem 270</a></h3></div>
<div class="problem_content" role="problem">
<p>A square piece of paper with integer dimensions $N \times N$ is placed with a corner at the origin and two of its sides along the $x$- and $y$-axes. Then, we cut it up respecting the following rules:
</p><ul><li>We only make straight cuts between two points lying on different sides of the square, and having integer coordinates.</li>
<li>Two cuts cannot cross, but several cuts can meet at the same border point.</li>
<li>Proceed until no more legal cuts can be made.</li>
</ul><p>Counting any reflections or rotations as distinct, we call $C(N)$ the number of ways to cut an $N \times N$ square. For example, $C(1) = 2$ and $C(2) = 30$ (shown below).</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0270_CutSquare.gif?1678992056" alt="0270_CutSquare.gif"></div>

<p>What is $C(30) \bmod 10^8$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
