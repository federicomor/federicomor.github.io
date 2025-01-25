+++
title = "P782"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_781/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_783/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Distinct Rows and Columns</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 22nd January 2022, 10:00 pm; Solved by 160;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=782">Problem 782</a></h3></div>
<div class="problem_content" role="problem">
<p>The <dfn>complexity</dfn> of an $n\times n$ binary matrix is the number of distinct rows and columns.</p>
<p>
For example, consider the $3\times 3$ matrices
$$		\mathbf{A} = \begin{pmatrix} 1&amp;0&amp;1\\0&amp;0&amp;0\\1&amp;0&amp;1\end{pmatrix}	\quad
		\mathbf{B} = \begin{pmatrix} 0&amp;0&amp;0\\0&amp;0&amp;0\\1&amp;1&amp;1\end{pmatrix}	$$
$\mathbf{A}$ has complexity $2$ because the set of rows and columns is $\{000,101\}$.
$\mathbf{B}$ has complexity $3$ because the set of rows and columns is $\{000,001,111\}$.</p>
<p>
For $0 \le k \le n^2$, let $c(n, k)$ be the <b>minimum</b> complexity of an $n\times n$ binary matrix with exactly $k$ ones.</p>
<p>
Let
$$C(n) = \sum_{k=0}^{n^2} c(n, k)$$
For example, $C(2) = c(2, 0) + c(2, 1) + c(2, 2) + c(2, 3) + c(2, 4) = 1 + 2 + 2 + 2 + 1 = 8$.<br>
You are given $C(5) = 64$, $C(10) = 274$ and $C(20) = 1150$.</p>
<p>
Find $C(10^4)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
