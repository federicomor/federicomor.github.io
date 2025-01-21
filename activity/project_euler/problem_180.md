+++
title = "Golden Triplets"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_179/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_181/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Golden Triplets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 2nd February 2008, 09:00 am; Solved by 1767;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=180">Problem 180</a></h3></div>
<div class="problem_content" role="problem">
<p>For any integer $n$, consider the three functions</p>
\begin{align}
f_{1, n}(x, y, z) &amp;= x^{n + 1} + y^{n + 1} - z^{n + 1}\\
f_{2, n}(x, y, z) &amp;= (xy + yz + zx) \cdot (x^{n - 1} + y^{n - 1} - z^{n - 1})\\
f_{3, n}(x, y, z) &amp;= xyz \cdot (x^{n - 2} + y^{n - 2} - z^{n - 2})
\end{align}

<p>and their combination
$$f_n(x, y, z) = f_{1, n}(x, y, z) + f_{2, n}(x, y, z) - f_{3, n}(x, y, z).$$</p>

<p>We call $(x, y, z)$ a golden triple of order $k$ if $x$, $y$, and $z$ are all rational numbers of the form $a / b$ with $0 \lt a \lt b \le k$ and there is (at least) one integer $n$, so that $f_n(x, y, z) = 0$.</p>
<p>Let $s(x, y, z) = x + y + z$.<br>
Let $t = u / v$ be the sum of all distinct $s(x, y, z)$ for all golden triples $(x, y, z)$ of order $35$.<br> All the $s(x, y, z)$ and $t$ must be in reduced form.</p>
<p>Find $u + v$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
