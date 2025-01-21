+++
title = "A Lagged Fibonacci Sequence"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_257/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_259/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>A Lagged Fibonacci Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd October 2009, 09:00 am; Solved by 1780;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=258">Problem 258</a></h3></div>
<div class="problem_content" role="problem">
<p>A sequence is defined as:</p>
<p>
</p><ul><li>$g_k = 1$, for $0 \le k \le 1999$</li>
<li>$g_k = g_{k-2000} + g_{k - 1999}$, for $k \ge 2000$.
</li></ul><p>Find $g_k \bmod 20092010$ for $k = 10^{18}$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
