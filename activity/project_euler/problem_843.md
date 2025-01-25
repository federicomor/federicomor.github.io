+++
title = "P843"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_842/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_844/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Periodic Circles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 14th May 2023, 11:00 am; Solved by 133;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=843">Problem 843</a></h3></div>
<div class="problem_content" role="problem">
<p>
This problem involves an iterative procedure that begins with a circle of $n\ge 3$ integers. At each step every number is simultaneously replaced with the absolute difference of its two neighbours.</p>

<p>
For any initial values, the procedure eventually becomes periodic.</p>

<p>
Let $S(N)$ be the sum of all possible periods for $3\le n \leq N$. For example, $S(6) = 6$, because the possible periods for $3\le n \leq 6$ are $1, 2, 3$. Specifically, $n=3$ and $n=4$ can each have period $1$ only, while $n=5$ can have period $1$ or $3$, and $n=6$ can have period $1$ or $2$.</p>

<p>
You are also given $S(30) = 20381$.</p>

<p>
Find $S(100)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
