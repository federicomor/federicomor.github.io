+++
title = "P285"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_284/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_286/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Pythagorean Odds</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd April 2010, 05:00 am; Solved by 1348;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=285">Problem 285</a></h3></div>
<div class="problem_content" role="problem">
<p>Albert chooses a positive integer $k$, then two real numbers $a, b$ are randomly chosen in the interval $[0,1]$ with uniform distribution.<br>
The square root of the sum $(k \cdot a + 1)^2 + (k \cdot b + 1)^2$ is then computed and rounded to the nearest integer. If the result is equal to $k$, he scores $k$ points; otherwise he scores nothing.</p>

<p>For example, if $k = 6$, $a = 0.2$ and $b = 0.85$, then $(k \cdot a + 1)^2 + (k \cdot b + 1)^2 = 42.05$.<br>
The square root of $42.05$ is $6.484\cdots$ and when rounded to the nearest integer, it becomes $6$.<br>
This is equal to $k$, so he scores $6$ points.</p>

<p>It can be shown that if he plays $10$ turns with $k = 1, k = 2, \dots, k = 10$, the expected value of his total score, rounded to five decimal places, is $10.20914$.</p>

<p>If he plays $10^5$ turns with $k = 1, k = 2, k = 3, \dots, k = 10^5$, what is the expected value of his total score, rounded to five decimal places?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
