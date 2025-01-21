+++
title = "Sums of Digit Factorials"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_253/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_255/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sums of Digit Factorials</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 4th September 2009, 05:00 pm; Solved by 1074;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=254">Problem 254</a></h3></div>
<div class="problem_content" role="problem">
<p>Define $f(n)$ as the sum of the factorials of the digits of $n$. For example, $f(342) = 3! + 4! + 2! = 32$.</p>

<p>Define $sf(n)$ as the sum of the digits of $f(n)$. So $sf(342) = 3 + 2 = 5$.</p>

<p>Define $g(i)$ to be the smallest positive integer $n$ such that $sf(n) = i$. Though $sf(342)$ is $5$, $sf(25)$ is also $5$, and it can be verified that $g(5)$ is $25$.</p>

<p>Define $sg(i)$ as the sum of the digits of $g(i)$. So $sg(5) = 2 + 5 = 7$.</p>

<p>Further, it can be verified that $g(20)$ is $267$ and $\sum sg(i)$ for $1 \le i \le 20$ is $156$.</p>

<p>What is $\sum sg(i)$ for $1 \le i \le 150$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
