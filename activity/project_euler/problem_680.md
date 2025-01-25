+++
title = "P680"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_679/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_681/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Yarra Gnisrever</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 22nd September 2019, 04:00 am; Solved by 210;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=680">Problem 680</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $N$ and $K$ be two positive integers.</p>

<p>$F_n$ is the $n$-th Fibonacci number: $F_1 = F_2 = 1$, $F_n = F_{n - 1} + F_{n - 2}$ for all $n \geq 3$.<br>
Let $s_n = F_{2n - 1} \bmod N$ and let $t_n = F_{2n} \bmod N$.</p>

<p>Start with an array of integers $A = (A[0], \cdots, A[N - 1])$ where initially every $A\text{[}i]$ is equal to $i$.
Now perform $K$ successive operations on $A$, where the $j$-th operation consists of reversing the order of those elements in $A$ with indices between $s_j$ and $t_j$ (both ends inclusive).</p>

<p>Define $R(N,K)$ to be $\sum_{i = 0}^{N - 1}i \times A\text {[}i]$ after $K$ operations.</p>

<p>For example, $R(5, 4) = 27$, as can be seen from the following procedure:</p>

<p>Initial position: $(0, 1, 2, 3, 4)$<br>
Step 1 - Reverse $A[1]$ to $A[1]$: $(0, 1, 2, 3, 4)$<br>
Step 2 - Reverse $A[2]$ to $A[3]$: $(0, 1, 3, 2, 4)$<br>
Step 3 - Reverse $A[0]$ to $A[3]$: $(2, 3, 1, 0, 4)$<br>
Step 4 - Reverse $A[3]$ to $A[1]$: $(2, 0, 1, 3, 4)$<br>
$R(5, 4) = 0 \times 2 + 1 \times 0 + 2 \times 1 + 3 \times 3 + 4 \times 4 = 27$</p>

<p>Also, $R(10^2, 10^2) = 246597$ and $R(10^4, 10^4) = 249275481640$.</p>

<p>Find $R(10^{18}, 10^6)$ giving your answer modulo $10^9$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
