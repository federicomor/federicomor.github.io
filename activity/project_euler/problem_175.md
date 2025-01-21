+++
title = "Fractions and Sum of Powers of Two"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_174/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_176/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fractions and Sum of Powers of Two</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 28th December 2007, 01:00 pm; Solved by 2004;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=175">Problem 175</a></h3></div>
<div class="problem_content" role="problem">
<p>Define $f(0)=1$ and $f(n)$ to be the number of ways to write $n$ as a sum of powers of $2$ where no power occurs more than twice.</p>

<p>
For example, $f(10)=5$ since there are five different ways to express $10$:<br>$10 = 8+2 = 8+1+1 = 4+4+2 = 4+2+2+1+1 = 4+4+1+1.$</p>

<p>
It can be shown that for every fraction $p / q$ ($p \gt 0$, $q \gt 0$) there exists at least one integer $n$ such that $f(n)/f(n-1)=p/q$.</p>

<p>
For instance, the smallest $n$ for which $f(n)/f(n-1)=13/17$ is $241$.<br>
The binary expansion of $241$ is $11110001$.<br>
Reading this binary number from the most significant bit to the least significant bit there are $4$ one's, $3$ zeroes and $1$ one. We shall call the string $4,3,1$ the <dfn>Shortened Binary Expansion</dfn> of $241$.</p>

<p>
Find the Shortened Binary Expansion of the smallest $n$ for which $f(n)/f(n-1)=123456789/987654321$.</p>

<p>
Give your answer as comma separated integers, without any whitespaces.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
