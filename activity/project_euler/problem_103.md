+++
title = "Special Subset Sums: Optimum"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_102/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_104/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</p>
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
<h2>Special Subset Sums: Optimum</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 26th August 2005, 06:00 pm; Solved by 9087;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=103">Problem 103</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $S(A)$ represent the sum of elements in set $A$ of size $n$. We shall call it a special sum set if for any two non-empty disjoint subsets, $B$ and $C$, the following properties are true:</p>
<ol><li>$S(B) \ne S(C)$; that is, sums of subsets cannot be equal.</li>
<li>If $B$ contains more elements than $C$ then $S(B) \gt S(C)$.</li>
</ol><p>If $S(A)$ is minimised for a given $n$, we shall call it an optimum special sum set. The first five optimum special sum sets are given below.</p>
<ul style="list-style-type:none;">
<li>$n = 1$: $\{1\}$</li>
<li>$n = 2$: $\{1, 2\}$</li>
<li>$n = 3$: $\{2, 3, 4\}$</li>
<li>$n = 4$: $\{3, 5, 6, 7\}$</li>
<li>$n = 5$: $\{6, 9, 11, 12, 13\}$</li></ul>
<p>It <i>seems</i> that for a given optimum set, $A = \{a_1, a_2, \dots, a_n\}$, the next optimum set is of the form $B = \{b, a_1 + b, a_2 + b, \dots, a_n + b\}$, where $b$ is the "middle" element on the previous row.</p>
<p>By applying this "rule" we would expect the optimum set for $n = 6$ to be $A = \{11, 17, 20, 22, 23, 24\}$, with $S(A) = 117$. However, this is not the optimum set, as we have merely applied an algorithm to provide a near optimum set. The optimum set for $n = 6$ is $A = \{11, 18, 19, 20, 22, 25\}$, with $S(A) = 115$ and corresponding set string: 111819202225.</p>
<p>Given that $A$ is an optimum special sum set for $n = 7$, find its set string.</p>
<p class="smaller">NOTE: This problem is related to <a href="https://projecteuler.net/problem=105">Problem 105</a> and <a href="https://projecteuler.net/problem=106">Problem 106</a>.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
