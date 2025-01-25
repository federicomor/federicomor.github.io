+++
title = "P464"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_463/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_465/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Möbius Function and Intervals</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 23rd March 2014, 01:00 am; Solved by 356;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=464">Problem 464</a></h3></div>
<div class="problem_content" role="problem">
<p>
The <strong>Möbius function</strong>, denoted $\mu(n)$, is defined as:
</p><ul><li>$\mu(n) = (-1)^{\omega(n)}$ if $n$ is squarefree (where $\omega(n)$ is the number of distinct prime factors of $n$)</li>
<li>$\mu(n) = 0$ if $n$ is not squarefree.</li>
</ul><p>
Let $P(a, b)$ be the number of integers $n$ in the interval $[a, b]$ such that $\mu(n) = 1$.<br>
Let $N(a, b)$ be the number of integers $n$ in the interval $[a, b]$ such that $\mu(n) = -1$.<br>
For example, $P(2,10) = 2$ and $N(2,10) = 4$.
</p>

<p>
Let $C(n)$ be the number of integer pairs $(a, b)$ such that:
</p><ul><li> $1\le a \le b \le n$,</li>
<li> $99 \cdot N(a, b) \le 100 \cdot P(a, b)$, and</li>
<li> $99 \cdot P(a, b) \le 100 \cdot N(a, b)$.</li>
</ul><p>
For example, $C(10) = 13$, $C(500) = 16676$ and $C(10\,000) = 20155319$.
</p>

<p>
Find $C(20\,000\,000)$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
