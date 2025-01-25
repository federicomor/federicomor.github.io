+++
title = "P537"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_536/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_538/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Counting Tuples</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 5th December 2015, 10:00 pm; Solved by 701;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=537">Problem 537</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $\pi(x)$ be the prime counting function, i.e. the number of prime numbers less than or equal to $x$.<br>
For example,$\pi(1)=0$, $\pi(2)=1$, $\pi(100)=25$.
</p>
<p>
Let $T(n, k)$ be the number of $k$-tuples $(x_1, \dots, x_k)$ which satisfy:<br>
1. every $x_i$ is a positive integer;<br>
2. $\displaystyle \sum_{i=1}^k \pi(x_i)=n$
</p>
<p>
For example $T(3,3)=19$.<br>
The $19$ tuples are $(1,1,5)$, $(1,5,1)$, $(5,1,1)$, $(1,1,6)$, $(1,6,1)$, $(6,1,1)$, $(1,2,3)$, $(1,3,2)$, $(2,1,3)$, $(2,3,1)$, $(3,1,2)$, $(3,2,1)$, $(1,2,4)$, $(1,4,2)$, $(2,1,4)$, $(2,4,1)$, $(4,1,2)$, $(4,2,1)$, $(2,2,2)$.
</p>
<p>
You are given $T(10, 10) = 869\,985$ and $T(10^3,10^3) \equiv 578\,270\,566 \pmod{1\,004\,535\,809}$.
</p><p>
Find $T(20\,000, 20\,000) \pmod{1\,004\,535\,809}$.
</p>



</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
