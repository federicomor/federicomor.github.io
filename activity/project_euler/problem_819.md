+++
title = "P819"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_818/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_820/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Iterative Sampling</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd December 2022, 01:00 pm; Solved by 229;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=819">Problem 819</a></h3></div>
<div class="problem_content" role="problem">
<p>Given an $n$-tuple of numbers another $n$-tuple is created where each element of the new $n$-tuple is chosen randomly from the numbers in the previous $n$-tuple. For example, given $(2,2,3)$ the probability that $2$ occurs in the first position in the next 3-tuple is $2/3$. The probability of getting all $2$'s would be $8/27$ while the probability of getting the same 3-tuple (in any order) would be $4/9$.</p>

<p>Let $E(n)$ be the expected number of steps starting with $(1,2,\ldots,n)$ and ending with all numbers being the same.</p>

<p>You are given $E(3) = 27/7$ and $E(5) = 468125/60701 \approx 7.711982$ rounded to 6 digits after the decimal place.</p>

<p>Find $E(10^3)$. Give the answer rounded to 6 digits after the decimal place.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
