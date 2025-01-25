+++
title = "P274"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_273/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_275/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Divisibility Multipliers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 15th January 2010, 01:00 pm; Solved by 1552;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=274">Problem 274</a></h3></div>
<div class="problem_content" role="problem">
<p>For each integer $p \gt 1$ coprime to $10$ there is a positive <dfn>divisibility multiplier</dfn> $m \lt p$ which preserves divisibility by $p$ for the following function on any positive integer, $n$:</p>

<p>$f(n) = (\text{all but the last digit of }n) + (\text{the last digit of }n) \cdot m$.</p>

<p>That is, if $m$ is the divisibility multiplier for $p$, then $f(n)$ is divisible by $p$ if and only if $n$ is divisible by $p$.</p>

<p>(When $n$ is much larger than $p$, $f(n)$ will be less than $n$ and repeated application of $f$ provides a multiplicative divisibility test for $p$.)</p>

<p>For example, the divisibility multiplier for $113$ is $34$.</p>

<p>$f(76275) = 7627 + 5 \cdot 34 = 7797$: $76275$ and $7797$ are both divisible by $113$.<br>$f(12345) = 1234 + 5 \cdot 34 = 1404$: $12345$ and $1404$ are both not divisible by $113$.</p>

<p>The sum of the divisibility multipliers for the primes that are coprime to $10$ and less than $1000$ is $39517$. What is the sum of the divisibility multipliers for the primes that are coprime to $10$ and less than $10^7$?</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
