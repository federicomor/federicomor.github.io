+++
title = "P384"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_383/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_385/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Rudin-Shapiro Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 13th May 2012, 02:00 am; Solved by 360;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=384">Problem 384</a></h3></div>
<div class="problem_content" role="problem">
<p>Define the sequence $a(n)$ as the number of adjacent pairs of ones in the binary expansion of $n$ (possibly overlapping).
<br>E.g.: $a(5) = a(101_2) = 0$, $a(6) = a(110_2) = 1$, $a(7) = a(111_2) = 2$.</p>

<p>Define the sequence $b(n) = (-1)^{a(n)}$.
<br>This sequence is called the <strong>Rudin-Shapiro</strong> sequence.</p>
<p>Also consider the summatory sequence of $b(n)$: $s(n) = \sum \limits_{i = 0}^n b(i)$.</p>

<p>The first couple of values of these sequences are:</p>
<table align="center"><tr>
<td align="center" width="30">$n$</td>
<td align="right" width="30">$0$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$2$</td>
<td align="right" width="30">$3$</td>
<td align="right" width="30">$4$</td>
<td align="right" width="30">$5$</td>
<td align="right" width="30">$6$</td>
<td align="right" width="30">$7$</td>
</tr><tr>
<td align="center" width="30">$a(n)$</td>
<td align="right" width="30">$0$</td>
<td align="right" width="30">$0$</td>
<td align="right" width="30">$0$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$0$</td>
<td align="right" width="30">$0$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$2$</td>
</tr><tr>
<td align="center" width="30">$b(n)$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$-1$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$-1$</td>
<td align="right" width="30">$1$</td>
</tr><tr>
<td align="center" width="30">$s(n)$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$2$</td>
<td align="right" width="30">$3$</td>
<td align="right" width="30">$2$</td>
<td align="right" width="30">$3$</td>
<td align="right" width="30">$4$</td>
<td align="right" width="30">$3$</td>
<td align="right" width="30">$4$</td>
</tr></table>

<p>The sequence $s(n)$ has the remarkable property that all elements are positive and every positive integer $k$ occurs exactly $k$ times.</p>

<p>Define $g(t,c)$, with $1 \le c \le t$, as the index in $s(n)$ for which $t$ occurs for the $c$'th time in $s(n)$.
<br>E.g.: $g(3,3) = 6$, $g(4,2) = 7$ and $g(54321,12345) = 1220847710$.</p>

<p>Let $F(n)$ be the Fibonacci sequence defined by:
<br>$F(0)=F(1)=1$ and
<br>$F(n)=F(n-1)+F(n-2)$ for $n \gt 1$.</p>

<p>Define $GF(t)=g(F(t),F(t-1))$.</p>

<p>Find $\sum GF(t)$ for $2 \le t \le 45$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
