+++
title = "Totient Chains"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_213/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_215/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Totient Chains</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 25th October 2008, 02:00 pm; Solved by 5683;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=214">Problem 214</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $\phi$ be Euler's totient function, i.e. for a natural number $n$,
$\phi(n)$ is the number of $k$, $1 \le k \le n$, for which $\gcd(k, n) = 1$.</p>

<p>By iterating $\phi$, each positive integer generates a decreasing chain of numbers ending in $1$.<br>
E.g. if we start with $5$ the sequence $5,4,2,1$ is generated.<br>
Here is a listing of all chains with length $4$:</p>

\begin{align}
5,4,2,1&amp;\\
7,6,2,1&amp;\\
8,4,2,1&amp;\\
9,6,2,1&amp;\\
10,4,2,1&amp;\\
12,4,2,1&amp;\\
14,6,2,1&amp;\\
18,6,2,1
\end{align}

<p>Only two of these chains start with a prime, their sum is $12$.</p>

<p>What is the sum of all primes less than $40000000$ which generate a chain of length $25$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
