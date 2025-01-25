+++
title = "P425"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_424/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_426/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Prime Connection</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 27th April 2013, 04:00 pm; Solved by 1604;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=425">Problem 425</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two positive numbers $A$ and $B$ are said to be <dfn>connected</dfn> (denoted by "$A \leftrightarrow B$") if one of these conditions holds:<br>
(1) $A$ and $B$ have the same length and differ in exactly one digit; for example, $123 \leftrightarrow 173$.<br>
(2) Adding one digit to the left of $A$ (or $B$) makes $B$ (or $A$); for example, $23 \leftrightarrow 223$ and $123 \leftrightarrow 23$.
</p>
<p>
We call a prime $P$ a <dfn>$2$'s relative</dfn> if there exists a chain of connected primes between $2$ and $P$ and no prime in the chain exceeds $P$.
</p>
<p>
For example, $127$ is a $2$'s relative. One of the possible chains is shown below:<br>
$2 \leftrightarrow 3 \leftrightarrow 13 \leftrightarrow 113 \leftrightarrow 103 \leftrightarrow 107 \leftrightarrow 127$<br>
However, $11$ and $103$ are not $2$'s relatives.
</p>
<p>
Let $F(N)$ be the sum of the primes $\leq N$ which are not $2$'s relatives.<br>
We can verify that $F(10^3) = 431$ and $F(10^4) = 78728$.
</p>
<p>
Find $F(10^7)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
