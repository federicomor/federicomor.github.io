+++
title = "P647"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_646/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_648/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Linear Transformations of Polygonal Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 16th December 2018, 07:00 am; Solved by 477;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=647">Problem 647</a></h3></div>
<div class="problem_content" role="problem">
<p>
It is possible to find positive integers $A$ and $B$ such that given any triangular number, $T_n$, then $AT_n +B$ is always a triangular number. We define $F_3(N)$ to be the sum of $(A+B)$ over all such possible pairs $(A,B)$ with $\max(A,B)\le N$. For example $F_3(100) = 184$.
</p>
<p>
Polygonal numbers are generalisations of triangular numbers. Polygonal numbers with parameter $k$ we call $k$-gonal numbers. The formula for the $n$th $k$-gonal number is $\frac 12n\big(n(k-2)+4-k\big)$ where $n \ge 1$. For example when $k = 3$ we get $\frac 12n(n+1)$ the formula for triangular numbers.
</p>
<p>
The statement above is true for pentagonal, heptagonal and in fact any $k$-gonal number with $k$ odd. For example when $k=5$ we get the pentagonal numbers and we can find positive integers $A$ and $B$ such that given any pentagonal number, $P_n$, then $AP_n+B$ is always a pentagonal number. We define $F_5(N)$ to be the sum of $(A+B)$ over all such possible pairs $(A,B)$ with $\max(A,B)\le N$.
</p>
<p>
Similarly we define $F_k(N)$ for odd $k$. You are given $\sum_{k} F_k(10^3) = 14993$ where the sum is over all odd $k = 3,5,7,\ldots$.
</p>
<p>
Find $\sum_{k} F_k(10^{12})$ where the sum is over all odd $k = 3,5,7,\ldots$
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
