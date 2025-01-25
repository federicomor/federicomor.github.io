+++
title = "P834"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_833/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_835/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Add and Divide</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th March 2023, 10:00 am; Solved by 418;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=834">Problem 834</a></h3></div>
<div class="problem_content" role="problem">
<p>
A sequence is created by starting with a positive integer $n$ and incrementing by $(n+m)$ at the $m^{th}$ step. 
If $n=10$, the resulting sequence will be $21,33,46,60,75,91,108,126,\ldots$.</p>

<p>
Let $S(n)$ be the set of indices $m$, for which the $m^{th}$ term in the sequence is divisible by $(n+m)$.<br> 
For example, $S(10)=\{5,8,20,35,80\}$.</p>

<p>
Define $T(n)$ to be the sum of the indices in $S(n)$. For example, $T(10) = 148$ and $T(10^2)=21828$.</p>

<p>
Let $\displaystyle U(N)=\sum_{n=3}^{N}T(n)$. You are given, $U(10^2)=612572$.</p>

<p>
Find $U(1234567)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
