+++
title = "P527"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_526/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_528/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Randomized Binary Search</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 26th September 2015, 04:00 pm; Solved by 798;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=527">Problem 527</a></h3></div>
<div class="problem_content" role="problem">
<p>A secret integer $t$ is selected at random within the range $1 \le t \le n$. </p>

<p>The goal is to guess the value of $t$ by making repeated guesses, via integer $g$. After a guess is made, there are three possible outcomes, in which it will be revealed that either $g \lt t$, $g = t$, or $g \gt t$. Then the process can repeat as necessary.</p>

<p>Normally, the number of guesses required on average can be minimized with a binary search: Given a lower bound $L$ and upper bound $H$ (initialized to $L = 1$ and $H = n$), let $g = \lfloor(L+H)/2\rfloor$ where $\lfloor \cdot \rfloor$ is the integer floor function. If $g = t$, the process ends. Otherwise, if $g \lt t$, set $L = g+1$, but if $g \gt t$ instead, set $H = g - 1$. After setting the new bounds, the search process repeats, and ultimately ends once $t$ is found. Even if $t$ can be deduced without searching, assume that a search will be required anyway to confirm the value.</p>

<p>Your friend Bob believes that the standard binary search is not that much better than his randomized variant: Instead of setting $g = \lfloor(L+H)/2\rfloor$, simply let $g$ be a random integer between $L$ and $H$, inclusive. The rest of the algorithm is the same as the standard binary search. This new search routine will be referred to as a <dfn>random binary search</dfn>.</p>

<p>Given that $1 \le t \le n$ for random $t$, let $B(n)$ be the expected number of guesses needed to find $t$ using the standard binary search, and let $R(n)$ be the expected number of guesses needed to find $t$ using the random binary search. For example, $B(6) = 2.33333333$ and $R(6) = 2.71666667$ when rounded to $8$ decimal places.</p>

<p>Find $R(10^{10}) - B(10^{10})$ rounded to $8$ decimal places.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
