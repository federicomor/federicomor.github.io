+++
title = "P729"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_728/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_730/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Range of Periodic Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 11th October 2020, 05:00 am; Solved by 218;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=729">Problem 729</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the sequence of real numbers $a_n$ defined by the starting value $a_0$ and the recurrence
$\displaystyle a_{n+1}=a_n-\frac 1 {a_n}$ for any $n  \ge 0$.</p>
<p>
For some starting values $a_0$ the sequence will be periodic. For example, $a_0=\sqrt{\frac 1 2}$ yields the sequence:
$\sqrt{\frac 1 2},-\sqrt{\frac 1 2},\sqrt{\frac 1 2}, \dots$</p>
<p>
We are interested in the range of such a periodic sequence which is the difference between the maximum and minimum of the sequence. For example, the range of the sequence above would be $\sqrt{\frac 1 2}-(-\sqrt{\frac 1 2})=\sqrt{ 2}$.</p>
<p>
Let $S(P)$ be the sum of the ranges of all such periodic sequences with a period not exceeding $P$.<br>
For example, $S(2)=2\sqrt{2} \approx 2.8284$, being the sum of the ranges of the two sequences starting with $a_0=\sqrt{\frac 1 2}$ and $a_0=-\sqrt{\frac 1 2}$. <br>
You are given $S(3) \approx 14.6461$ and $S(5) \approx 124.1056$.
</p><p>
Find $S(25)$, rounded to $4$ decimal places.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
