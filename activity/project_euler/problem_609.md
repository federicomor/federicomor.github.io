+++
title = "P609"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_608/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_610/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>$\pi$ Sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 9th September 2017, 04:00 pm; Solved by 1023;<br>Difficulty rating: 20%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=609">Problem 609</a></h3></div>
<div class="problem_content" role="problem">
<p>
For every $n \ge 1$ the <strong>prime-counting</strong> function $\pi(n)$ is equal to the number of primes
not exceeding $n$.<br>
E.g. $\pi(6)=3$ and $\pi(100)=25$.
</p>
<p>
We say that a sequence of integers $u  = (u_0,\cdots,u_m)$ is a <dfn>$\pi$ sequence</dfn> if 
</p><ul>
<li> $u_n \ge 1$ for every $n$
</li><li> $u_{n+1}= \pi(u_n)$
</li><li> $u$ has two or more elements
</li></ul>
<p>
For $u_0=10$ there are three distinct $\pi$ sequences: $(10,4)$, $(10,4,2)$ and $(10,4,2,1)$.
</p>
<p>
Let  $c(u)$ be the number of elements of $u$ that are not prime.<br>
Let $p(n,k)$ be the number of $\pi$ sequences $u$  for which $u_0\le n$ and $c(u)=k$.<br>
Let $P(n)$ be the product of all $p(n,k)$ that are larger than $0$.<br>
You are given: $P(10)=3 \times 8 \times 9 \times 3=648$ and $P(100)=31038676032$.
</p>
<p>
Find $P(10^8)$. Give your answer modulo $1000000007$. 
</p>



</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
