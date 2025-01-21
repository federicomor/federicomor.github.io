+++
title = "Minkowski Sums"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_227/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_229/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Minkowski Sums</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 17th January 2009, 05:00 am; Solved by 1471;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=228">Problem 228</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $S_n$ be the regular $n$-sided polygon – or <dfn>shape</dfn> – whose vertices 

$v_k$ ($k = 1, 2, \dots, n$) have coordinates:</p>
\begin{align}
x_k &amp;= \cos((2k - 1)/n \times 180^\circ)\\
y_k &amp;= \sin((2k - 1)/n \times 180^\circ)
\end{align}

<p>Each $S_n$ is to be interpreted as a filled shape consisting of all points on the perimeter and in the interior.</p>

<p>The <strong>Minkowski sum</strong>, $S + T$, of two shapes $S$ and $T$ is the result of adding every point in $S$ to every point in $T$, where point addition is performed coordinate-wise: $(u, v) + (x, y) = (u + x, v + y)$.</p>

<p>For example, the sum of $S_3$ and $S_4$ is the six-sided shape shown in pink below:</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0228.png?1678992052" class="dark_img" alt="picture showing S_3 + S_4"></div>

<p>How many sides does $S_{1864} + S_{1865} + \cdots + S_{1909}$ have?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
