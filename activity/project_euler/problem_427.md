+++
title = "P427"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_426/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_428/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>$n$-sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th May 2013, 10:00 pm; Solved by 348;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=427">Problem 427</a></h3></div>
<div class="problem_content" role="problem">
<p>A sequence of integers $S = \{s_i\}$ is called an $n$-sequence if it has $n$ elements and each element $s_i$ satisfies $1 \leq s_i \leq n$. Thus there are $n^n$ distinct $n$-sequences in total.
For example, the sequence $S = \{1, 5, 5, 10, 7, 7, 7, 2, 3, 7\}$ is a $10$-sequence.</p>

<p>For any sequence $S$, let $L(S)$ be the length of the longest contiguous subsequence of $S$ with the same value.
For example, for the given sequence $S$ above, $L(S) = 3$, because of the three consecutive $7$'s.</p>

<p>Let $f(n) = \sum L(S)$ for all $n$-sequences S.</p>

<p>For example, $f(3) = 45$, $f(7) = 1403689$ and $f(11) = 481496895121$.</p>

<p>Find $f(7\,500\,000) \bmod 1\,000\,000\,009$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
