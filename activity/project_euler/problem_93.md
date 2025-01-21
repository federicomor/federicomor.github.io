+++
title = "Arithmetic Expressions"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_92/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_94/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Arithmetic Expressions</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 15th April 2005, 06:00 pm; Solved by 13278;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=93">Problem 93</a></h3></div>
<div class="problem_content" role="problem">
<p>By using each of the digits from the set, $\{1, 2, 3, 4\}$, exactly once, and making use of the four arithmetic operations ($+, -, \times, /$) and brackets/parentheses, it is possible to form different positive integer targets.</p>
<p>For example,</p>
\begin{align}
8 &amp;= (4 \times (1 + 3)) / 2\\
14 &amp;= 4 \times (3 + 1 / 2)\\
19 &amp;= 4 \times (2 + 3) - 1\\
36 &amp;= 3 \times 4 \times (2 + 1)
\end{align}
<p>Note that concatenations of the digits, like $12 + 34$, are not allowed.</p>
<p>Using the set, $\{1, 2, 3, 4\}$, it is possible to obtain thirty-one different target numbers of which $36$ is the maximum, and each of the numbers $1$ to $28$ can be obtained before encountering the first non-expressible number.</p>
<p>Find the set of four distinct digits, $a \lt b \lt c \lt d$, for which the longest set of consecutive positive integers, $1$ to $n$, can be obtained, giving your answer as a string: <i>abcd</i>.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
