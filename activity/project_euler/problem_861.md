+++
title = "P861"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_860/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_862/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Products of Bi-Unitary Divisors</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 28th October 2023, 02:00 pm; Solved by 209;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=861">Problem 861</a></h3></div>
<div class="problem_content" role="problem">
<p>A <i>unitary divisor</i> of a positive integer $n$ is a divisor $d$ of $n$ such that $\gcd\left(d,\frac{n}{d}\right)=1$.</p>

<p>A <i>bi-unitary divisor</i> of $n$ is a divisor $d$ for which $1$ is the only unitary divisor of $d$ that is also a unitary divisor of $\frac{n}{d}$.</p>

<p>For example, $2$ is a bi-unitary divisor of $8$, because the unitary divisors of $2$ are $\{1,2\}$, and the unitary divisors of $8/2$ are $\{1,4\}$, with $1$ being the only unitary divisor in common.</p>

<p>The bi-unitary divisors of $240$ are $\{1,2,3,5,6,8,10,15,16,24,30,40,48,80,120,240\}$.</p>

<p>Let $P(n)$ be the product of all bi-unitary divisors of $n$. Define $Q_k(N)$ as the number of positive integers $1 \lt n \leq N$ such that $P(n)=n^k$. For example, $Q_2\left(10^2\right)=51$ and $Q_6\left(10^6\right)=6189$.</p>

<p>Find $\sum_{k=2}^{10}Q_k\left(10^{12}\right)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
