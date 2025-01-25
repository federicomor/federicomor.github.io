+++
title = "P871"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_870/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_872/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Drifting Subsets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 6th January 2024, 07:00 pm; Solved by 331;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=871">Problem 871</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $f$ be a function from a finite set $S$ to itself. A <dfn>drifting subset</dfn> for $f$ is a subset $A$ of $S$ such that the number of elements in the union $A \cup f(A)$ is equal to twice the number of elements of $A$.<br>
We write $D(f)$ for the maximal number of elements among all drifting subsets for $f$.</p>

<p>
For a positive integer $n$, define $f_n$ as the function from $\{0, 1, \dots, n - 1\}$ to itself sending $x$ to $x^3 + x + 1 \bmod n$.<br>
You are given $D(f_5) = 1$ and $D(f_{10}) = 3$.</p>

<p>
Find $\displaystyle\sum_{i = 1}^{100} D(f_{10^5 + i})$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
