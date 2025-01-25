+++
title = "P921"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_920/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_922/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Golden Recurrence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th December 2024, 01:00 pm; Solved by 159</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=921">Problem 921</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the following recurrence relation:
\begin{align}
a_0 &amp;= \frac{\sqrt 5 + 1}2\\
a_{n+1} &amp;= \dfrac{a_n(a_n^4 + 10a_n^2 + 5)}{5a_n^4 + 10a_n^2 + 1}
\end{align}</p>

<p>
Note that $a_0$ is the <b>golden ratio</b>.</p>

<p>
$a_n$ can always be written in the form $\dfrac{p_n\sqrt{5}+1}{q_n}$, where $p_n$ and $q_n$ are positive integers.</p>

<p>
Let $s(n)=p_n^5+q_n^5$. So, $s(0)=1^5+2^5=33$.</p>

<p>
The <b>Fibonacci sequence</b> is defined as: $F_1=1$, $F_2=1$, $F_n=F_{n-1}+F_{n-2}$ for $n &gt; 2$.</p>

<p>
Define $\displaystyle S(m)=\sum_{i=2}^{m}s(F_i)$.</p>

<p>
Find $S(1618034)$. Submit your answer modulo $398874989$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
