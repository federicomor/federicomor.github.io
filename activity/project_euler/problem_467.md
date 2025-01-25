+++
title = "P467"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_466/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_468/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Superinteger</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 13th April 2014, 10:00 am; Solved by 486;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=467">Problem 467</a></h3></div>
<div class="problem_content" role="problem">
<p>An integer $s$ is called a <dfn>superinteger</dfn> of another integer $n$ if the digits of $n$ form a <strong class="tooltip">subsequence<span class="tooltiptext">A subsequence is a sequence that can be derived from another sequence by deleting some elements without changing the order of the remaining elements.</span></strong> of the digits of $s$.<br>
For example, $2718281828$ is a superinteger of $18828$, while $314159$ is not a superinteger of $151$.
</p>

<p>Let $p(n)$ be the $n$th prime number, and let $c(n)$ be the $n$th composite number. For example, $p(1) = 2$, $p(10) = 29$, $c(1)$ = 4 and $c(10) = 18$.<br>
$\{p(i) : i \ge 1\} = \{2, 3, 5, 7, 11, 13, 17, 19, 23, 29, \dots\}$<br>
$\{c(i) : i \ge 1\} = \{4, 6, 8, 9, 10, 12, 14, 15, 16, 18, \dots\}$</p>

<p>Let $P^D$ be the sequence of the <strong>digital roots</strong> of $\{p(i)\}$ ($C^D$ is defined similarly for $\{c(i)\}$):<br>
$P^D = \{2, 3, 5, 7, 2, 4, 8, 1, 5, 2, \dots\}$<br>
$C^D = \{4, 6, 8, 9, 1, 3, 5, 6, 7, 9, \dots\}$</p>

<p>Let $P_n$ be the integer formed by concatenating the first $n$ elements of $P^D$ ($C_n$ is defined similarly for $C^D$).<br>
$P_{10} = 2357248152$<br>
$C_{10} = 4689135679$</p>

<p>Let $f(n)$ be the smallest positive integer that is a common superinteger of $P_n$ and $C_n$. <br>For example, $f(10) = 2357246891352679$, and $f(100) \bmod 1\,000\,000\,007 = 771661825$.</p>

<p>Find $f(10\,000) \bmod 1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
