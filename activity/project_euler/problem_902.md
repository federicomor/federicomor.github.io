+++
title = "P902"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_901/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_903/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Permutation Powers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 28th July 2024, 11:00 am; Solved by 161;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=902">Problem 902</a></h3></div>
<div class="problem_content" role="problem">
<p>A permutation $\pi$ of $\{1, \dots, n\}$ can be represented in <b>one-line notation</b> as $\pi(1),\ldots,\pi(n) $. If all $n!$ permutations are written in lexicographic order then $\textrm{rank}(\pi)$ is the position of $\pi$ in this 1-based list.</p>

<p>For example, $\text{rank}(2,1,3) = 3$ because the six permutations of $\{1, 2, 3\}$ in lexicographic order are:
$$1, 2, 3\quad 1, 3, 2 \quad 2, 1, 3 \quad 2, 3, 1 \quad 3, 1, 2 \quad 3, 2, 1$$
</p>

<p>For a positive integer $m$, we define the following permutation of $\{1, \dots, n\}$ with $n = \frac{m(m+1)}2$:
$$
\begin{align}
\sigma(i) &amp;= \begin{cases} \frac{k(k-1)}2 + 1 &amp; \textrm{if } i = \frac{k(k + 1)}2\textrm{ for }k\in\{1, \dots, m\};\\i + 1 &amp; \textrm{otherwise};\end{cases}\\
\tau(i) &amp;= ((10^9 + 7)i \bmod n) + 1\\
\pi(i) &amp;= \tau^{-1}(\sigma(\tau(i)))
\end{align}
$$
where $\tau^{-1}$ is the inverse permutation of $\tau$.
</p>

<p>Define $\displaystyle P(m) = \sum_{k=1}^{m!} \text{rank}(\pi^k)$, where $\pi^k$ is the permutation arising from applying $\pi$ $k$ times.<br>
For example, $P(2) = 4$, $P(3) = 780$ and $P(4) = 38810300$.</p>

<p>
Find $P(100)$. Give your answer modulo  $(10^9 + 7)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
