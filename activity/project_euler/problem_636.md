+++
title = "P636"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_635/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_637/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Restricted Factorisations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 8th September 2018, 10:00 pm; Solved by 212;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=636">Problem 636</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider writing a natural number as product of powers of natural numbers with given exponents, additionally requiring different base numbers for each power.</p>

<p>For example, $256$ can be written as a product of a square and a fourth power in three ways such that the base numbers are different.<br />
That is, $256=1^2\times 4^4=4^2\times 2^4=16^2\times 1^4$</p>

<p>Though $4^2$ and $2^4$ are both equal, we are concerned only about the base numbers in this problem. Note that permutations are not considered distinct, for example $16^2\times 1^4$ and $1^4 \times 16^2$ are considered to be the same.</p>

<p>Similarly, $10!$ can be written as a product of one natural number, two squares and three cubes in two ways ($10!=42\times5^2\times4^2\times3^3\times2^3\times1^3=21\times5^2\times2^2\times4^3\times3^3\times1^3$) whereas $20!$ can be given the same representation in $41680$ ways.</p>

<p>Let $F(n)$ denote the number of ways in which $n$ can be written as a product of one natural number, two squares, three cubes and four fourth powers.</p>

<p>You are given that $F(25!)=4933$, $F(100!) \bmod 1\,000\,000\,007=693\,952\,493$,<br />
and $F(1\,000!) \bmod 1\,000\,000\,007=6\,364\,496$.</p>

<p>Find $F(1\,000\,000!) \bmod 1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
