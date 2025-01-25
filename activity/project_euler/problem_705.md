+++
title = "P705"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_704/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_706/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Total Inversion Count of Divided Sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 8th March 2020, 04:00 am; Solved by 479;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=705">Problem 705</a></h3></div>
<div class="problem_content" role="problem">
<p>
The <dfn>inversion count</dfn> of a sequence of digits is the smallest number of adjacent pairs that must be swapped to sort the sequence.<br>
For example, $34214$ has inversion count of $5$:
$34214 \to 32414 \to 23414 \to 23144 \to 21344 \to12344$.
</p>
<p>
If each digit of a sequence is replaced by one of its divisors a <dfn>divided sequence</dfn> is obtained. <br>
For example, the sequence $332$ has $8$ divided sequences: $\{332,331,312,311,132,131,112,111\}$.
</p>
<p>
Define $G(N)$ to be the concatenation of all primes less than $N$, ignoring any zero digit. <br>
For example, $G(20) = 235711131719$.
</p>
<p>
Define $F(N)$ to be the sum of the inversion count for all possible divided sequences from the master sequence $G(N)$. <br>
You are given $F(20) = 3312$ and $F(50) = 338079744$.
</p>
<p>
Find $F(10^8)$. Give your answer modulo $1\,000\,000\,007$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
