+++
title = "P585"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_584/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_586/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Nested Square Roots</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th January 2017, 07:00 pm; Solved by 195;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=585">Problem 585</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the term $\small \sqrt{x+\sqrt{y}+\sqrt{z} }$ that is representing a <strong>nested square root</strong>. $x$, $y$ and $z$ are positive integers and $y$ and $z$ are not allowed to be perfect squares, so the number below the outer square root is irrational. Still it can be shown that for some combinations of $x$, $y$ and $z$ the given term can be simplified into a sum and/or difference of simple square roots of integers, actually <strong>denesting</strong> the square roots in the initial expression. </p>

<p>Here are some examples of this denesting:<br>
$\small \sqrt{3+\sqrt{2}+\sqrt{2} }=\sqrt{2}+\sqrt{1}=\sqrt{2}+1$<br>
$\small \sqrt{8+\sqrt{15}+\sqrt{15} }=\sqrt{5}+\sqrt{3}$<br>
$\small \sqrt{20+\sqrt{96}+\sqrt{12} }=\sqrt{9}+\sqrt{6}+\sqrt{3}-\sqrt{2}=3+\sqrt{6}+\sqrt{3}-\sqrt{2}$<br>
$\small \sqrt{28+\sqrt{160}+\sqrt{108} }=\sqrt{15}+\sqrt{6}+\sqrt{5}-\sqrt{2}$</p>
<p>As you can see the integers used in the denested expression may also be perfect squares resulting in further simplification.</p>

<p>Let F($n$) be the number of different terms $\small \sqrt{x+\sqrt{y}+\sqrt{z} }$, that can be denested into the sum and/or difference of a finite number of square roots, given the additional condition that $0&lt;x \le n$. That is,<br>
$\small \displaystyle \sqrt{x+\sqrt{y}+\sqrt{z} }=\sum_{i=1}^k s_i\sqrt{a_i}$<br>
with $k$, $x$, $y$, $z$ and all $a_i$ being positive integers, all $s_i =\pm 1$ and $x\le n$.<br> Furthermore $y$ and $z$  are not allowed to be perfect squares.</p>

<p>Nested roots with the same value are not considered different, for example $\small \sqrt{7+\sqrt{3}+\sqrt{27} }$, $\small \sqrt{7+\sqrt{12}+\sqrt{12} }$ and $\small \sqrt{7+\sqrt{27}+\sqrt{3} }$, that can all three be denested into $\small 2+\sqrt{3}$, would only be counted once.</p>

<p>You are given that $F(10)=17$, $F(15)=46$, $F(20)=86$, $F(30)=213$ and $F(100)=2918$ and $F(5000)=11134074$.<br>
Find $F(5000000)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
