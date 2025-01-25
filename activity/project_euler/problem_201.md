+++
title = "P201"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_200/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_202/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Subsets with a Unique Sum</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 5th July 2008, 02:00 pm; Solved by 2606;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=201">Problem 201</a></h3></div>
<div class="problem_content" role="problem">
<p>For any set $A$ of numbers, let $\operatorname{sum}(A)$ be the sum of the elements of $A$.<br>
Consider the set $B = \{1,3,6,8,10,11\}$.<br> There are $20$ subsets of $B$ containing three elements, and their sums are:</p>

\begin{align}
\operatorname{sum}(\{1,3,6\}) &amp;= 10,\\
\operatorname{sum}(\{1,3,8\}) &amp;= 12,\\
\operatorname{sum}(\{1,3,10\}) &amp;= 14,\\
\operatorname{sum}(\{1,3,11\}) &amp;= 15,\\
\operatorname{sum}(\{1,6,8\}) &amp;= 15,\\
\operatorname{sum}(\{1,6,10\}) &amp;= 17,\\
\operatorname{sum}(\{1,6,11\}) &amp;= 18,\\
\operatorname{sum}(\{1,8,10\}) &amp;= 19,\\
\operatorname{sum}(\{1,8,11\}) &amp;= 20,\\
\operatorname{sum}(\{1,10,11\}) &amp;= 22,\\
\operatorname{sum}(\{3,6,8\}) &amp;= 17,\\
\operatorname{sum}(\{3,6,10\}) &amp;= 19,\\
\operatorname{sum}(\{3,6,11\}) &amp;= 20,\\
\operatorname{sum}(\{3,8,10\}) &amp;= 21,\\
\operatorname{sum}(\{3,8,11\}) &amp;= 22,\\
\operatorname{sum}(\{3,10,11\}) &amp;= 24,\\
\operatorname{sum}(\{6,8,10\}) &amp;= 24,\\
\operatorname{sum}(\{6,8,11\}) &amp;= 25,\\
\operatorname{sum}(\{6,10,11\}) &amp;= 27,\\
\operatorname{sum}(\{8,10,11\}) &amp;= 29.
\end{align}

<p>Some of these sums occur more than once, others are unique.<br>
For a set $A$, let $U(A,k)$ be the set of unique sums of $k$-element subsets of $A$, in our example we find $U(B,3) = \{10,12,14,18,21,25,27,29\}$ and $\operatorname{sum}(U(B,3)) = 156$.</p>

<p>Now consider the $100$-element set $S = \{1^2, 2^2, \dots, 100^2\}$.<br>
S has $100891344545564193334812497256$ $50$-element subsets.</p>

<p>Determine the sum of all integers which are the sum of exactly one of the $50$-element subsets of $S$, i.e. find $\operatorname{sum}(U(S,50))$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
