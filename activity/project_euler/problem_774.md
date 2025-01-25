+++
title = "P774"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_773/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_775/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Conjunctive Sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 27th November 2021, 10:00 pm; Solved by 148;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=774">Problem 774</a></h3></div>
<div class="problem_content" role="problem">
<p>Let '$\&amp;$' denote the bitwise AND operation.<br>
For example, $10\,\&amp;\, 12 = 1010_2\,\&amp;\, 1100_2 = 1000_2 = 8$.</p>

<p>We shall call a finite sequence of non-negative integers $(a_1, a_2, \ldots, a_n)$ <dfn>conjunctive</dfn> if $a_i\,\&amp;\, a_{i+1} \neq 0$ for all $i=1\ldots n-1$.</p>

<p>Define $c(n,b)$ to be the number of conjunctive sequences of length $n$ in which all terms are $\le b$.</p>
<p>You are given that $c(3,4)=18$, $c(10,6)=2496120$, and $c(100,200) \equiv 268159379 \pmod {998244353}$.</p>

<p>Find $c(123,123456789)$. Give your answer modulo $998244353$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
